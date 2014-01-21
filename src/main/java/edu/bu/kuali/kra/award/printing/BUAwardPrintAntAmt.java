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

public class BUAwardPrintAntAmt {
    private Date projectStart; 
    private Date projectEnd;
    private KualiDecimal anticipatedChangeDirect;
    private KualiDecimal anticipatedChangeIndirect;
    private KualiDecimal anticipatedTotal;
    
    public Date getProjectStart() {
        return projectStart;
    }
    
    public void setProjectStart(Date projectStart) {
        this.projectStart = projectStart;
    }
    
    public Date getProjectEnd() {
        return projectEnd;
    }
    
    public void setProjectEnd(Date projectEnd) {
        this.projectEnd = projectEnd;
    }
    
    public KualiDecimal getAnticipatedChangeDirect() {
        return anticipatedChangeDirect;
    }
    
    public void setAnticipatedChangeDirect(KualiDecimal anticipatedChangeDirect) {
        this.anticipatedChangeDirect = anticipatedChangeDirect;
    }
    
    public KualiDecimal getAnticipatedChangeIndirect() {
        return anticipatedChangeIndirect;
    }
    
    public void setAnticipatedChangeIndirect(KualiDecimal anticipatedChangeIndirect) {
        this.anticipatedChangeIndirect = anticipatedChangeIndirect;
    }
    
    public KualiDecimal getAnticipatedTotal() {
        return anticipatedTotal;
    }
    
    public void setAnticipatedTotal(KualiDecimal anticipatedTotal) {
        this.anticipatedTotal = anticipatedTotal;
    }
    
}
