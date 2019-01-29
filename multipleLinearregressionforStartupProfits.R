#multiple linear regression

startup_data = read.csv('50_Startups.csv')


head(startup_data)

tail(startup_data)

summary(startup_data)


startup_data$State = factor(startup_data$State,levels = c('California','Florida','New York'), labels = c(1,2,3))


set.seed(123)
traing_indicies = sample(1:nrow(startup_data), round(0.80 * nrow(startup_data)))

trainingset = startup_data[traing_indicies,]
testingset = startup_data[-traing_indicies,]

View(testingset)

regressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend + State , data = trainingset  )

summary(regressor)

y = predict(regressor, testingset)




