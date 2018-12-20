


?read.csv
charge_Inpatient <- read.csv("Medicare_Charge_Inpatient_DRG100_DRG_Summary_by_DRG_FY2011.csv",sep = "\t",header = T)
charge_Outpatient <- read.csv("Medicare_Charge_Outpatient_APC30_Summary_by_APC_CY2011.csv")
provider_Inpatient <- read.csv("Medicare_Provider_Charge_Inpatient_DRG100_FY2011.csv")
provider_Outpatient <- read.csv("Medicare_Provider_Charge_Outpatient_APC30_CY2011_v2.csv")



head(charge_Inpatient)


View(charge_Inpatient) 
View(charge_Outpatient) 
View(provider_Inpatient) 
View(provider_Outpatient) 


is.na(provider_Outpatient)

Summary(charge_Inpatient)

