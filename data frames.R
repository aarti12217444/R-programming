###########################DATA FRAMMES
#list:store elements in 1d form like only in rows or col
#data frames: store elements in form of tabular 

#Vector: Vector is a type of dynamic array which has the ability to resize automatically after insertion or deletion of elements. The elements in vector are placed in contiguous storage so that they can be accessed and traversed using iterators. Element is inserted at the end of the vector. Example:
 # vector v;
#v.insert(5);
#v.delete();


#List: List is a double linked sequence that supports both forward and backward traversal. The time taken in the insertion and deletion in the beginning, end and middle is constant. It has the non-contiguous memory and there is no pre-allocated memory. Example:
 # list  l;
#l.insert_begin(5);
#l.delete_end();


# Creating the data frame.  
emp.data<- data.frame(  
  employee_id = c (1:5),   
  employee_name = c("Shubham","Arpita","Nishka","Gunjan","Sumit"),  
  sal = c(623.3,915.2,611.0,729.0,843.25),   
  
  starting_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",  
                            "2015-03-27")),  
  stringsAsFactors = FALSE  
)  
# Printing the data frame.            
print(emp.data)  

# Creating the data frame.  
emp.data<- data.frame(  
  employee_id = c (1:5),   
  employee_name = c("Shubham","Arpita","Nishka","Gunjan","Sumit"),  
  sal = c(623.3,515.2,611.0,729.0,843.25),   
  
  starting_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",  
                            "2015-03-27")),  
  stringsAsFactors = FALSE  
)  
# Printing the structure of data frame.           
str(emp.data)  



# Creating the data frame.  
emp.data<- data.frame(  
  employee_id = c (1:5),   
  employee_name= c("Shubham","Arpita","Nishka","Gunjan","Sumit"),  
  sal = c(623.3,515.2,611.0,729.0,843.25),   
  
  starting_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",  
                            "2015-03-27")),  
  stringsAsFactors = FALSE  
)  
# Extracting specific columns from a data frame       
final <- data.frame(emp.data$employee_id,emp.data$sal)  
print(final)  


# Creating the data frame.  
emp.data<- data.frame(  
  employee_id = c (1:5),   
  employee_name = c("Shubham","Arpita","Nishka","Gunjan","Sumit"),  
  sal = c(623.3,515.2,611.0,729.0,843.25),   
  
  starting_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",  
                            "2015-03-27")),  
  stringsAsFactors = FALSE  
)  
# Extracting first row from a data frame      
final <- emp.data[1,]  
print(final)  


# Extracting last two row from a data frame       
final <- emp.data[4:5,]  
print(final)  



# Creating the data frame.  
emp.data<- data.frame(  
  employee_id = c (1:5),   
  employee_name = c("Shubham","Arti","Nishu","Gunja","Sumit"),  
  sal = c(623.3,515.2,611.0,729.0,843.25),   
  
  starting_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",  
                            "2015-03-27")),  
  stringsAsFactors = FALSE  
)  
print(emp.data)  

#Adding row in the data frame  
x <- list(6,"Vaishali",547,"2015-09-01")  
rbind(emp.data,x)  

#Adding column in the data frame  
y <- c("Moradabad","Lucknow","patna","up","bihar")  
cbind(emp.data,Address=y)  