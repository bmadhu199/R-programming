

numbs <- 3456.23
class(numbs)

int <- as.integer(numbs)
class(int)
int


vec <- c(1,2,3,4)
vec
class(vec)


vec_char <- c('A','B','C')
vec_char
class(vec_char)


com_vec <- c('A',1,'B',2,'C',3)
class(com_vec)

1:100
1:100/2

?seq

seq(0,100,2)


seq(from = 0,to = 100,by = 2)

seq(from = 7,to = 1000,by = 7 )

?rep


?list






list(1,"name",2,"place")
list(1,"name",list(1,2,3))


list[3]

number[1:2]


numn_list <- 1:300
numn_list

numn_list[150:length(numn_list)]


bool_vec <- list(1,'A',3,'B',T,F)
bool_vec

bool_vec[5]

comb_vec <- list(1,c(1,2,3,list(1,2)))
com_vec[2][4][2]



com <- list(1,c(1,2,3,list(1,2)))
com[2]
com[2][5]

com[[2]][[5]]


com[2][[4]][2]

com[2]
com[2][1]
com[2][1][4][1][2]
com[[2]]
com[[2]][[5]]


dell <- list(1,2,"name",list(3,4,list(2,3)),1,list(list(list(1,2,3))))
 dell[[6]][[1]][[1]][[2]]
 
 
 
 dell[[4]][[3]][2]
 
 
 
 dell[[6]][[1]][[1]][[3]]
 
 
 dell[[6]][[1]][[1]][[2]]
 
 
 
 

 
 sony <- list(list(1,"ABC",list(list(1,2,3,4)),'DEP', list(list(1,c(2,3)))))
 
 sony[[1]][[5]][[1]][[2]][2]
 
 
 sony[[1]][[5]][[1]][[2]][2]
 
 
 sony[[1]][[5]][[1]][[2]][[2]]
 
 class(sony)

 
 ?matrix 
 
 
chill <- matrix(seq(1,18,2),3,3,byrow = T)
 
 chill

 matrix(1:9,3,3)
 matrix(1:9,3,3,byrow = T)

mat <- matrix(seq(2,32,2),4,4,byrow = T)
 mat[[2]]

 
 mat2 <- matrix(seq(2,32,2),4,4,byrow = T)
mat[1:3,mat[1:2,2:3]] 


mat[2,]  
mat[1:2,]
mat[c(1,3),]
mat1 <- matrix(1:9,3,3,byrow = T)



 mat5 <- matrix(1:9,3,3,byrow = T)
 mat6 <- matrix(1:9,3,3,byrow = T)

 
 
 mat5 + mat6
 
 mat5 %*% mat6
 
 

dim(mat1)
nrow(mat1)
ncol(mat1)




matri3 <- matrix(1:100,10,10,byrow = T)

matri2 <- matrix(1:100,10,10,byrow = T)

matri4 <- matri3/2

matri2+matri4

matri4 - matri2

matri2 %*% matri3

matri2[1,3]

matri2[,1]

matri2[1,]

matri2[c(1,10),]

matri2[c(1:5,10:5),]

matri2+matri3

var <- c(6,7,8,9,10,11)



var > 7
var[var > 7]



var[ var > 7 & var< 10]









var[ var < 7 | var < 10]

vecto <- seq(1,100,2)

vecto[vecto >50 & vecto < 70]

seq(1,100,2)[seq(1,100,2) > 50 & seq(1,100,2) < 70] 

seq(1,100,2)[seq(1,100,2) < 50 | seq(1,100,2) > 70] 



age <- c(22,11,7)


animals <- c("girrafe","lion","Dog")

names(age) <- animals

age["Dog"]

age[c("lion","Dog")]


paste(1:4,4:1,1:4,sep="-")

paste("heloo-world", sep = "-")

paste("hello","world",sep = " ",collapse = " ")

paste("hello","world",sep = "")

T&F

(T) & (c(T,F))


temp <- 1:100

if( (1:100)/2 ){
    
   
} 


for (vec in 1:100) {
  
  
  
  if( vec%%2 == 0){
     print(vec)
  }
  
}



for (vec in seq(1,100,3)) {
  
  
  
  if( vec%%2 == 0){
    print(vec)
  }
  
}




var <- 1


if(var == 1){
   var= var+1
   
}else{
  var= var-1
}


var

i = 1
while ( i<100 ) {
  
  if( i%%2 == 0){
    print(i)
  }
  
  i=i+1
}





my_sum <- function(v){
   temp = 0
  for (i in v) {
    temp <- temp +i
  }
   
  return(temp) 
}

my_sum(1:100)  


vect <- c(1,2,3)


avg <- function(v) {
  temp = o
  len <- length(v)
  for(i in v){
    
    temp = temp + i
  }
  
  avrg <- temp/len
  return(avrg)
}

avg(1:100)



name <- c('Nam','ABC','DEF','GHI')

Age <- c(NA, 20, 50,40)

Gender <- c('M',NA,'M','M')


?factor

df <- data.frame(name,Age,Gender)

