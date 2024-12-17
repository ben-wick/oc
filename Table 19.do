*Table 19

	clear
	
*****Credit Card Index

	use credit_index

	*****PSM (Panel A)

	sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      credit man woman other
		psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(credit) noreplace
		
		pstest	
		
		
		
	*****PSM (Panel B)
		
	drop if man==1
		sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      credit man woman other
		psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(credit) noreplace
		
		pstest
		clear
		
		
	*****PSM (Panel C)
	
	use credit_index
		
	drop if woman==1
		sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      credit man woman other
		psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(credit) noreplace
		
		pstest	
		clear
	
	
	
	
*****Budgeting Index

	*****PSM (Panel A)
	
	use budgeting_index

	sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      budget man woman other
		psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(budget) noreplace
		
		pstest	
		
		
	*****PSM (Panel B)
		
	drop if man==1
		sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      budget man woman other
		psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(budget) noreplace
		
		pstest	
		clear
		
		
	*****PSM (Panel C)
	
	use budgeting_index
		
	drop if woman==1
		sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      budget man woman other
		psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(budget) noreplace
		
		pstest	
		clear
	
	
	
	
*****Savings Index
		
	*****PSM (Panel A)
	
		use savings_index

	sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      savings_index man woman
		psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(savings_index) noreplace
		
		pstest
		
		
	*****PSM (Panel B)
		
	drop if man==1
		sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      savings_index man woman other
		psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(savings_index) noreplace
		
		pstest	
		clear
		
		
	*****PSM (Panel C)
	
	use savings_index
		
	drop if woman==1
		sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      savings_index man woman other
		psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(savings_index) noreplace
		
		pstest	
