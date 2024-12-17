*Table 15


	use sample_construction_2_2
	
** PANEL A **

	sum      other mental non_w over_3 northe midw sout west marr gdegre high work fin_educ      oc_1 oc_2 oc_3 man woman 
	psmatch2 other mental non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(oc_1 oc_2 oc_3) noreplace

	pstest

	reg oc_1 other mental non_w over_3 northe midw sout marr gdegre high work fin_educ [fweight=_weight]
	reg oc_2 other mental non_w over_3 northe midw sout marr gdegre high work fin_educ [fweight=_weight]
	reg oc_3 other mental non_w over_3 northe midw sout marr gdegre high work fin_educ [fweight=_weight]
	
	
** PANEL B **
		
	preserve
	
	drop if man==1
	
	sum      other mental non_w over_3 northe midw sout west marr gdegre high work fin_educ      oc_1 oc_2 oc_3 man woman 
	psmatch2 other mental non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(oc_1 oc_2 oc_3) noreplace

	pstest

	reg oc_1 other mental non_w over_3 northe midw sout marr gdegre high work fin_educ [fweight=_weight]
	reg oc_2 other mental non_w over_3 northe midw sout marr gdegre high work fin_educ [fweight=_weight]
	reg oc_3 other mental non_w over_3 northe midw sout marr gdegre high work fin_educ [fweight=_weight]

	restore
	
	
** PANEL C **

	preserve

	drop if woman==1
	
	sum      other mental non_w over_3 northe midw sout west marr gdegre high work fin_educ      oc_1 oc_2 oc_3 man woman 
	psmatch2 other mental non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(oc_1 oc_2 oc_3) noreplace
	
	pstest
	
	reg oc_1 other mental non_w over_3 northe midw sout marr gdegre high work fin_educ [fweight=_weight]
	reg oc_2 other mental non_w over_3 northe midw sout marr gdegre high work fin_educ [fweight=_weight]
	reg oc_3 other mental non_w over_3 northe midw sout marr gdegre high work fin_educ [fweight=_weight]
	
	restore
		