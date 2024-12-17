library(grf)
library(tidyverse)

your_data <- read.csv("~/Library/Mobile Documents/com~apple~CloudDocs/PHD/Research/Third Gender/JCP Revision/Stata Code for Journal/gender_identity.csv")

# Prepare the data
X <- as.matrix(your_data[, c("non_white", "over_35", "northe", "midwest", "sout", "west", "marr", "gdegree", "high", "work", "fin_educ")])
Y <- your_data$oc_3
W <- your_data$other

# Check the prepared data
head(X)
head(Y)
head(W)

# Check complete cases
complete_cases <- complete.cases(X, Y, W)
sum(complete_cases)

# Create cleaned versions of variables
X_clean <- X[complete_cases,]
Y_clean <- Y[complete_cases]
W_clean <- W[complete_cases]

# Check the dimensions of the cleaned data
dim(X_clean)
length(Y_clean)
length(W_clean)

# Set a seed for reproducibility
set.seed(123)

# Assess tree stability
assess_tree_stability <- function(X, Y, W, tree_seq = c(1000, 5000, 10000, 25000, 50000)) {
  results <- lapply(tree_seq, function(n_trees) {
    cf <- causal_forest(X = X, Y = Y, W = W, num.trees = n_trees, tune.parameters = "all")
    ate <- average_treatment_effect(cf, target.sample = "treated")
    return(c(n_trees = n_trees, ate = ate["estimate"], se = ate["std.err"]))
  })
  do.call(rbind, results)
}

# Run the assessment
stability_results <- assess_tree_stability(X_clean, Y_clean, W_clean)
print(stability_results)

# Set a seed for reproducibility
set.seed(123)

# Run the final Causal Forest with parameter tuning and optimal number of trees
cf_result <- causal_forest(X = X_clean, 
                           Y = Y_clean, 
                           W = W_clean, 
                           num.trees = 25000,
                           tune.parameters = "all")

ate <- average_treatment_effect(cf_result, target.sample = "treated")
print(ate)

t_stat <- ate["estimate"] / ate["std.err"]
p_value <- 2 * (1 - pnorm(abs(t_stat)))
print(p_value)
