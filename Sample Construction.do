* Sample Construction

clear all

import delimited "${data_path}/2021 State Full Data.csv"


****Construct gender variable
	gen man = (a50 == 1)
	gen woman = (a50 == 2)
	gen other = (a50 == 3)

****Construct self-perception variable
	generate sp = cond(inlist(m4, 98, 99), ., m4)

****Construct true knowledge variable
	table m6
	gen q1 = (m6 == 1)
	table q1


	table m7
	gen q2 = (m7 == 3)
	table q2


	table m8
	gen q3 = (m8 == 2)
	table q3


	table m9
	gen q4 = (m9 == 1)
	table q4


	table m10
	gen q5 = (m10 == 2)
	table q5


	table m31
	gen q6 = (m31 == 2)
	table q6

	egen total_correct = rowtotal(q1 q2 q3 q4 q5 q6)


****Control variables
	gen non_white = (a4a != 1)
	gen over_35 = a3a >= 35
	gen northe = censusreg == 1
	gen midwest = censusreg == 2
	gen sout = censusreg == 3
	gen west = censusreg == 4
	gen marr = (a7a != 3)
	gen gdegree = inrange(a5_2015, 6, 7)
	gen income = a8_2021
	gen high = inrange(a8_2021, 6, 10)
	gen work = inrange(a9, 1, 3)
	
	* Individuals who do not answer one of the questions on fin_educ, risk, or mental health or do answer 98 or 99  will not be assigned a value (.)
	gen fin_educ = cond(m20 == 2, 1, cond(inlist(m20, 1, 3), 0, .))
	gen risk = cond(inlist(j2, 98, 99), ., j2)
	gen mental = cond(n33 == 1, 1, cond(n33 == 2, 0, .))
	

*Save sample for tables where OC variables are not required:
tempfile sample_construction_2
save sample_construction_2, replace





*Sample for tables that include oc variables:
	
	****Drop self-perction "Dont now", "Dont want to say"
	drop if sp>7

	****Summary Stats for self-perception and total_correct
	sum sp total_correct

	****Construct Overconfidence variables
	
		* Summarize sp and store the mean and standard deviation
		summarize sp, detail
		scalar sp_mean = r(mean)
		scalar sp_sd = r(sd)

		* Summarize total_correct and store the mean and standard deviation
		summarize total_correct, detail
		scalar total_correct_mean = r(mean)
		scalar total_correct_sd = r(sd)

		* Display the scalar values to verify
		display sp_mean
		display sp_sd
		display total_correct_mean
		display total_correct_sd
		
		
		*Overconfidence Measure 1
		
		gen oc_1 = ((sp - sp_mean)/sp_sd) - ((total_correct - total_correct_mean)/total_correct_sd)

		*Overconfidence Measure 2
		xtile ptile = total_correct,nq(100)
		xtile ptile_2 = sp,nq(100)
		generate oc_2 = (ptile_2-ptile)/100

		*Overconfidence Measure 3
		gen norm_sp = (m4-1) / 6
		gen norm_tk = total_correct/6

		gen oc_3 = norm_sp - norm_tk
	



*Sample including oc variables for tables in which oc variables are included
tempfile sample_construction_2_2
save sample_construction_2_2, replace


	use sample_construction_2


