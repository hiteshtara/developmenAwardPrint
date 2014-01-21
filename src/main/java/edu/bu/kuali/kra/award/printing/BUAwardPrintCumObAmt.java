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

import java.util.Date;

import org.kuali.rice.kns.util.KualiDecimal;

public class BUAwardPrintCumObAmt {
    private Date obligationStart; 
    private Date obligationEnd;
    private KualiDecimal obligatedChangeDirect;
    private KualiDecimal obligatedChangeIndirect;
    private KualiDecimal obligatedTotal;
    
    public Date getObligationStart() {
        return obligationStart;
    }
    public void setObligationStart(Date obligationStart) {
        this.obligationStart = obligationStart;
    }
    public Date getObligationEnd() {
        return obligationEnd;
    }
    public void setObligationEnd(Date obligationEnd) {
        this.obligationEnd = obligationEnd;
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
    public KualiDecimal getObligatedTotal() {
        return obligatedTotal;
    }
    public void setObligatedTotal(KualiDecimal obligatedTotal) {
        this.obligatedTotal = obligatedTotal;
    }
    
}
