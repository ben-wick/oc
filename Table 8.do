*Table 8


	use sample_construction_2
	
*Generate sp and total_correct in %

	gen sp_perc      = (sp-1)/6
	gen total_perc   = total_correct/6

	sum sp_perc total_perc

	
** PANEL A **
	
	preserve
	
	sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      sp_perc total_perc  man woman
	psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(sp_perc total_perc) noreplace

	restore
	
	
** PANEL B **

	preserve

	drop if man==1
	
	sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      sp_perc total_perc man woman
	psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(sp_perc total_perc) noreplace
	
	restore
		
		
** PANEL C **

	preserve

	drop if woman==1
	
	sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      sp_perc total_perc man woman
	psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(sp_perc total_perc) noreplace
	pstest
	restore
		
		