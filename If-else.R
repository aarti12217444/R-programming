####################       CH:-5


#IF(CONDITION){
 # BODY
  
#}.........................................    if     .................................................

y<-c("HARDWORK","is","the","key","to","success")
if("key" %in%y){
  print("key is found in  vector")
}
#{
 # print("key is not found")
#}

y<-c(1L,2L,3L,4L,5L,6L,7L)
if(1L %in%y){
  print("1L is present")
}



  f<-list(1L,2L,5L)
  f1<-list(2,4,65,8)
  f2<-list('a','v','g')
  f3<-list(f,f1,f2)
  if(21%in%f3){
    print("found")
  }else{
    print("not found")
  }
    
  
  
#..................................................IF-ELSE..................................................................
  x<-c(8)
  y<-c("aarti")
  if(is.integer(y))
  {
    print("y is an integer")
  }else{
    print("y is other data type")
  }
 
  
  
x = c("what" , "is" , "truth")
if("Truth" %in%x){
  print("truth is found in the first time")
}else if("truth" %in%x){
    print("truth is found")
  }else{
    print("output generated")
  }

marks = 9
if(marks > 70){
  print("first class")
}else if(marks >65)
  {
   print("second class")
}else if(marks > 45){
  print(" third class")
}else{
  print("fail")
}
  

#................................    SWITCH   .........................................................


x = switch(3,"first","second","third","forth")
print(x)
 #3 is condition and other are no of statement 

y<-"90"
x<-switch(y,"14"="ram", "15"="shyam","18"="naresh","19"="om","90"="omkar")
print(x)
  

y="5"
a=8
b=5
x=switch(
  y,
  "5"=cat("Addition = ",a+b),
  "10"=cat("sub=",a-b),
  "11"=cat("mul=",a*b),
  "18"=cat("div=",a/b))
  
 
  

Grade = "D"
a<-switch(Grade,
          "A"={cat("Excellent")},
          "B"={cat("Good")},
          "C"={cat("Average")},
          "D"={cat("Below Average")},
          "E"={cat("Poor")},
          "F"={cat("Fail")},
          cat("Invalid Grade"))

  
  
#................................................practice problem.................................................

#1>    WAP using list,vector and apply if and apply %n%fraction
#2>   wap consider 3 atomic vector and apply if else condition to access any element of any vector
# numeric vector (4 element) 1st elem
#Integer vector(4 elem) 2nd elem
#locical vector(4 elem) 3rd elem

#........................................................end............................................................................

list = c("a","b","c","d")#list
d = c("Shubham","arsh","ashu","pari") #vector

if("a" %in%list){
  print("a is present")
}else if("Shubham" %in%d){
  print("Shubham is present")
}else{
  print("not present, enter correct value")
}




a<-c(2,3,4,5)
i<-c(1L,2L,3L,4L)
l<-c(TRUE,FALSE,TRUE,FALSE)
if(is.numeric(a[[1]][4])){
  print("set is numeric")
}else if(is.integer(b[[2]][2])){
  print("set id integer")
}else if(is.logical(l[[1]][2])){
  print("set id logical")
}else{
  print("no one")
}



a<-c(1,2,3,4)
ifelse(a%%2 == 0,"even","odd")

 a<-readline("enter a number: ")
 print(a)

 vect<-c(2,3,10,15,23,14,17,20)
 ifelse(vect%%2==0,"even","odd")
 x<-as.inetger(readline())
 if(x>0){
   if(x%%2==0){
     print("x is even")
   }
   else{
     print("x is negative")
   }
   else{
     if(x%%2==0){
       print("x is even")
     }
     else{
       print("x is negative")
     }
   }
  
 
a<-c(1,2,3,4,5,6,7,8,9,10)
ifelse(a%%2==0,"even","odd")

  
  
  











