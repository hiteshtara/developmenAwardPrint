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
package edu.bu.kuali.kra.award.printing.xmlstream;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;


import org.apache.xmlbeans.XmlObject;
import org.kuali.kra.award.contacts.AwardPerson;
import org.kuali.kra.award.home.Award;
import org.kuali.kra.award.printing.AwardPrintType;
import org.kuali.kra.bo.KraPersistableBusinessObjectBase;
import org.kuali.kra.budget.BudgetDecimal;
import org.kuali.kra.printing.xmlstream.XmlStream;
import org.kuali.rice.kns.service.BusinessObjectService;
import org.kuali.rice.kns.service.DateTimeService;
import org.kuali.rice.kns.util.KualiDecimal;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

import edu.bu.kuali.kc.award.printing.awardnotice.AdminType;
import edu.bu.kuali.kc.award.printing.awardnotice.AdminsType;
import edu.bu.kuali.kc.award.printing.awardnotice.AnticipatedAmountType;
import edu.bu.kuali.kc.award.printing.awardnotice.AwardHeaderType;
import edu.bu.kuali.kc.award.printing.awardnotice.AwardInvestigatorsType;
import edu.bu.kuali.kc.award.printing.awardnotice.AwardNoticeDocument;
import edu.bu.kuali.kc.award.printing.awardnotice.AwardNoticeType;
import edu.bu.kuali.kc.award.printing.awardnotice.CommentType;
import edu.bu.kuali.kc.award.printing.awardnotice.CommentsType;
import edu.bu.kuali.kc.award.printing.awardnotice.FundsCenterInfoType;
import edu.bu.kuali.kc.award.printing.awardnotice.InvestigatorType;
import edu.bu.kuali.kc.award.printing.awardnotice.ObligatedAmountType;
import edu.bu.kuali.kc.award.printing.awardnotice.ObligatedChangeHistoryType;
import edu.bu.kuali.kc.award.printing.awardnotice.ObligatedChangeType;
import edu.bu.kuali.kc.award.printing.awardnotice.ReportingRequirementType;
import edu.bu.kuali.kc.award.printing.awardnotice.ReportingRequirementsType;
import edu.bu.kuali.kc.award.printing.awardnotice.TermAndConditionType;
import edu.bu.kuali.kc.award.printing.awardnotice.TermTxtType;
import edu.bu.kuali.kc.award.printing.awardnotice.TermsAndConditionsType;
import edu.bu.kuali.kc.award.printing.awardnotice.TermsType;
import edu.bu.kuali.kra.award.printing.BUAwardPrintAdmin;
import edu.bu.kuali.kra.award.printing.BUAwardPrintAmountInfo;
import edu.bu.kuali.kra.award.printing.BUAwardPrintAntAmt;
import edu.bu.kuali.kra.award.printing.BUAwardPrintCumObAmt;
import edu.bu.kuali.kra.award.printing.BUAwardPrintDO;
import edu.bu.kuali.kra.award.printing.BUAwardPrintReportReq;
import edu.bu.kuali.kra.award.printing.BUAwardPrintTerm;
import edu.bu.kuali.kra.award.printing.service.BUAwardPrintingService;

public class BUAwardNoticeXmlStream implements XmlStream {
    private BusinessObjectService businessObjectService;
    private DateTimeService dateTimeService;
    private BUAwardPrintingService bUAwardPrintingService;
    
    public Map<String, XmlObject> generateXmlStream(KraPersistableBusinessObjectBase printableBusinessObject,
            Map<String, Object> reportParameters) {
        Map<String, XmlObject> xmlObjectList = new LinkedHashMap<String, XmlObject>();
        AwardNoticeDocument awardNoticeDocument = AwardNoticeDocument.Factory.newInstance();
        awardNoticeDocument.setAwardNotice(getAwardNotice(reportParameters));
        xmlObjectList.put(AwardPrintType.AWARD_NOTICE_REPORT.getAwardPrintType(), awardNoticeDocument);
        return xmlObjectList;
    }

