#Q9.
x<-1:4
y<-2:3
x+y
class(x+y)

x <- c(17, 14, 4, 5, 13, 12, 10)
x[x > 10] <- 4
x

#Q11-14
setwd("d:/Users/yangsu/Desktop")
getwd()
data<-read.table("hw1_data.csv",header=TRUE,sep=",",)
names(data)
head(data,n=2)
nrow(data)
tail(data,n=2)
#15
data[47,]  # same as data$Ozone[47]
#16
bad<-is.na(data[,1])
sum(bad)  # same as sum(is.na(data$Ozone))

newdata<-na.omit(data[,1])
newdata
summary(newdata)  # mean(data$Ozone, na.rm = T)

d18<-subset(data,data$Ozone>31&data$Temp>90)
mean(d18$Solar.R)

d19<-subset(data,data$Month==6)
mean(d19$Temp)

d20<-subset(data,data$Month==5)
max(d20[,1],na.rm=TRUE)
