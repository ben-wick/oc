*Table 14

	use sample_construction_2_2

	
	sum      mental non_w over_3 northe midw sout west marr gdegre high work fin_educ      oc_1 oc_2 oc_3   other man woman 
  
	psmatch2 mental non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(oc_1 oc_2 oc_3) noreplace
	pstest



	use sample_construction_2

	
	sum      mental non_w over_3 northe midw sout west marr gdegre high work fin_educ      risk   other man woman 

	psmatch2 mental non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(risk) noreplace
	pstest


