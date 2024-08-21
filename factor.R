#The factor is a data structure which is used for fields which take only predefined finite number of values.
#These are the variable which takes a limited number of different values.
#These are the data objects which are used to categorize the data and to store it on multiple levels. 
#It can store both integers and strings values, and are useful in the column that has a limited number of unique values
#label means assign a name to level

#attributes of factor

#X
#It is the input vector which is to be transformed into a factor.

#levels
#It is an input vector that represents a set of unique values which are taken by x.

#labels
#It is a character vector which corresponds to the number of labels.

#Exclude
#It is used to specify the value which we want to be excluded,

#ordered
#It is a logical attribute which determines if the levels are ordered.

#nmax
#It is used to specify the upper bound for the maximum number of level.







factor<-c("data","arpit","aarti","villu","vimal","bipeen")
print(factor)
print(is.factor(factor))

factor<-factor(factor)
print(is.factor(factor))


a<-c("male","female","trans","female","male","trans")

print(a)
print(is.factor(a))
factor_a<-factor(a)



# Creating a vector as input.  
data <- c("Shubham","Nishka","Arpita","Nishka","Shubham","Sumit","Nishka","Shubham","Sumit","Arpita","Sumit")  

# Applying the factor function.  
factor_data<- factor(data)  

#Printing all elements of factor  
print(factor_data)  

#Accessing 4th element of factor  
print(factor_data[4])  

#Accessing 5th and 7th element  
print(factor_data[c(5,7)])  

#Accessing all elemcent except 4th one  
print(factor_data[-4])  

#Accessing elements using logical vector  
print(factor_data[c(TRUE,FALSE,FALSE,FALSE,TRUE,TRUE,TRUE,FALSE,FALSE,FALSE,TRUE)])  
print(is.factor(factor_a))


gender<-factor(c("male","female","female","male","trans"))
gender
levels<-c("female","male","trans");
gender



name<-c("john","mohn","rohan","sohan")
name

temp<-c(12.2,45.9,20.1,34.8)
temp

file_str<-c(TRUE,FALSE,TRUE,FALSE)
file_str