df

?data.frame



df[,1]

class(df[1:2,1:2])

class(df[1,])

class(df[,2])

class( df$name)

class( df$Age)


row.names(df) <- c('one','two','three','four')

df

df[,1]

class(df[2])

class(df[,c('name','Age')])


df[2,'Age']



class(Age)

class(Gender)

df$Gender <- factor(df$Gender,levels = c('M','F'),labels = c(0,1))

factor(df$Gender,labels = c(0,1),levels = c('M','F'))

df

class(df$Gender)


?data()

data()


iris <- data(iris)

iris

data(iris)

iris['Species']

iris[c(1,2,3),]

row.names(iris)

head(iris)

tail(iris)

dim(iris)

object.size(iris)

str(iris)

summary(iris)


is.na(df)

summary(df)

colSums(is.na(df))

which(is.na(df))
which.max(is.na(df$Gender))


which.max(1:100)

which.max(is.na(df$Age))
any(is.na(df))

all(is.na(df))


any(is.na(iris))

all(is.na(iris))


df[which(is.na(df$Age)) ,2] <- mean(df$Age,na.rm = T)

df

df[which(is.na(df$Gender)),3] <- unique(df$Gender)


df[which(is.na(df$Gender)),3]


rank <- c(1,2,3,4)


summary(df)

df <- cbind(df,rank)
df
rbind(name ='sam',Age = 12 ,Gender ='F',rank = 5)



studentInfo <- cbind(df,rank)

rbind(name ='sam',Age = 12 ,Gender ='F',rank = 5)

studentInfo[]


summary(df)

df

?rbind

tail(df)

head(df)




?cbind



unique()


name <- c('ram','ravi','jhon','rose')

std <- c(5,5,9,7)

gender <- c('M','M','M','F')

studentInfo <- data.frame(name,std,gender)

studentInfo$gender <- factor(studentInfo$gender,levels = c('M','F'),labels = c(0,1) )

colSums(studentInfo$std)

studentInfo




summary(studentInfo)

studentInfo


which.max(studentInfo$std)

which.max(studentInfo$std)



var<-list("sam", 23, "M", 5)
rbind(df, var)

rbind(studentInfo,var)


rank <- c(1,2,3,4)

studentInfo <- cbind(studentInfo,rank)

class(studentInfo[2])

studentInfo

df[ ,-rank]

rank <- c(1,2,3,4)

studentInfo <- studentInfo[,-5]
studentInfo

studentInfo[]

studentInfo[2,5]

replace(studentInfo[2,5],NA,NA)





?rm

install.packages('dplyr')
library(dplyr)

install.packages('nycflights13')

library(nycflights13)

flights


head(flights)

tail(flights)

summary(flights)

ncol(flights)
object.size(flights)


colnames(flights)

dim(flights)

colSums(is.na(flights))


max.col(flights$dest)

flights[ ,1:6]
flights[ ,'year':"dep_delay"]


select(flights,1:6)

select(flights,1:10,c(-3:-8))

select(flights,1:10,-c(1,3,5))

select(flights,1:6)

?select


select(flights,colnames(flights)[1]:colnames(flights)[6], -c(colnames(flights)[5]))

?filter

filter(flights,month == 5)

filter(flights,month == 5)

filter(flights, month == 8 | day == 25)

filter(flights,month != 6 & carrier == 'US')



filter( select(flights,1:15) , (month == 5 |month == 6| month == 7) & (carrier == 'AA') &  (day == 1 | day == 2 | day == 3))


?arrange


library(nycflights13)


arrange(flights,desc(month),1:5)


arrange(df,c1,c3)

select (arrange(flights,month,desc(day)), 1:6) 


?distinct

distinct(flights,carrier, .keep_all = T)

distinct(flights,carrier,day ,.keep_all = T)



?group_by()


summary(flights)


head(flights)

distinct(flights,month,day)




distinct(flights,day:50)

distinct(flights,)

head(flights)

View(flights)


distinct(flights,flight)


group_by(flights,tailnum,carrier)


summarise( arrange(group_by(flights,month),month))



dfs <-  group_by(flights,month)

summarise(dfs, n())



head(flights)


dfg <- group_by(flights,month,day)

dfg

   arrange( summarise(group_by(flights,month,day),sum(dep_delay,na.rm =T)) , desc(dep_delay))
   
  
   group_by(flights,month,day)
   
   
   summarise(dfg,sum(dep_delay,na.rm =T))
   
   arrange( dfgs , desc(dep_delay))

 
?mutate

   
montday <-   
  
  mutate(select(flights,1:3), paste(month,day,sep = "  /"))

                    montday
sample_n(flights,7)  

sample_frac(flights,0.0001)

?rename

rename(flights, mon= month)


sumfun <- function(){

for (n in seq(1:100)) {
  
   n =n+1
}
  print(n)  
}

sumfun()


install.packages('tidyr')
install.packages("tidyverse")

library(tidyr)
library(tidyverse)


