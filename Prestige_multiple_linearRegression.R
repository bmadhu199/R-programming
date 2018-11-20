install.packages("car")

install.packages("curl")

library(ggplot2)

library(dplyr)

library(car)

install.packages("Metrics")

library(Metrics)

Prestige

View(Prestige)

colSums(is.na(Prestige))


Prestige[is.na(Prestige$type),]

data <- Prestige[,-c(5,6)]

set.seed(123)
training_income_set = sample(1: nrow(data), round(0.85* nrow(data)))

income_train_set = data[training_income_set,]
income_test_set =  data[-training_income_set,]

ggplot(Prestige,aes(y= income,x= prestige))+geom_point(color ='red')+ggtitle('income VS prestige')+ylab("income")+xlab("prestige")
ggplot(Prestige,aes(y= income,x= education))+geom_point(color ='red')+ggtitle('income VS education')+ylab("income")+xlab("education")
ggplot(Prestige,aes(y= (income),x= women))+geom_point(color ='red')+ggtitle('income VS women')+ylab("income")+xlab("women")

reg_model <- lm(log(income_train_set$income) ~ . , data = income_train_set)

summary(reg_model)
# the Adj R2 is almost near to 0.6
# when our model is not accurate, we can perform data transformation operations like   Square root , square , log
# we go ahead performing all the transfoermation operations and consider the best.
# we go for comparing values not the r2 values.  
# for example   sqrt(16) - 4 but log(16) is < 4.   So we go with the log.


predict(reg_model,income_test_set)

exp(predict(reg_model,income_test_set))

rmse(predicted = reg_model)

##Condition for  the simple 


#1
#X should have a linear trend wrt to Y

#2
# NO multi co linearity
#tollerence = 1- r^2
#if t< 0.1 then

#3
#eaech and every indipendent variable should remensle a normal distrbutation


#4 
#co relation 
# corelation btwn 2 independent varibale should not be high
#corelation btwn independent varibale and dependent should be high


#5
#mean of a resudual should be zero and it should resembele normal distrubution.


# for any linear regression model 
# Bias is LOW       (the ability to learn on a parttcular on a particular data)
#variance is HIGH    (how good it is able to predict on the test set given a model from the unseen data(test set))


#best model (IDEAL CONDITION)  :  LB HV

#LB HV
#HV HB
#LV HB