****Construction Credit Card Index

		* Destring variables
		destring f2_1, replace force
		destring f2_2, replace force
		destring f2_3, replace force
		destring f2_4, replace force
		destring f2_5, replace force
		destring f2_6, replace force

		* Create new variables based on conditions
		generate f2_1_new = .
		replace f2_1_new = 10 if f2_1 == 1
		replace f2_1_new = 1 if f2_1 == 2

		generate f2_2_new = .
		replace f2_2_new = 1 if f2_2 == 1
		replace f2_2_new = 10 if f2_2 == 2

		generate f2_3_new = .
		replace f2_3_new = 1 if f2_3 == 1
		replace f2_3_new = 10 if f2_3 == 2

		generate f2_4_new = .
		replace f2_4_new = 1 if f2_4 == 1
		replace f2_4_new = 10 if f2_4 == 2

		generate f2_5_new = .
		replace f2_5_new = 1 if f2_5 == 1
		replace f2_5_new = 10 if f2_5 == 2

		generate f2_6_new = .
		replace f2_6_new = 1 if f2_6 == 1
		replace f2_6_new = 10 if f2_6 == 2

		* Individuals who do not answer one of the questions or do answer 98 or 99 will not be assigned a credit card index
		* Count the number of missing values in the relevant variables
		egen missing_count = rowmiss(f2_1_new f2_2_new f2_3_new f2_4_new f2_5_new f2_6_new)

		* Construct the index, setting it to missing if there are any missing values
		egen credit_card_behavior_index = rowmean(f2_1_new f2_2_new f2_3_new f2_4_new f2_5_new f2_6_new) if missing_count == 0

		* Drop the temporary missing count variable
		drop missing_count

		
		* Destring variables if needed

		
	sum other non_w over_3 northe midw sout west marr gdegre high work fin_educ credit

	tempfile credit_index
	save credit_index, replace
	clear

	

	
****Construction Budgeting Index
		
		use sample_construction_2
		
		generate j3_new = .
		replace j3_new = 10 if j3 == 1
		replace j3_new = 1 if j3 == 2
		replace j3_new = 5.5 if j3 == 3

		generate j4_new = .
		replace j4_new = 10 if j4 == 3
		replace j4_new = 5.5 if j4 == 2
		replace j4_new = 1 if j4 == 1

		generate j42_1_new = .
		replace j42_1_new = 1 if j42_1 == 1
		replace j42_1_new = 3.25 if j42_1 == 2
		replace j42_1_new = 5.5 if j42_1 == 3
		replace j42_1_new = 7.75 if j42_1 == 4
		replace j42_1_new = 10 if j42_1 == 5

		generate g23_new = .
		replace g23_new = 10 if g23 == 1
		replace g23_new = 8.5 if g23 == 2
		replace g23_new = 7 if g23 == 3
		replace g23_new = 5.5 if g23 == 4
		replace g23_new = 4 if g23 == 5
		replace g23_new = 2.5 if g23 == 6
		replace g23_new = 1 if g23 == 7

		* Individuals who do not answer one of the questions or do answer 98 or 99 will not be assigned a budgeting index
		* Count the number of missing values in the relevant variables
		egen missing_count_budgeting = rowmiss(j3_new j4_new j42_1_new g23_new)

		* Construct the budgeting index, setting it to missing if there are any missing values
		egen budgeting_index = rowmean(j3_new j4_new j42_1_new g23_new) if missing_count_budgeting == 0

		* Drop the temporary missing count variable
		drop missing_count_budgeting

		* List the new variables
		list j3_new j4_new j42_1_new g23_new

		* Generate tables for each new variable
		table j3_new
		table j4_new
		table j42_1_new
		table g23_new

		* Summarize the new variables
		sum j3_new j4_new j42_1_new g23_new

		* Summarize the budgeting index
		sum budgeting_index
		
		sum other non_w over_3 northe midw sout west marr gdegre high work fin_educ budget

		tempfile budget_index
		save budgeting_index, replace
		clear

		

****Construction Savings Index
		use sample_construction_2
		
		* Ensure variables are numeric
		destring j8, replace force

		* Create new variables based on conditions
		generate j5_new = .
		replace j5_new = 10 if j5 == 1
		replace j5_new = 1 if j5 == 2

		generate j8_new = .
		replace j8_new = 10 if j8 == 1
		replace j8_new = 1 if j8 == 2

		* Count the number of missing values in the relevant variables
		egen missing_count_savings = rowmiss(j5_new j8_new)

		* Individuals who do not answer one of the questions or do answer 98 or 99 will not be assigned a savings index
		* Construct the savings index, setting it to missing if there are any missing values
		egen savings_index = rowmean(j5_new j8_new) if missing_count_savings == 0

		* Drop the temporary missing count variable
		drop missing_count_savings

		* Summarize the new variables and the index
		sum j5_new j8_new
		sum savings_index
		
		sum other non_w over_3 northe midw sout west marr gdegre high work fin_educ saving

		tempfile savings_index
	save savings_index, replace


	
	








