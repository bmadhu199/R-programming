install.packages('ipred')

install.packages('caret')

library('caret')

library('ipred')


liverdata <- read.csv('Indian Liver Patient Dataset (ILPD).csv')


View(data)

set.seed(123)
training_indices <- sample(1: nrow(liverdata), round(0.85 * nrow(liverdata)))

training_indices


train_set <- data[training_indices,]
test_set <- data[-training_indices,]

reggressor <- bagging(factor(train_set$X1) ~ . , data = train_set , coob = TRUE)

predicted_ <- predict(reggressor, test_set[,-11])


confusionMatrix(factor(test_set$X1),predicted_)







