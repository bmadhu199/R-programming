
data(women)


View(women)

library(ggplot2)

library(dplyr)

ggplot(women,aes(x= height,y= weight))+geom_point(color ='red')+ggtitle('Height VS Weight')+ylab("Height")+xlab("Weight")


wom <- data(women)


?sample()

sample(1:10,4)



set.seed(123)     #each time  we run sample it returns random samples.  set.seed will return the same sample indices every time. 
training_indices <- sample(1: nrow(women), round(0.85* nrow(women)))
training_indices


train_set <- women[training_indices,]  #Assining the indeces for the training set.
test_set <- women[-training_indices,]  #Assining the indeces for the testing set.

View(test_set)

reg_model <- lm( weight ~ height , data = train_set) #implement the reg model


reg_model

summary(reg_model)


c <- mean(women$weight) - (3.45803) * (mean(women$height))  
c  


cov(x = weight,y = height)

sum <- c(1,2,3,4,5)


mean(sum)

sd(sum)

?pt

t_value = 3.45803 /0.09137    # observation- mean/ standard error


# we can get the P value for the T table.
# if we cant get the p value for the T table, Then we have to find out manualy by pt(t_value,df ).

p_value <- pt(-14.77, 11)      # -14.77 is the t value , 11 is the Degree of freedom.

p <- p_value *2     # We multiply with 2 cause there are     
p

reg_model$residuals    #To get the list the resudial values


mean(resu)


sqrt()

sd(reg_model$residuals)/sqrt(11)



#resudial standard deviation 

sqrt(sum(((reg_model$residuals) - mean(reg_model$residuals) )**2)/11)   

sqrt(sum(( (women$height) - mean(women$height) )**2 ) /11)/sqrt(11)  
 
#multiple R square


ssr <- sum(( (train_set$weight) - (reg_model$fitted.values) )^2)

sst  <-    sum( ( (train_set$weight) - mean( train_set$weight ))^2 )
 
 
1 - ssr/sst 

#Adjusted R square


 



  


