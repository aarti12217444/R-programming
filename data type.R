###############CHAPTER : 1




#simple code
myString <- "Hello"
print(myString)

#simple cal.with their type and class
a<-5
b<-5
c<-a+b
print(c)
print(a+b)
class(c)
typeof(c)
a=9L
typeof(a)
a=1.987
typeof(a)

#using of cat and paste command
cat("a is",a)
paste("data is",a)
x="aarti kashyap"
y="Binti"
paste("x","and","y",x,y)
paste("Hello",19,21,"Mate")
cat("x and y",x,y)
paste("hi","how","are","you","all")
cat("hi","how","are","all")

####################################(difference between paste() and cat()
#1)paste() value stored in string form  and also store variable result and cat() form stored not in string form but not store the variable result
#2)The cat() function will output the concatenated string to the console, but it won’t store the results in a variable.
#The paste() function will output the concatenated string to the console and it will store the results in a character variable.
defined inside the program used in paste()
and cannot use in cat()
#operators
a = 2
b = 8.2
c=a+b
c
c(a^2+b^2)
a>b
a||b
a&&b
a!=b
a1=a<b
a1
a2=a||b
a2
a3=a&&b
a3
a=0
b=8
a&&b
a&b
a=("TRUE,FALSE,FALSE,TRUE")
a
b=("FALSE,TRUE,TRUE,FALSE")
b
a>b
a<b#here && and|| is not applicable

#Character vector
x<-c("hello","how do you do","lovely to meet you",56)
x
x[2:3]
x[-4]
c(x[1:2],"goodbye")

a=10
b=12
cat(a,b)

c="Aarti"
e=12
cat("name is",c)
cat(name is,c)#error b,coz it is not defining
d="kashyap"
paste("name is",c,d)

s="aarti"
t="kashyap"
paste('name is',s,t)
paste0('name is_',s,t)
cat('name is',s,t)
 





















