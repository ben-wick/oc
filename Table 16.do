*Table 16


	use sample_construction_2
	
	
** PANEL A **

	sum      other mental non_w over_3 northe midw sout west marr gdegre high work fin_educ      risk
	psmatch2 other mental non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(risk) noreplace
		
 ologit risk other mental non_w over_3 northe midw sout west marr gdegre high work fin_educ [fweight=_weight]
	
	
** PANEL B **
		
	preserve
	
	drop if man==1
	
	sum      other mental non_w over_3 northe midw sout west marr gdegre high work fin_educ      risk
	psmatch2 other mental non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(risk) noreplace
		
 ologit risk other mental non_w over_3 northe midw sout west marr gdegre high work fin_educ [fweight=_weight]

	restore
	
	
** PANEL C **

	preserve

	drop if woman==1
	
	sum      other mental non_w over_3 northe midw sout west marr gdegre high work fin_educ      risk
	psmatch2 other mental non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(risk) noreplace
		
 ologit risk other mental non_w over_3 northe midw sout west marr gdegre high work fin_educ [fweight=_weight]
	
	restore
	
	
	
	
	
