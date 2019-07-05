## ---- include = FALSE----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----chunk-label, eval = FALSE, echo = TRUE------------------------------
#  install.packages("fev1")

## ----sample-patients, eval = TRUE, echo = TRUE---------------------------
samplePatients

## ----get-prediction, eval = TRUE, echo = TRUE----------------------------
results = predictFEV1(samplePatients)
head(results)

## ----setup-prediction, eval = TRUE, echo = FALSE-------------------------
rox = c("Title", "Description", "patientData", "onePatient", "predictionModel", "Returns")
values = c("Predict FEV1", "Predicts COPD exacerbations within the next year",
           "patient data matrix, can have one or many patients in it",
           "is there only one patient in the matrix?", 
           "An integer from 1-4; select a prediction model described below",
           "FEV1 prediction for smoking and quitting smoking")
metadata = data.frame(ROxygen2 = rox, Details = values)

## ----predict-FEV1, eval = TRUE, echo = FALSE-----------------------------
knitr::kable(
  metadata, booktabs = TRUE
)

## ----setup-proj1, eval = TRUE, echo = FALSE------------------------------
rox = c("fev1_0", "int_effect", "tio")
types = c("numeric", "numeric", "string")
values = c("Baseline FEV1 score (L)",
           "Effect of intervention on lung function (L)", 
           "is the patient taking tiotropium, 'Yes' or 'No'?")
metadata = data.frame(Parameter = rox, Type = types, Description = values)

## ----proj1, eval = TRUE, echo = FALSE------------------------------------
knitr::kable(
  metadata, booktabs = TRUE
)

## ----setup-proj2, eval = TRUE, echo = FALSE------------------------------
rox = c("fev1_0", "int_effect","male", "smoking", "age", "weight", "height", "oco", "tio")
types = c("numeric", "numeric", "integer", "integer", "integer", "numeric", "numeric","numeric", "string")
values = c("Baseline FEV1 score (L)",
           "Effect of intervention on lung function (L)",
           "1 = Male, 0 = Female", 
           "1 = Smoker, 0 = Non-Smoker",
           "Patient age in years",
           "Patient weight (kg)",
           "Patient height (m)",
           "O'Conner Slope",
           "is the patient taking tiotropium, 'Yes' or 'No'?")
metadata = data.frame(Parameter = rox, Type = types, Description = values)

## ----proj2, eval = TRUE, echo = FALSE------------------------------------
knitr::kable(
  metadata, booktabs = TRUE
)

## ----setup-proj3, eval = TRUE, echo = FALSE------------------------------
rox = c("fev1_0", "int_effect","male", "smoking", "age", "weight", "height", "tio")
types = c("numeric", "numeric", "integer", "integer", "integer", "numeric","numeric", "string")
values = c("Baseline FEV1 score (L)",
           "Effect of intervention on lung function (L)",
           "1 = Male, 0 = Female", 
           "1 = Smoker, 0 = Non-Smoker",
           "Patient age in years",
           "Patient weight (kg)",
           "Patient height (m)",
           "is the patient taking tiotropium, 'Yes' or 'No'?")
metadata = data.frame(Parameter = rox, Type = types, Description = values)

## ----table-proj3, eval = TRUE, echo = FALSE------------------------------
knitr::kable(
  metadata, booktabs = TRUE
)

## ----setup-proj4, eval = TRUE, echo = FALSE------------------------------
rox = c("fev1_0","fev1_prev", "int_effect","male", "smoking", "age", "weight", "height","oco", "tio")
types = c("numeric","numeric", "numeric", "integer", "integer", "integer", "numeric","numeric","numeric", "string")
values = c("Baseline FEV1 score (L)",
           "FEV1 score from previous year (L)",
           "Effect of intervention on lung function (L)",
           "1 = Male, 0 = Female", 
           "1 = Smoker, 0 = Non-Smoker",
           "Patient age in years",
           "Patient weight (kg)",
           "Patient height (m)",
           "O'Connor Slope",
           "is the patient taking tiotropium, 'Yes' or 'No'?")
metadata = data.frame(Parameter = rox, Type = types, Description = values)

## ----table-proj4, eval = TRUE, echo = FALSE------------------------------
knitr::kable(
  metadata, booktabs = TRUE
)

