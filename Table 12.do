*Table 12

use sample_construction_2_2

sum      oc_1 oc_2 oc_3 other non_w over_3 northe midw sout west marr gdegre high work fin_educ      risk man woman


**** COLUMN 1 *****
preserve
psmatch2 other oc_1 non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(risk) noreplace
pstest
ologit risk other oc_1  non_w over_3 northe midw sout west marr gdegre high work fin_educ [fweight=_weight]
restore


**** COLUMN 2 *****
preserve
psmatch2 other oc_2 non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(risk) noreplace
pstest
ologit risk other oc_2  non_w over_3 northe midw sout west marr gdegre high work fin_educ [fweight=_weight]
restore


**** COLUMN 3 *****
preserve
psmatch2 other oc_3 non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(risk) noreplace
pstest
ologit risk other oc_3 non_w over_3 northe midw sout west marr gdegre high work fin_educ [fweight=_weight]
restore


**** COLUMN 4 *****
preserve

drop if man==1

psmatch2 other oc_1 non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(risk) noreplace
pstest
ologit risk other oc_1  non_w over_3 northe midw sout west marr gdegre high work fin_educ [fweight=_weight]
restore


**** COLUMN 5 *****
preserve

drop if man==1

psmatch2 other oc_2 non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(risk) noreplace
pstest
ologit risk other oc_2  non_w over_3 northe midw sout west marr gdegre high work fin_educ [fweight=_weight]
restore


**** COLUMN 6 *****
preserve

drop if man==1

psmatch2 other oc_3 non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(risk) noreplace
pstest
ologit risk other oc_3 non_w over_3 northe midw sout west marr gdegre high work fin_educ [fweight=_weight]
restore


**** COLUMN 7 *****
preserve

drop if woman==1

psmatch2 other oc_1 non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(risk) noreplace
pstest
ologit risk other oc_1  non_w over_3 northe midw sout west marr gdegre high work fin_educ [fweight=_weight]
restore


**** COLUMN 8 *****
preserve

drop if woman==1

psmatch2 other oc_2 non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(risk) noreplace
pstest
ologit risk other oc_2  non_w over_3 northe midw sout west marr gdegre high work fin_educ [fweight=_weight]
restore


**** COLUMN 9 *****
preserve

drop if woman==1

psmatch2 other oc_3 non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(risk) noreplace
pstest
ologit risk other oc_3 non_w over_3 northe midw sout west marr gdegre high work fin_educ [fweight=_weight]
restore