    private AwardNoticeType getAwardNotice(Map<String, Object> reportParameters) {
        BUAwardPrintDO awardPrintDO = bUAwardPrintingService.getAwardPrintDO(reportParameters);
        AwardNoticeType awardNotice = AwardNoticeType.Factory.newInstance();
        PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
        String path;
        try {
            path = resolver.getResource("edu/bu/kuali/kra/award/printing/stylesheet/BULogo.png").getFile().getAbsolutePath();
        }
        catch (IOException e) {
            path="/edu/bu/kuali/kra/award/printing/stylesheet/BULogo.png";
            e.printStackTrace();
        }
        awardNotice.setBULogoPath(path);
        awardNotice.setAwardHeader(AwardHeaderType.Factory.newInstance());
        setAwardHeader(awardNotice,awardPrintDO);
        setObligatedChangeHistory(awardNotice,awardPrintDO);
        setObligatedAmountTotal(awardNotice,awardPrintDO);
        setAnticipatedAmountTotal(awardNotice,awardPrintDO);
        setComments(awardNotice,awardPrintDO);
        setTermsAndConditions(awardNotice,awardPrintDO);
        setReportingRequirements(awardNotice,awardPrintDO);
        return awardNotice;
    }

    private void setTermsAndConditions(AwardNoticeType awardNotice, BUAwardPrintDO awardPrintDO) {
        List<BUAwardPrintTerm> terms = awardPrintDO.getTerms();
        Map<String,List<String>> termTypeAndTerms = new HashMap<String,List<String>>();
        for (BUAwardPrintTerm buAwardPrintTerm : terms) {
            List<String> tempTerms = termTypeAndTerms.get(buAwardPrintTerm.getTermType());
            if(tempTerms!=null){
                tempTerms.add(buAwardPrintTerm.getTermDesc());
            }else{
                List<String> newTerms = new ArrayList<String>();
                newTerms.add(buAwardPrintTerm.getTermDesc());
                termTypeAndTerms.put(buAwardPrintTerm.getTermType(), newTerms);
            }
        }
        Iterator<String> it = termTypeAndTerms.keySet().iterator();
        TermsAndConditionsType termsAndCondition = awardNotice.addNewTermsAndConditions();
        while (it.hasNext()) {
            String type = (String) it.next();
            TermAndConditionType termAndCondition = termsAndCondition.addNewTermAndCondition();
            termAndCondition.setTermType(type);
            List<String> termsList = termTypeAndTerms.get(type);
            TermsType termsType = termAndCondition.addNewTerms();
            for (String term : termsList) {
                TermTxtType termsText = termsType.addNewTerm();
                termsText.setTermTxt(term);
            }
        }
        
    }

    private void setReportingRequirements(AwardNoticeType awardNotice, BUAwardPrintDO awardPrintDO) {
        List<BUAwardPrintReportReq> reportReqs = awardPrintDO.getReportReqs();
        ReportingRequirementsType reportingRequirements = awardNotice.addNewReportingRequirements();
        for (BUAwardPrintReportReq buAwardPrintReportReq : reportReqs) {
            ReportingRequirementType reportingRequirement = reportingRequirements.addNewReportingRequirement();
            reportingRequirement.setReportType(buAwardPrintReportReq.getReportType());
            reportingRequirement.setFrequency(buAwardPrintReportReq.getFrequency());
        }
    }

