datasets::AirPassengers

datasets::USArrests

dataset(Titanic)



install.packages("dplyr")
library(dplyr)


install.packages("nycflights13")

library(nycflights13)

weather_data <- nycflights13::weather

head(weather_data)

#head
head(weather_data[c(2,3,5,6)])



#find if there are any missing values 
is.na(weather_data)

#tail of DF
tail(weather_data)

#Total summary of the data frame
summary(weather_data)

# M X N number of matrix.
dim(weather_data)

#returns respective values by colomns where missing values are there
colSums(is.na(weather_data))

#find NA values 

any(is.na(weather_data$temp))

all(is.na(weather_data$temp))


####################
#create a data frame

age <- c(12 , 34 , 23)
name <- c('mad','rat','cat')
place <- c('sc','bnglr','hyd')

new_df <- data.frame(age,name,place)

new_df


rank <- c(1,2,3,4)


new_df <- cbind(new_df,rank)

new_df <- rbind(age = 23,name = 'kod',place = 'del')



new_df


install.packages("outliers")

library(outliers)


outl <- outlier(weather_data$wind_speed,logical = TRUE)

?outlier()
?sum()
sum(outl)

install.packages('datasets')







