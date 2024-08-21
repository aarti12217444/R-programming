#employee_id     employee_name      sal      starting_date       stringAsFactors
#1                 VARUN           532.30    2012-01-01         FALSE
#2                 sameer          913.20     2013-09-23        FALSE
#3                 RAMAN           641.00     2014-11-15        FALSE
#4                 sazy            529.00     2014-05-11        FALSE
#5                 priCE           453.25      2015-03-27        FALSE

emp.data<- data.frame(  
  employee_id = c (1,2,3,4,5),   
  employee_name = c("VARUN","sameer","RAMAN","sazy","priCE"),  
  sal = c(532.30,913.20,641.00,529.00,453.25),   
  
  starting_date = as.Date(c("2012-01-01", "2013-09-23  ", "2014-11-15", "2014-05-11",  
                            "2015-03-27")),  
  stringsAsFactors = FALSE ,FALSE 
) ; 
print(emp.data)  
emp.data[c(1,2,3)]
r<-emp.data[c(2,3),c(1,4)]
print(r)

a<-c(9,6,4)
a1<-c(4,3,1)
as.integer(a/a1)
a%/%a1

row_names=c("row1","row2","row3")
col_names=c("col1","col2","col3")
R<-matrix(c(3,4,5,6,7,8,9,10,11),nrow=3, byrow=TRUE,dimnames = list(row_names,col_names))
R
rbind(R,c(13,14,15))




