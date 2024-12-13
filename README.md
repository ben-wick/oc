This repository contains the code and documentation used for the analysis in Identity, Overconfidence, and Risk attitudes.

## Data Access

The dataset used in this research is proprietary and protected under a confidentiality agreement with the FINRA Investor Education Foundation. Researchers interested in replicating our work may request access directly from the FINRA Investor Education Foundation.

## Repository Structure

### Sample Construction
- `Sample Construction.do`: Stata code for constructing the sample

### Analysis Files
The repository contains separate files for each table in the paper:
- `Table 3.do`
- `Table 4.do`
[...]

### Table 17 Analysis
Table 17 analysis is split into multiple R scripts by panel:
- `OC_1_Panel A.R`
- `OC_1_Panel B.R`
[...]

## Software Requirements

### Stata
- Required for sample construction and initial analyses
- Stata version 17.0

### R
- Required for Table 17 analyses
- R version 4.3.2
- Required R packages are listed in each script

## Replication Instructions

1. Obtain the dataset from FINRA Investor Education Foundation
2. Run the scripts in the following order:
   - First run `Sample Construction.do` to prepare the dataset
   - Run individual table scripts in sequence