    private void setObligatedChangeHistory(AwardNoticeType awardNotice, BUAwardPrintDO awardPrintDO) {
        List<BUAwardPrintAmountInfo> amountInfoList = awardPrintDO.getAmountInfo();
        ObligatedChangeHistoryType obligatedChangeHistory = awardNotice.addNewObligatedChangeHistory();
        obligatedChangeHistory.setFnARateTotal(0.0);
        obligatedChangeHistory.setObligatedChangeDirectTotal(0.0);
        obligatedChangeHistory.setObligatedChangeIndrectTotal(0.0);
        obligatedChangeHistory.setTotalChangeTotal(0.0);
        for (BUAwardPrintAmountInfo buAwardPrintAmountInfo : amountInfoList) {
            ObligatedChangeType obligatedChange = obligatedChangeHistory.addNewObligatedChange();
            obligatedChange.setInetrnalOrderNumber(buAwardPrintAmountInfo.getInternalOrderNbr());
            obligatedChange.setInetrnalOrderNumber(buAwardPrintAmountInfo.getInternalOrderNbr());;
            obligatedChange.setFnARate(getDoubleValue(buAwardPrintAmountInfo.getfAndARate()));
            obligatedChangeHistory.setFnARateTotal(obligatedChangeHistory.getFnARateTotal()+obligatedChange.getFnARate());
            obligatedChange.setDescription(buAwardPrintAmountInfo.getDescription());
            obligatedChange.setLegacySourceNumber(buAwardPrintAmountInfo.getLegacySource());
            obligatedChange.setObligatedChangeDirect(getDoubleValue(buAwardPrintAmountInfo.getObligatedChangeDirect()));
            obligatedChange.setObligatedChangeIndirect(getDoubleValue(buAwardPrintAmountInfo.getObligatedChangeIndirect()));
            obligatedChange.setTotalChange(getDoubleValue(buAwardPrintAmountInfo.getTotalChange()));
            obligatedChange.setPI(buAwardPrintAmountInfo.getPiFullNames().toString());
            obligatedChange.setObligatedChangeIndirect(getDoubleValue(buAwardPrintAmountInfo.getTotalChange()));
            //update totals
            obligatedChangeHistory.setObligatedChangeDirectTotal(obligatedChangeHistory.getObligatedChangeDirectTotal() + obligatedChange.getObligatedChangeDirect());
            obligatedChangeHistory.setObligatedChangeIndrectTotal(obligatedChangeHistory.getObligatedChangeIndrectTotal() + obligatedChange.getObligatedChangeIndirect());
            obligatedChangeHistory.setTotalChangeTotal(obligatedChangeHistory.getTotalChangeTotal() + obligatedChange.getTotalChange());
        }
    }

    private void setObligatedAmountTotal(AwardNoticeType awardNotice, BUAwardPrintDO awardPrintDO) {
        BUAwardPrintCumObAmt obligatedTotal = awardPrintDO.getCumObAmt();
        ObligatedAmountType obligatedAmount = awardNotice.addNewObligatedAmountTotal();
        obligatedAmount.setObligatedDirectTotal(getDoubleValue(obligatedTotal.getObligatedChangeDirect()));
        obligatedAmount.setObligatedIndirectTotal(getDoubleValue(obligatedTotal.getObligatedChangeIndirect()));
        obligatedAmount.setObligatedTotal(getDoubleValue(obligatedTotal.getObligatedTotal()));
        obligatedAmount.setObligationStartDate(getCalendar(obligatedTotal.getObligationStart()));
        obligatedAmount.setObligatedEndDate(getCalendar(obligatedTotal.getObligationEnd()));
    }

    private Calendar getCalendar(Date date) {
        return date==null?null:dateTimeService.getCalendar(date);
    }

    private double getDoubleValue(BudgetDecimal bigDecimalValue) {
        return bigDecimalValue!=null?bigDecimalValue.doubleValue():0.0;
    }

    private double getDoubleValue(KualiDecimal bigDecimalValue) {
        return bigDecimalValue!=null?bigDecimalValue.doubleValue():0.0;
    }
    private void setComments(AwardNoticeType awardNotice, BUAwardPrintDO awardPrintDO) {
        List<String> comments = awardPrintDO.getComments();
        CommentsType commentsType = awardNotice.addNewComments();
        for (String comment : comments) {
            CommentType commentType = commentsType.addNewComment();
            commentType.setCommentTxt(comment);
        }
    }

    private void setAnticipatedAmountTotal(AwardNoticeType awardNotice, BUAwardPrintDO awardPrintDO) {
        BUAwardPrintAntAmt antTotal = awardPrintDO.getAntAmt();
        AnticipatedAmountType antAmount = awardNotice.addNewAnticipatedAmountTotal();
        antAmount.setAnticipatedDirectTotal(getDoubleValue(antTotal.getAnticipatedChangeDirect()));
        antAmount.setAnticipatedIndirectTotal(getDoubleValue(antTotal.getAnticipatedChangeIndirect()));
        antAmount.setAnticipatedTotal(getDoubleValue(antTotal.getAnticipatedTotal()));
        antAmount.setProjectStartDate(getCalendar(antTotal.getProjectStart()));
        antAmount.setProjectEndDate(getCalendar(antTotal.getProjectEnd()));
        
    }

