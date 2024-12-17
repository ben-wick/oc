*Tables 10 and 11


	use sample_construction_2

	

**** PANEL A *****

sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      risk man woman
psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(risk) noreplace
pstest
ologit risk other non_w over_3 northe midw sout west marr gdegre high work fin_educ [fweight=_weight]


**** PANEL B *****

preserve

drop if man==1
sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      risk man woman
psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(risk) noreplace
pstest
ologit risk other non_w over_3 northe midw sout west marr gdegre high work fin_educ [fweight=_weight]

restore


**** PANEL C *****

preserve

drop if woman==1
sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      risk man woman
psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(risk) noreplace
pstest
ologit risk other non_w over_3 northe midw sout west marr gdegre high work fin_educ [fweight=_weight]

restore
