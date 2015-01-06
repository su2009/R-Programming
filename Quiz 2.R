#Q2.
x <- 1:10
if(x > 5) {
  x <- 0
}
# result:Warning message: In if (x > 5) { :
#the condition has length > 1 and only the first element will be used


#Q5:[definition] http://www.biosino.org/pages/newhtm/r/schtml/Scope.html

#Q8:在求值过程中，如果发现一个自由变量，R 会去给它找一个值。 
#在R里面,先搜索函数的环境(定义环境而非调用环境),then它的外围，until全局环境。

#Q10. 父框架是一个函数被调用(而非定义)的环境
#[ref]http://adv-r.had.co.nz/Environments.html
