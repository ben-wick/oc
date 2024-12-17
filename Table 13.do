*Table 13

use sample_construction_2


******PANEL A*******
sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      mental   man woman 

psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(mental) noreplace
pstest


******PANEL B*******
preserve
drop if man==1

sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      mental   man woman 

psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(mental) noreplace
restore


******PANEL C*******
preserve

drop if woman==1

sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      mental   man woman 

psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(mental) noreplace
restore

