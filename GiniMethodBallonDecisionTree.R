install.packages("rpart")
install.packages("rpart.plot")

library(Metrics)




library(rpart)
library(rpart.plot)


install.packages('ipred')

library(ipred)
data <- read.csv('Balloon.csv')


summary(data)



set.seed(123)
training_indices <- sample(1: nrow(data) , round( nrow(data) * 0.85))

train_set <- data[training_indices,]
test_set <- data[-training_indices,]


regmodel <- rpart(formula = train_set$Inflated ~ . , data = train_set , parms = ls, control = rpart.control(minsplit = 1),method = 'class')


predict(reg_model,test_set, type = "class")
