*Table 9

	clear
	use sample_construction_2_2
	
	sum risk oc_1 oc_2 oc_3 non_w over_3 northe midw sout west marr gdegre high work fin_educ
	
	
** COLUMN 1 **

	ologit risk oc_1 non_w over_3 northe midw sout west marr gdegre high work fin_educ

		
** COLUMN 2 **

	ologit risk oc_2 non_w over_3 northe midw sout west marr gdegre high work fin_educ
		
		
** COLUMN 3 **

	ologit risk oc_3 non_w over_3 northe midw sout west marr gdegre high work fin_educ
	

