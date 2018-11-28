install.packages("rpart")
install.packages("rpart.plot")

library(Metrics)




library(rpart)
library(rpart.plot)


balloon <- read.csv("Balloon.csv")

View(balloon)

summary(balloon)



set.seed(123)
training_indices <- sample(1:nrow(balloon), round(0.85 * nrow(balloon)))

ballon_train <- balloon[training_indices,]
ballon_test  <- balloon[-training_indices,]




?rpart


 ls <- list(split = "information")
 
reg_model <-  rpart(formula = ballon_train$Inflated ~ . , data = ballon_train , parms = ls, control = rpart.control(minsplit = 1),method = 'class')

rpart.plot(reg_model)
reg_model$cptable

predict(reg_model,ballon_test, type = "class")





