#using while loop find out last occurance of a specific element in a numeric vector with 20 data elements


a<-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
print(a)
# target element to find 
target <- 20
index<-length(a)
last_occurence <-NULL
while(index > 0){
  if(a[index] == target){
    last_occurence <-index
    break
    
  }
  index<-index - 1
}
# printing the result
if(!is.null(last_occurence)){
  cat("last occurence of",target,"is at index",last_occurence,"\n")
}else{
  cat("element",target,"not found.\n")
}
