*Tables 5 and 6


use sample_construction_2_2


** PANEL A **
	
	preserve
	
	sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      oc_1 oc_2 oc_3  man woman
	psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(oc_1 oc_2 oc_3) noreplace
	
	pstest
	
	tempfile PSM_Woman_Man_1
	save PSM_Woman_Man_1, replace

	restore
	
	
** PANEL B **

	preserve

	drop if man==1
	
	sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      oc_1 oc_2 oc_3 man woman
	psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(oc_1 oc_2 oc_3) noreplace
	
	pstest
	
	tempfile PSM_Woman_1
	save PSM_Woman_1, replace
	
	restore
		
		
** PANEL C **

	preserve

	drop if woman==1
	
	sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      oc_1 oc_2 oc_3 man woman
	psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(oc_1 oc_2 oc_3) noreplace
	
	pstest
	
	tempfile PSM_Man_1
	save PSM_Man_1, replace
	
	restore
		