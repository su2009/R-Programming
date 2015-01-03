#Week1 
m<-matrix(1:6,nrow=2,ncol=3)
attributes(m)

# same result as above
n<-1:6
dim(n)<-c(2,3)

#list is a special type of vectors that contain elements of different classes

#Factors
x<-factor(c("yes","no","yes","no","NA"))
x
table(x)
unclass(x)
table(x)
x  # print the unclassed results 
#set up base level
x<-factor(c("yes","no","yes","no","NA"),level=c("yes","NA","no"))
x

#Name
x<-1:3
x
names(x)
names(x)<-c("service","food","drink")
names(x)
x  

#by default, when a single element of a matrix is returned, it is a vector of length 1
# instead of a 1*1 matrix, we can change it by setting drop=FALSE
x<-matrix(1:6,2,3)
x
x[2,2]
x[2,2,drop=FALSE]
x[2,]  # return a vector
x[2,,drop=FALSE] # return a matrix


#Week 2

# read in large dataset with read.table: specify the column class will help the speed
# a quick and dirty way to figure out the classes of each column
initial<-read.table("data.txt",nrows=100)
classes<-sapply(initial,class)
tabAll<-read.table("data.txt",colClasses=classes)

#calculating  memory requirement
eg: a data frame with 1.5M rows and 120 columns, all of which are numerica data.
1,500,000*120*8 bytes/numeric=1440000000bytes=1440000000/(10^6bytes/MB)
=1440MB=1444MB/(1000MB/GB)=1.44GB  # usually needs two times of the result to read data into R
