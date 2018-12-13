install.packages('ipred')


library('ipred')
library(caret)

data <- read.csv('Balloon.csv')


View(data)

set.seed(123)
training_indices <- sample(1: nrow(data), round(0.85 * nrow(data)))

training_set <- data[training_indices,]
test_set <- data[-training_indices,]

?factor()


regressor <- bagging(factor(training_set$Inflated) ~ . , data = train_set, coob = T)


predicted_ <- predict(regressor,test_set[-5])


confusionMatrix(factor(training_set$Inflated), predicted_)






