*Table 4

use sample_construction_2


***PANEL A*****
display _n "Variable   Group1_Mean   Group2_Mean   Difference   t-stat   p-value"
display "--------------------------------------------------------"
foreach var in non_w over_35 northe midw sout west marr gdegre high work fin_educ {
    quietly ttest `var', by(other)
    local p = r(p)
    local t = r(t)
    local diff = r(mu_1) - r(mu_2)
    local mean1 = r(mu_1)
    local mean2 = r(mu_2)
    display "`var'" _col(12) %6.3f `mean1' _col(25) %6.3f `mean2' _col(38) %6.3f `diff' _col(50) %5.2f `t' _col(60) %6.3f `p'
}


***PANEL B*****
preserve
drop if man==1

display _n "Variable   Group1_Mean   Group2_Mean   Difference   t-stat   p-value"
display "--------------------------------------------------------"
foreach var in non_w over_35 northe midw sout west marr gdegre high work fin_educ {
    quietly ttest `var', by(other)
    local p = r(p)
    local t = r(t)
    local diff = r(mu_1) - r(mu_2)
    local mean1 = r(mu_1)
    local mean2 = r(mu_2)
    display "`var'" _col(12) %6.3f `mean1' _col(25) %6.3f `mean2' _col(38) %6.3f `diff' _col(50) %5.2f `t' _col(60) %6.3f `p'
}

restore


***PANEL C*****
preserve
drop if woman==1

display _n "Variable   Group1_Mean   Group2_Mean   Difference   t-stat   p-value"
display "--------------------------------------------------------"
foreach var in non_w over_35 northe midw sout west marr gdegre high work fin_educ {
    quietly ttest `var', by(other)
    local p = r(p)
    local t = r(t)
    local diff = r(mu_1) - r(mu_2)
    local mean1 = r(mu_1)
    local mean2 = r(mu_2)
    display "`var'" _col(12) %6.3f `mean1' _col(25) %6.3f `mean2' _col(38) %6.3f `diff' _col(50) %5.2f `t' _col(60) %6.3f `p'
}

restore

