install.packages("rpart")
install.packages("rpart.plot")
install.packages("lattice")
install.packages("caret")

library(rpart)
library(rpart.plot)
library(lattice)
library(caret)



liverpatients <- read.csv("Indian Liver Patient Dataset (ILPD).csv",header = FALSE)


View(liverpatients)


dim(liverpatients)


any(is.na(liverpatients))

liverpatients[is.na(liverpatients)]

colSums(liverpatients,na.rm = TRUE)

set.seed(123)
training_indeces =  sample(1:nrow(liverpatients) , round(0.85 * nrow(liverpatients)))

train_set = liverpatients[training_indeces,]
test_set  = liverpatients[-training_indeces,]


ls = list( split= "information")
regressor <- rpart(formula = V11 ~. ,data = train_set,parms = ls, method = "class",control = rpart.control(minsplit = 1))


pred_values <- predict(regressor,test_set, type = "class")

pred_values
class(pred_values)

class(test_set$V11)

confusionMatrix(factor(test_set$V11), pred_values)


rpart.plot(regressor)  


regressor$cptable[which.min(regressor$cptable[2:4 , "xerror"]) + 1 , 'cp']

regressor$cptable[which.min(regressor$cptable[2:4,"xerror"])+1 , 'CP']


best_cp <- regressor$cptable[which.min(regressor$cptable[2:4, "xerror"]) + 1, 'CP']

best_model <- prune(regressor, best_cp)

prun_val<-  predict(best_model,test_set[,-11], type = "class")

confusionMatrix(factor(test_set$V11),prun_val)
best_model

rpart.plot(best_model)

regressor$cptable



