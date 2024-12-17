*Table 20

clear


* Female, Male, and Other


** Overconfidence **	
	use PSM_Woman_Man_1
	
	keep if _weight==1

	esize twosample oc_1, by(other) all
	
	esize twosample oc_2, by(other) all
	
	esize twosample oc_3, by(other) all

	esize twosample risk, by(other) all
	
	clear


** Credit Card Management Index **

	use credit_index
	
	sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      credit     man woman
	psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(credit) noreplace
	
	pstest
	
	keep if _weight ==1
	
	esize twosample credit, by(other) all
	
	clear

	
** Budgeting Behavior Index **	
	
	use budgeting_index
	
	sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      budget     man woman
	psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(budget) noreplace
	
	pstest
	
	keep if _weight ==1
	
	esize twosample budgeting_index, by(other) all

	clear
	
		
	
** Savings Behavior Index **	
	
	use savings_index
	
	sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      saving     man woman
	psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(saving) noreplace
	
	pstest

	keep if _weight ==1
	
	esize twosample savings_index, by(other) all

	clear
	
	
	
	
	
	

	
* Female and Other



** Overconfidence **	
	use PSM_Woman_1
	
	keep if _weight==1

	esize twosample oc_1, by(other) all
	
	esize twosample oc_2, by(other) all
	
	esize twosample oc_3, by(other) all

	esize twosample risk, by(other) all
	
	clear
	
	



** Credit Card Management Index **

	use credit_index
	
	drop if man==1
	
	sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      credit     man woman
	psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(credit) noreplace
	
	pstest
	
	keep if _weight ==1
	
	esize twosample credit, by(other) all

	clear

	
** Budgeting Behavior Index **	
	
	use budgeting_index
	
	drop if man==1
	
	sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      budget     man woman
	psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(budget) noreplace
	
	pstest
	
	keep if _weight ==1
	
	esize twosample budgeting_index, by(other) all

	clear
	
		
	
** Savings Behavior Index **	
	
	use savings_index
	
	drop if man==1
	
	sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      saving     man woman
	psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(saving) noreplace
	
	pstest

	keep if _weight ==1
	
	esize twosample savings_index, by(other) all

	clear

	
	
	

* Male and Other

		
** Overconfidence **	
	
	use PSM_Man_1
	
	keep if _weight==1

	esize twosample oc_1, by(other) all
	
	esize twosample oc_2, by(other) all
	
	esize twosample oc_3, by(other) all

	esize twosample risk, by(other) all
	
	clear
	
	
	
** Credit Card Management Index **

	use credit_index
	
	drop if woman==1
	
	sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      credit     man woman
	psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(credit) noreplace
	
	pstest
	
	keep if _weight ==1
	
	esize twosample credit, by(other) all

	clear

	
** Budgeting Behavior Index **	

	use budgeting_index
	
	drop if woman==1
	
	sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      budget     man woman
	psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(budget) noreplace
	
	pstest
	
	keep if _weight ==1
	
	esize twosample budgeting_index, by(other) all

	clear
	
		
	
** Savings Behavior Index **	
	
	use savings_index
	
	drop if woman==1
	
	sum      other non_w over_3 northe midw sout west marr gdegre high work fin_educ      saving     man woman
	psmatch2 other non_w over_3 northe midw sout west marr gdegre high work fin_educ, out(saving) noreplace
	
	pstest

	keep if _weight ==1
	
	esize twosample savings_index, by(other) all

	clear

		