Company <- c('ABC','DEF','GHI','JKL')
Q1 <- c(100,200,300,400)
Q2 <- c(300,100,200,600)
Q3 <- c(300,500,800,200)
Q4 <- c(600,800,300,700)
SharePrice <- c(1000,4000,3000,2000)


Company <- data.frame(Company,Q1,Q2,Q3,Q4,SharePrice)

Company


row.names('ABC','DEF','GHI','JKL')



CompanyData<- gather(Company,Quarter , sales, Q1:Q4)
?spread()
spread(CompanyData,Quarter , sales)

  
  paste(Company$Company , Company$SharePrice,sep='-')

CompanyData

paste()

?unite()

unite(CompanyData,col = 'company_share',c('Company','SharePrice'))


Company <- select(Company,-Q1.1,-Q2.1,-Q3.1,-Q4.1)
CompanyData<- gather(Company,Quarter , sales, Q1:Q4)
CompanyData <- spread(CompanyData,Quarter , sales)

CompanyData <- unite(CompanyData,col = 'company_share',c('Company','SharePrice'))


CompanyData

?arrange_at()



select(Company,c(2,3,4,5,1))


?separate()

separate(CompanyData, col = 'company_share',into = c('company','sharePrice'),sep = ' ')


name <- c('HoneyComb','Ice-cream','Jelly bean','Kitkat','Lollipop')

version <- c( 1,2,3,4,5)

Versions <- data.frame(name,version)


name <- c('Donut','Gingerbread','Jelly bean','Kitkat','Lollipop')

year <- c( 2008,2010,2013,2014,1015)

year <- data.frame(name,year)


Versions

year

year <- select(year,-names.1)

year




merge(Versions,year, by = 'name',all = T)


full_join(Versions,year,by ='name')

inner_join(Version,year,by='')



#leftJion
merge(Versions,year,by = 'name',all.x = T)

#innerJoin
merge(Versions,year,by = 'name',all = F)
#FullJoin 
merge(Versions,year,by= 'name' ,all = T)
#rightJoin
merge(Versions,year,by = 'name', all.x = T)



vec <- c(10,12,14,16,18)

my_mean <- function(input){
  
  sum = 0
  
  for(i in input){
    sum =+i 
  }
  return(sum/length(input))
}

my_mean(vec)


library(nycflights13)

dfs <- select(flights,1:10)


 flights_num <- dfs %>% select(1:10) %>% filter(month == 5 | month == 6 | month == 7) %>% group_by( day) %>% summarise( flights_no = n()) %>% arrange((flights_no))

 flights_num578
 
ran <-  c(1,6,3,8,10,23)
 
 sort(ran,decreasing = T)

 #index ordering
order()

#sample
sample(1:20,2)

nums <- c(1:100)


?if_else()

if_else( (sample(1:100),1) /2 == 0) , "Its a even", "Its not a even","missing")

install.packages('stringr')
install.packages('ggplot2')

library(stringr)
library(ggplot2)

 x= "This is a Stirng"

str_to_upper("This is STirng")

str_length(x)

str_count(x,pattern = str_to_upper("This is STirng"))

str_to_lower(x)

str_to_title(x)

?str_replace()

str_replace(x,pattern = 'This',replacement = 'helo')
str_replace(x,'This','hello')

c = 'this is a string! i am changing it to a char! do you think i can change it ? Yes you can !'

?grep()

grep( '!',c)


grep('!',paste(c,sep = ' ')
  
     

grep('!',str_split(c,' '))



grep('!',unlist(str_split(c,' ')))


sub('!','@',c)

gsub('!','@',c)




lapply(list(c(1:3),c(4:7),c(8:10)),mean)


matrix <- matrix(data = 1:16,byrow = TRUE)

matrix


colSums(matrix)

rowsum(matrix)

apply(matrix,1, sum)


apply(matrix,1, max)

rowSums(matrix,na.rm = FALSE )

colSums(matrix,na.rm = FALSE)


matrixx <- matrix(data= 16:1,byrow = TRUE)

mapply(sum,matrix,matrixx)


vec <- 1:100

fac <- gl(5,20)



tapply(vec, , function)

tapply(vec, fac,mean)

sapply(list, function)

library(ggplot2)


mtcars

View(mtcars)

ggplot(mtcars,aes(x= mpg,y= hp))+geom_point(color ='blue')+ggtitle('MPG VS HP')+ylab("Miles per hr")+xlab("Horse power")

ggplot(mtcars,aes(x= mpg,y= hp))+geom_line(color ='blue')+ggtitle('MPG VS HP')+ylab("Miles per hr")+xlab("Horse power")

ggplot(mtcars,aes(x=cyl,y=mpg))+geom_bar(stat = 'identity',color = 'blue')+ylab("Miles per hr")+xlab("cylinder")
#x = categorical
#y = numerical

ggplot(mtcars,aes(x= factor(cyl),y= mpg))+geom_boxplot(,color = 'blue')+ylab("Miles per hr")+xlab("cylinder")


?qplot()

qplot(mtcars$hp ,geom = 'histogram',bins=50)



irish







