print(seq(19,67,23))
print(mean(2,7))
print(sum(2,7))

new.function<-function(){
  for(i in 1:5){
    print(i^2)
   
  }
}
new.function()

new.function<-function(a){
  for(i in 1:a){
    b<-(i^2)
    print(b)
  }
}
new.function(a)

a<-c(11,2,4,5,62)
f<-function(b,a)
  for(i in a){
    if(i== b){
      print("found")
    }
  } 
f(2,a)

f<-function(a,b,c){
  result<-a*b+c
  print(result)
}
f(2,3,4)

f<-function(a=2,b=6,c=7){
  result<-a/b*c
  print(result)
}
f()

#abs(var)
#sqrt(var)
#sqrt(c(var+1)),s(c(1:10)),sqrt(1,10)
#celling(var)
#flooer(var)
#trunc(var)
#round(var)
#sin(x),cox(x),tan(x) Trinomial
#



print(trunc(1234))
print(sin(20))
sqrt(c(2,4))

p<-"asjfkgo88765rtufhgj90"
substr(p,5,9)









