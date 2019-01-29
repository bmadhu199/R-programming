#linear Regression program for predicting the salaries

data = read.csv('Salary_Data.csv')

summary(data)

dim(data)

View(data)

sample(1:100, 50)

training_indices = sample(1: nrow(data), round(0.80 * nrow(data)))

training_set = data[training_indices,]
test_set = data[-training_indices,]

summary(test_set)

regressor = lm(formula = Salary ~ YearsExperience, data = training_set )

summary(regressor)
pred_values = predict(regressor, newdata = test_set)