/*
 * Copyright 2005-2010 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.opensource.org/licenses/ecl1.php
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package edu.bu.kuali.kra.award.printing.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.kuali.kra.SequenceOwner;
import org.kuali.kra.award.AwardAmountInfoService;
import org.kuali.kra.award.contacts.AwardPerson;
import org.kuali.kra.award.contacts.AwardUnitContact;
import org.kuali.kra.award.document.AwardDocument;
import org.kuali.kra.award.home.Award;
import org.kuali.kra.award.home.AwardAmountInfo;
import org.kuali.kra.award.home.AwardComment;
import org.kuali.kra.award.home.AwardSponsorTerm;
import org.kuali.kra.award.paymentreports.awardreports.AwardReportTerm;
import org.kuali.kra.award.timeandmoney.AwardDirectFandADistribution;
import org.kuali.kra.bo.UnitAdministrator;
import org.kuali.kra.bo.versioning.VersionHistory;
import org.kuali.kra.bo.versioning.VersionStatus;
import org.kuali.kra.budget.BudgetDecimal;
import org.kuali.kra.budget.nonpersonnel.BudgetRateAndBase;
import org.kuali.kra.budget.versions.BudgetDocumentVersion;
import org.kuali.kra.budget.versions.BudgetVersionOverview;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.service.VersionHistoryService;
import org.kuali.kra.timeandmoney.document.TimeAndMoneyDocument;
import org.kuali.rice.kns.service.BusinessObjectService;
import org.kuali.rice.kns.util.KualiDecimal;

import edu.bu.kuali.kra.award.printing.BUAwardPrintAdmin;
import edu.bu.kuali.kra.award.printing.BUAwardPrintAmountInfo;
import edu.bu.kuali.kra.award.printing.BUAwardPrintAntAmt;
import edu.bu.kuali.kra.award.printing.BUAwardPrintCumObAmt;
import edu.bu.kuali.kra.award.printing.BUAwardPrintDO;
import edu.bu.kuali.kra.award.printing.BUAwardPrintReportReq;
import edu.bu.kuali.kra.award.printing.BUAwardPrintTerm;
import edu.bu.kuali.kra.award.printing.service.BUAwardPrintingService;

public class BUAwardPrintingServiceImpl implements BUAwardPrintingService {
    
    BusinessObjectService businessObjectService;
    public static final String SEQUENCE_OWNER_CLASS_NAME_FIELD = "sequenceOwnerClassName";
    public static final String SEQUENCE_OWNER_REFERENCE_VERSION_NAME = "sequenceOwnerVersionNameValue";
    
    public BUAwardPrintDO getAwardPrintDO(Map<String, Object> reportParameters) {
        Award rootAward = (Award)reportParameters.get("rootAward");
        List<TimeAndMoneyDocument> timeAndMoneyList = new ArrayList<TimeAndMoneyDocument>();
        timeAndMoneyList = (List<TimeAndMoneyDocument>)reportParameters.get("timeAndMoneyList");
        BUAwardPrintDO awardPrintDO = new BUAwardPrintDO();
        awardPrintDO = this.populateBUAwardPrintDO(rootAward, timeAndMoneyList);
        
        return awardPrintDO;
    }

    private BUAwardPrintDO populateBUAwardPrintDO (Award award, List<TimeAndMoneyDocument> timeAndMoneyList) {
        BUAwardPrintDO awardPrintDO = new BUAwardPrintDO();
        
        List<BUAwardPrintAmountInfo> amountInfoList = populateBUAwardPrintAmountInfo(award, timeAndMoneyList);
        awardPrintDO.setAmountInfo(amountInfoList);
        
        BUAwardPrintAntAmt antAmt = populateBUAwardPrintAntAmt(award);
        awardPrintDO.setAntAmt(antAmt);
        
        awardPrintDO.setComments(populateBUAwardPrintComments(award));
        
        BUAwardPrintCumObAmt cumObAmt = populateBUAwardPrintCumObAmt(award);
        awardPrintDO.setCumObAmt(cumObAmt);
        
        List<BUAwardPrintAdmin> deptAdmins = populateBUAwardPrintDeptAdmin(award);
        awardPrintDO.setDeptAdmin(deptAdmins);
        
        List<BUAwardPrintAdmin> ospAdmins = populateBUAwardPrintOSPAdmin(award);
        awardPrintDO.setOspAdmin(ospAdmins);
        
        List<BUAwardPrintAdmin> pafoAdmins = populateBUAwardPrintPafoAdmin(award);
        awardPrintDO.setPafoAdmin(pafoAdmins);
        
        awardPrintDO.setFundsCenter(award.getLeadUnitNumber());
        
        awardPrintDO.setGrantNumber(award.getAwardNumber());
        
        awardPrintDO.setInvestigators(award.getInvestigators());
        
        awardPrintDO.setPrimeSponsor(award.getPrimeSponsorCode());
        
        awardPrintDO.setSponsor(award.getSponsorCode());
        
        awardPrintDO.setSponsorAwardId(award.getSponsorAwardNumber());
        
        awardPrintDO.setTitle(award.getTitle());
        
        awardPrintDO.setAccountNumber(award.getAccountNumber());
        
        awardPrintDO.setAwardNumber(award.getAwardNumber());
        
        awardPrintDO.setTransactionDate(award.getAwardEffectiveDate());
        
        awardPrintDO.setTransactionType(award.getAwardTransactionType().getDescription());
        
        List<BUAwardPrintReportReq> reportReqs = populateAwardPrintReportReq(award);
        awardPrintDO.setReportReqs(reportReqs);
        
        awardPrintDO.setSponsorAwardId(award.getSponsorAwardNumber());
        
        List<BUAwardPrintTerm> terms = populateAwardPrintTerms(award);
        awardPrintDO.setTerms(terms); 
        
        return awardPrintDO;
    }
    
    private List<BUAwardPrintTerm> populateAwardPrintTerms(Award award) {
        List<BUAwardPrintTerm> terms = new ArrayList<BUAwardPrintTerm>();
        
        List<AwardSponsorTerm> sponsorTerms = award.getAwardSponsorTerms();
        
        for (AwardSponsorTerm sponsorTerm : sponsorTerms) {
          BUAwardPrintTerm term = new BUAwardPrintTerm();
          term.setTermDesc(sponsorTerm.getDescription());
          term.setTermType(sponsorTerm.getSponsorTerm().getSponsorTermType().getDescription());
          
          terms.add(term);
        }
        
        return terms;
    }
    
    private List<BUAwardPrintReportReq> populateAwardPrintReportReq(Award award) {
        List<BUAwardPrintReportReq> reportReqs = new ArrayList<BUAwardPrintReportReq>(); 
        List<AwardReportTerm> awardReportTerms = award.getAwardReportTermItems();
        
        for (AwardReportTerm awardReportTerm : awardReportTerms) {
            BUAwardPrintReportReq reportReq = new BUAwardPrintReportReq();
            reportReq.setFrequency(awardReportTerm.getFrequency().getDescription());
            reportReq.setReportType(awardReportTerm.getReport().getDescription());
            reportReqs.add(reportReq);
        }
        
        return reportReqs;
    }
     
    private List<String> populateBUAwardPrintComments(Award award) {
        List<String> comments = new ArrayList<String>();
        
        List<AwardComment> awardComments = award.getAwardComments();
        
        for (AwardComment awardComment : awardComments) {
            comments.add(awardComment.getComments());
        }
        
        return comments;
    }
    

    @SuppressWarnings("unchecked")
    private List<BUAwardPrintAdmin> populateBUAwardPrintOSPAdmin(Award award) {
        List<BUAwardPrintAdmin> ospAdmins = new ArrayList<BUAwardPrintAdmin>();
        List <UnitAdministrator> unitAdmins = new ArrayList<UnitAdministrator>();
        Map<String, Object> fieldValues = new HashMap<String, Object>();
        fieldValues.put("unitNumber", award.getLeadUnitNumber());
        List<UnitAdministrator> unitAdministrators =
            (List<UnitAdministrator>)getBusinessObjectService().findMatching(UnitAdministrator.class, fieldValues);
        for(UnitAdministrator unitAdministrator : unitAdministrators) {
            if(unitAdministrator.getUnitAdministratorTypeCode().equals("3")) {
                unitAdmins.add(unitAdministrator);
            }
        }
        for(UnitAdministrator unitAdministrator : unitAdmins){
            BUAwardPrintAdmin printAdmin = new BUAwardPrintAdmin();
            printAdmin.setName(unitAdministrator.getPerson().getFullName());
            printAdmin.setEmail(unitAdministrator.getPerson().getEmailAddress());
            printAdmin.setPhone(unitAdministrator.getPerson().getPhoneNumber());
            ospAdmins.add(printAdmin);
        }
        
        return ospAdmins;
    }
    
    @SuppressWarnings("unchecked")
    private List<BUAwardPrintAdmin> populateBUAwardPrintPafoAdmin(Award award) {
        List<BUAwardPrintAdmin> pafoAdmins = new ArrayList<BUAwardPrintAdmin>();
        List <UnitAdministrator> unitPafoAdmins = new ArrayList<UnitAdministrator>();
        Map<String, Object> fieldValues = new HashMap<String, Object>();
        fieldValues.put("unitNumber", award.getLeadUnitNumber());
        List<UnitAdministrator> unitAdministrators =
            (List<UnitAdministrator>)getBusinessObjectService().findMatching(UnitAdministrator.class, fieldValues);
        for(UnitAdministrator unitAdministrator : unitAdministrators) {
            if(unitAdministrator.getUnitAdministratorTypeCode().equals("4")) {
                unitPafoAdmins.add(unitAdministrator);
            }
        }
        for(UnitAdministrator unitAdministrator : unitPafoAdmins){
            BUAwardPrintAdmin printAdmin = new BUAwardPrintAdmin();
            printAdmin.setName(unitAdministrator.getPerson().getFullName());
            printAdmin.setEmail(unitAdministrator.getPerson().getEmailAddress());
            printAdmin.setPhone(unitAdministrator.getPerson().getPhoneNumber());
            pafoAdmins.add(printAdmin);
        }
        return pafoAdmins;
    }
    
    
    
    private List<BUAwardPrintAdmin> populateBUAwardPrintDeptAdmin(Award award) {
        List<BUAwardPrintAdmin> deptAdmins = new ArrayList<BUAwardPrintAdmin>();
        
        List<AwardUnitContact> unitContacts = award.getAwardUnitContacts();
        
        for (AwardUnitContact unitContact : unitContacts) {
            BUAwardPrintAdmin deptAdmin = new BUAwardPrintAdmin();
            deptAdmin.setEmail(unitContact.getEmailAddress());
            deptAdmin.setName(unitContact.getFullName());
            deptAdmin.setPhone(unitContact.getPhoneNumber());
            
            deptAdmins.add(deptAdmin);
        }
        
        return deptAdmins;
    }
    
    @SuppressWarnings("unchecked")
    private BUAwardPrintAntAmt populateBUAwardPrintAntAmt(Award award) {
        BUAwardPrintAntAmt antAmt = new BUAwardPrintAntAmt();
        AwardAmountInfo newestAAI = getAwardAmountInfoService().fetchLastAwardAmountInfoForAwardVersionAndFinalizedTandMDocumentNumber(award);
        antAmt.setProjectStart(award.getAwardEffectiveDate());
        antAmt.setProjectEnd(newestAAI.getObligationExpirationDate());
        Map<String, Object> fieldValues = new HashMap<String, Object>();
        fieldValues.put("awardAmountInfoId", newestAAI.getAwardAmountInfoId());
        List<AwardDirectFandADistribution> fnaDistributionList =
            (List<AwardDirectFandADistribution>)getBusinessObjectService().findMatching(AwardDirectFandADistribution.class, fieldValues);
        KualiDecimal antDirectAmt = new KualiDecimal(0);
        KualiDecimal antIndirectAmt = new KualiDecimal(0);
        KualiDecimal antTotal = new KualiDecimal(0);
        for (AwardDirectFandADistribution awardDirectFandADistribution : fnaDistributionList) {
            antDirectAmt = antDirectAmt.add(new KualiDecimal(awardDirectFandADistribution.getDirectCost().longValue()));
            
            antIndirectAmt = antIndirectAmt.add(new KualiDecimal(awardDirectFandADistribution.getIndirectCost().longValue()));
        }
        antTotal = antTotal.add(antIndirectAmt);
        antTotal = antTotal.add(antDirectAmt);
        
        antAmt.setAnticipatedChangeDirect(antDirectAmt);
        antAmt.setAnticipatedChangeIndirect(antIndirectAmt);
        antAmt.setAnticipatedTotal(antTotal);
        return antAmt;
    }
    
    private BUAwardPrintCumObAmt populateBUAwardPrintCumObAmt(Award award) {
        BUAwardPrintCumObAmt cumObAmt = new BUAwardPrintCumObAmt();
        AwardAmountInfo newestAAI = getAwardAmountInfoService().fetchLastAwardAmountInfoForAwardVersionAndFinalizedTandMDocumentNumber(award);
        cumObAmt.setObligationStart(newestAAI.getCurrentFundEffectiveDate());
        cumObAmt.setObligationEnd(newestAAI.getObligationExpirationDate());
//        cumObAmt.setObligatedChangeDirect(new KualiDecimal (newestAAI.getObligatedChangeDirect()));
//        cumObAmt.setObligatedChangeIndirect(new KualiDecimal(newestAAI.getObligatedChangeIndirect()));
        cumObAmt.setObligatedTotal(newestAAI.getAmountObligatedToDate());
        
        return cumObAmt;
    }
    
    protected AwardAmountInfoService getAwardAmountInfoService() {
        return KraServiceLocator.getService(AwardAmountInfoService.class);
    }
    
    @SuppressWarnings("unchecked")
    private List<BUAwardPrintAmountInfo> populateBUAwardPrintAmountInfo(Award award, List<TimeAndMoneyDocument> timeAndMoneyList) {
        List<BUAwardPrintAmountInfo> amountInfoList = new ArrayList<BUAwardPrintAmountInfo>();
        Map<String, BUAwardPrintAmountInfo> printObjects = new HashMap<String, BUAwardPrintAmountInfo>();
        if(timeAndMoneyList!=null) {
            for(TimeAndMoneyDocument timeAndMoneyDocument : timeAndMoneyList) {
                Map<String, Object> fieldValues = new HashMap<String, Object>();
                fieldValues.put("timeAndMoneyDocumentNumber", timeAndMoneyDocument.getDocumentNumber());
                List<AwardAmountInfo> awardAmountInfoList =
                    (List<AwardAmountInfo>)getBusinessObjectService().findMatching(AwardAmountInfo.class, fieldValues);
                //remove duplicate AAI from previous versions of awards.
                awardAmountInfoList = trimAwardAmountInfoForActiveAwardVersion(awardAmountInfoList);
                for(AwardAmountInfo aai : awardAmountInfoList) {
                    if(printObjects.containsKey(aai.getAwardNumber())) {
                        updatePrintObjects(aai, printObjects);
                    } else {
                        addNewPrintObject(aai, printObjects);
                    }
                }
            }
        }
        amountInfoList.addAll(printObjects.values());
        
        return amountInfoList;
    }
    /**
     * 
     * This method removes AwardAmountInfo BO's that are from Archived or Pending Award versions.
     * @param awardAmountInfoList
     */
    private List<AwardAmountInfo> trimAwardAmountInfoForActiveAwardVersion(List<AwardAmountInfo> awardAmountInfoList) {
        List<AwardAmountInfo> trimmedList = new ArrayList<AwardAmountInfo>();
        for(AwardAmountInfo awardAmountInfo : awardAmountInfoList) {
            int seqNum =  getActiveAwardVersion(awardAmountInfo.getAwardNumber()).getSequenceNumber();
            if(awardAmountInfo.getSequenceNumber() == seqNum) {
                trimmedList.add(awardAmountInfo);
            }
        }
        return trimmedList;
    }
    
    private void updatePrintObjects(AwardAmountInfo aai, Map<String, BUAwardPrintAmountInfo> printObjects) {
        BUAwardPrintAmountInfo updateObject = printObjects.get(aai.getAwardNumber());
        updateObject.setTotalChange(updateObject.getTotalChange().add(aai.getObligatedChange()));
//        updateObject.setTotalChange(updateObject.getObligatedChangeDirect().add(new KualiDecimal(aai.getObligatedChangeDirect())));
//        updateObject.setTotalChange(updateObject.getObligatedChangeIndirect().add(new KualiDecimal(aai.getObligatedChangeIndirect())));
    }
    
    private void addNewPrintObject(AwardAmountInfo aai, Map<String, BUAwardPrintAmountInfo> printObjects) {
        BUAwardPrintAmountInfo newObject = new BUAwardPrintAmountInfo();
//        newObject.setObligatedChangeDirect(new KualiDecimal(aai.getObligatedChangeDirect()));
//        newObject.setObligatedChangeIndirect(new KualiDecimal(aai.getObligatedChangeIndirect()));
        newObject.setTotalChange(aai.getObligatedChange());
        newObject.setPiFullNames(getActiveAwardPiNames(aai.getAwardNumber()));
        newObject.setfAndARate(getMaxFAndARate(aai.getAward()));
        //temporary for testing
        newObject.setInternalOrderNbr(aai.getAward().getAwardNumber());
        //newObject.setInternalOrderNbr(aai.getAward().getInternalOrderNbr());
        //newObject.setDescription(aai.getAward().getChildDescription);
        //newObject.setLegacySource(aai.getAward().getWalkerSourceNumber());
        
        printObjects.put(aai.getAwardNumber(), newObject);
        
    }
    
    @SuppressWarnings("unchecked")
    private BudgetDecimal getMaxFAndARate(Award award) {
        BudgetVersionOverview latestBudgetVersionOverview = getLastBudgetVersion(award.getAwardDocument());
        BudgetDecimal returnMaxVal = new BudgetDecimal(0);
        if(!(latestBudgetVersionOverview == null)) {
            Long budgetId = latestBudgetVersionOverview.getBudgetId();
            Map<String, Object> fieldValues = new HashMap<String, Object>();
            fieldValues.put("budgetId", budgetId);
            List<BudgetRateAndBase> budgetRateAndBaseList =
                (List<BudgetRateAndBase>)getBusinessObjectService().findMatching(BudgetRateAndBase.class, fieldValues);
            for(BudgetRateAndBase budgetRateAndBase : budgetRateAndBaseList) {
                if(budgetRateAndBase.getAppliedRate().isGreaterThan(returnMaxVal)) {
                    returnMaxVal = budgetRateAndBase.getAppliedRate();
                }
            }
        }
        return returnMaxVal;
    }
    
    private List<String> getActiveAwardPiNames(String awardNumber) {
        List<String> piNames = new ArrayList<String>();
        Award activeAward = getActiveAwardVersion(awardNumber);
        List<AwardPerson> awardPersons = activeAward.getProjectPersons();
        for(AwardPerson awardPerson : awardPersons) {
            if(awardPerson.getContactRoleCode().equals("PI")) {
                piNames.add(awardPerson.getFullName());
            }
        }
        return piNames;
    }
    
    
    /**
     * Gets the businessObjectService attribute. 
     * @return Returns the businessObjectService.
     */
    public BusinessObjectService getBusinessObjectService() {
        businessObjectService = KraServiceLocator.getService(BusinessObjectService.class);
        return businessObjectService;
    }
    
    @SuppressWarnings("unchecked")
    public Award getActiveAwardVersion(String awardNumber) {
        List<VersionHistory> versions = findVersionHistory(Award.class, awardNumber);
        VersionHistory result = getActiveVersionHistory(versions);
        Map<String, Object> fieldValues = new HashMap<String, Object>();
        fieldValues.put("awardNumber", result.getSequenceOwnerVersionNameValue());
        fieldValues.put("sequenceNumber", result.getSequenceOwnerSequenceNumber());
        List<Award> awardList =
            (List<Award>)getBusinessObjectService().findMatching(Award.class, fieldValues);
        return awardList.get(0);
    }
    
    /**
     * @return
     */
    protected VersionHistoryService getVersionHistoryService() {
        return KraServiceLocator.getService(VersionHistoryService.class);
    }
    
    private VersionHistory getActiveVersionHistory (List<VersionHistory> list) {
        VersionHistory returnVal = null;
        for(VersionHistory vh : list) {
            if(vh.getStatus().equals(VersionStatus.ACTIVE)) {
                returnVal = vh;
            }
        }
        return returnVal;
    }
    
    public List<VersionHistory> findVersionHistory(Class<? extends SequenceOwner> klass, String versionName) {
        Map<String, Object> fieldValues = new HashMap<String, Object>();
        fieldValues.put(SEQUENCE_OWNER_CLASS_NAME_FIELD, klass.getName());
        fieldValues.put(SEQUENCE_OWNER_REFERENCE_VERSION_NAME, versionName);        
        return new ArrayList<VersionHistory>(getBusinessObjectService().findMatching(VersionHistory.class, fieldValues));
        
    }
    
    protected BudgetVersionOverview getLastBudgetVersion(AwardDocument award) {
        List<BudgetDocumentVersion> awardBudgetDocumentVersions = award.getBudgetDocumentVersions();
        BudgetVersionOverview budgetVersionOverview = null;
        int versionSize = awardBudgetDocumentVersions.size();
        if(versionSize>0){
            budgetVersionOverview = awardBudgetDocumentVersions.get(versionSize-1).getBudgetVersionOverview();
        }
        return budgetVersionOverview;
    }
}
