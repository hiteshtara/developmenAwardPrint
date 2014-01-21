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
package edu.bu.kuali.kra.award.printing;

import java.util.List;

import org.kuali.kra.budget.BudgetDecimal;
import org.kuali.rice.kns.util.KualiDecimal;

public class BUAwardPrintAmountInfo {
    private String internalOrderNbr;
    private String description;
    private String legacySource;
    private List<String> piFullNames;
    private BudgetDecimal fAndARate;
    private KualiDecimal obligatedChangeDirect;
    private KualiDecimal obligatedChangeIndirect;
    private KualiDecimal totalChange;
    
    public String getInternalOrderNbr() {
        return internalOrderNbr;
    }
    public void setInternalOrderNbr(String internalOrderNbr) {
        this.internalOrderNbr = internalOrderNbr;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public String getLegacySource() {
        return legacySource;
    }
    public void setLegacySource(String legacySource) {
        this.legacySource = legacySource;
    }
    public List<String> getPiFullNames() {
        return piFullNames;
    }
    public void setPiFullNames(List<String> piFullNames) {
        this.piFullNames = piFullNames;
    }
    public BudgetDecimal getfAndARate() {
        return fAndARate;
    }
    public void setfAndARate(BudgetDecimal fAndARate) {
        this.fAndARate = fAndARate;
    }
    public KualiDecimal getObligatedChangeDirect() {
        return obligatedChangeDirect;
    }
    public void setObligatedChangeDirect(KualiDecimal obligatedChangeDirect) {
        this.obligatedChangeDirect = obligatedChangeDirect;
    }
    public KualiDecimal getObligatedChangeIndirect() {
        return obligatedChangeIndirect;
    }
    public void setObligatedChangeIndirect(KualiDecimal obligatedChangeIndirect) {
        this.obligatedChangeIndirect = obligatedChangeIndirect;
    }
    public KualiDecimal getTotalChange() {
        return totalChange;
    }
    public void setTotalChange(KualiDecimal totalChange) {
        this.totalChange = totalChange;
    }
    
    
}
