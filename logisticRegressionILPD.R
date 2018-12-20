liverpatients <- read.csv("Indian Liver Patient Dataset (ILPD).csv",header = FALSE)


liverpatients
training_indeces =  sample(1:nrow(liverpatients) , round(0.85 * nrow(liverpatients)))

train_set = liverpatients[training_indeces,]
test_set  = liverpatients[-training_indeces,]

train_set$V11 <- as.factor(train_set$V11)

log_reg <- glm(train_set$V11 ~ . ,family = 'binomial',data = train_set)


test_set$V11 <- as.factor(test_set$V11)
preditt <- predict(log_reg,test_set)

library(Metrics)
library(caret)






