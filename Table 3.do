*Table 3

use sample_construction_2

sum woman man other sp total_  risk non_w over_35 northe midw sout west marr gdegre high work fin_educ mental


*For median:
summarize woman, detail
summarize man, detail
summarize other, detail
summarize sp, detail
summarize total_, detail
summarize risk, detail
summarize non_w, detail
summarize over_35, detail
summarize northe, detail
summarize midw, detail
summarize sout, detail
summarize west, detail
summarize marr, detail
summarize gdegre, detail
summarize high, detail
summarize work, detail
summarize fin_educ, detail
summarize mental, detail


use sample_construction_2_2

sum oc_1 oc_2 oc_3

*For median:
sum oc_1 oc_2 oc_3, detail

clear


use credit_index

sum credit

*For median:
sum credit, detail

clear


use budgeting_index

sum budget

*For median:
sum budget, detail


clear


use savings_index

sum saving

*For median:
sum saving, detail