    private void setAwardHeader(AwardNoticeType awardNotice, BUAwardPrintDO awardPrintDO) {
        AwardHeaderType awardHeader = awardNotice.getAwardHeader();
        awardHeader.setAccountNumber(awardPrintDO.getAccountNumber());
        awardHeader.setAwardNumber(awardPrintDO.getAwardNumber());
        awardHeader.setPrimeSponsorDescription(awardPrintDO.getPrimeSponsor());
        awardHeader.setSponsorDescription(awardPrintDO.getSponsor());
        awardHeader.setSAPGrantNumber(awardPrintDO.getGrantNumber());
        awardHeader.setSponsorAwardNumber(awardPrintDO.getSponsorAwardId());
        //awardHeader.setTransactionDate(getCalendar(awardPrintDO.getTransactionDate()));
        awardHeader.setTransactionDate(getCalendar(getDateTimeService().getCurrentDate()));
        awardHeader.setTransactionType(awardPrintDO.getTransactionType());
        FundsCenterInfoType fundsCentryInfo = awardHeader.addNewFundsCenterInfo();
        fundsCentryInfo.setAddress1(awardPrintDO.getFundsCenter());
        AwardInvestigatorsType awardInvestigators = awardHeader.addNewInvestigators();
        List<AwardPerson> awardPersons = awardPrintDO.getInvestigators();
        for (AwardPerson awardPerson : awardPersons) {
            InvestigatorType investigatorType = awardInvestigators.addNewInvestigator();
            investigatorType.setPersonName(awardPerson.getFullName());
            investigatorType.setRole(awardPerson.getProjectRole());
        }
        awardHeader.setTitle(awardPrintDO.getTitle());
        AdminsType departmentAdminsType = awardHeader.addNewDepartmentAdminList();
        List<BUAwardPrintAdmin> deptAdmins = awardPrintDO.getDeptAdmin();
        setAdmins(departmentAdminsType, deptAdmins);
        AdminsType ospAdminsType = awardHeader.addNewOSPAdminList();
        List<BUAwardPrintAdmin> ospAdmins = awardPrintDO.getOspAdmin();
        setAdmins(ospAdminsType, ospAdmins);
        AdminsType pafoAdminsType = awardHeader.addNewPAFOAdminList();
        List<BUAwardPrintAdmin> pafoAdmins = awardPrintDO.getPafoAdmin();
        setAdmins(pafoAdminsType, pafoAdmins);
    }

    private void setAdmins(AdminsType departmentAdminsType, List<BUAwardPrintAdmin> deptAdmins) {
       if(deptAdmins.isEmpty()){
                AdminType admin = departmentAdminsType.addNewAdmin();
                admin.setName("");
                admin.setEmail("");
                admin.setPhone("");
            }else{
                for (BUAwardPrintAdmin buAwardPrintAdmin : deptAdmins) {
                    AdminType admin = departmentAdminsType.addNewAdmin();
                    admin.setName(buAwardPrintAdmin.getName());
                    admin.setEmail(buAwardPrintAdmin.getEmail());
                    admin.setPhone(buAwardPrintAdmin.getPhone());
                }
            }
    }

    /**
     * Gets the businessObjectService attribute. 
     * @return Returns the businessObjectService.
     */
    public BusinessObjectService getBusinessObjectService() {
        return businessObjectService;
    }

    /**
     * Sets the businessObjectService attribute value.
     * @param businessObjectService The businessObjectService to set.
     */
    public void setBusinessObjectService(BusinessObjectService businessObjectService) {
        this.businessObjectService = businessObjectService;
    }

    /**
     * Gets the dateTimeService attribute. 
     * @return Returns the dateTimeService.
     */
    public DateTimeService getDateTimeService() {
        return dateTimeService;
    }

    /**
     * Sets the dateTimeService attribute value.
     * @param dateTimeService The dateTimeService to set.
     */
    public void setDateTimeService(DateTimeService dateTimeService) {
        this.dateTimeService = dateTimeService;
    }

    /**
     * Gets the bUAwardPrintingService attribute. 
     * @return Returns the bUAwardPrintingService.
     */
    public BUAwardPrintingService getbUAwardPrintingService() {
        return bUAwardPrintingService;
    }

    /**
     * Sets the bUAwardPrintingService attribute value.
     * @param bUAwardPrintingService The bUAwardPrintingService to set.
     */
    public void setbUAwardPrintingService(BUAwardPrintingService bUAwardPrintingService) {
        this.bUAwardPrintingService = bUAwardPrintingService;
    }


}
