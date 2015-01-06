#Week 2

# Control Structure

#if: else is not necessary
x<-4
if(x>3){y<-10} else{y<-0}
#similar result,show the function purpose is assigning value to y
y<-if(x>3){10} else{0}

#for loops can be nested, but always difficult to read
x<-matrix(1:6,2,3)
for(i in seq_len(nrow(x))){for (j in seq_len(ncol(x))){print(x[i,j])}}

#while loops can potentially lead to infinite loop, use with care! Safer to use for loop
#repeat: only way to exit is call break
#next is used to skip an iteration of a loop
for (i in 1:20){
  if(i<10){next} 
  else{print(i)}}

#control strucutre mentioned here are mainly for programming writing, for command-line
#interactive work, the apply function are more useful

# my won R function
aboveN<-function(x,n){
  use<-x>n
  x[use]
}

columnmean<-function(y,removena=TRUE){  #default is TRUE
  nc<-ncol(y)
  means<-numeric(nc)
  for(i in 1:nc) {
    means[i]<-mean(y[,i],na.rm=removena)
  }
  means       #the function will return the last expression of the function
}

y<-matrix(1:9,3,3)
columnmean(y)
columnmean(airquality)
columnmean(airquality,FALSE)

#check the function arguments
args(lm)
search()


#scoping rules (lexical scoping)  # need to restudy part 3
make.power<-function(n){
  pow<-function(x){
    x^n
  }
  pow
}

cube<-make.power(3)
square<-make.power(2)

ls(environment(cube))
get("n",environment(cube))


#R coding standards
1. use text format
2. indent your code 
#(tools->globle option->code editing, use "ctl+a" and "ctl+i" to apply changes)
3. limit the width of the code (default:80 columns)
4. limit of the length of the function


#Dates and Times
x<-as.Date("1970-01-01")
y<-as.Date("1970/01/01") # same result
unclass(x)

z<-Sys.time()
z
weekdays(z)
months(z)
quarters(z)
unclass(z) #second since 1970-1-1 first seconds

p<-as.POSIXlt(z)
names(unclass(p))
p$sec

lct <- Sys.getlocale("LC_TIME")   #把当前"LC_TIME"的值存储到变量lct中
Sys.setlocale("LC_TIME", "C")     #重设"LC_TIME"的值为"C"
mytime<-c("January 10 2012, 10:40")
mytime
strptime(mytime,format="%B %d %Y, %H:%M") # %b also works, but %y doesn't
#the result might be NA without the first two steps
#ref:http://stat.ethz.ch/R-manual/R-patched/library/base/html/strptime.html
