##########matrix




#Arranging elements sequentially by row.  
P <- matrix(c(5:16), nrow = 4, byrow = TRUE)  
print(P)  

# Arranging elements sequentially by column.  
Q <- matrix(c(3:14), nrow = 4, byrow = FALSE)  
print(Q)  

# Defining the column and row names.  
row_names = c("row1", "row2", "row3", "row4")  
ccol_names = c("col1", "col2", "col3")  

R <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(row_names, col_names))  


# Defining the column and row names.  
row_names = c("row1", "row2", "row3", "row4")  
ccol_names = c("col1", "col2", "col3")  
#Creating matrix   
R <- matrix(c(5:16), nrow = 4, byrow = TRUE, dimnames = list(row_names, col_names))  
print(R)  

#Accessing element present on 3rd row and 2nd column  
print(R[3,2])  

#Accessing element present in 3rd row  
print(R[3,])  

#Accessing element present in 2nd column  
print(R[,2])  



R <- matrix(c(5:16), nrow = 4,ncol=3)  
S <- matrix(c(1:12), nrow = 4,ncol=3)  

#Addition  
sum<-R+S  
print(sum)  

#Subtraction  
sub<-R-S  
print(sub)  

#Multiplication  
mul<-R*S  
print(mul)  

#Multiplication by constant  
mul1<-R*12  
print(mul1)  

#Division  
div<-R/S  
print(div)  


matrix1<-matriX(c(11,12,13,14,15,16,17),nrow=2,ncol=3,byrow=TRUE)
matrix1
p<-matrix(c(1,2,3,4),nrow=2,byrow=TRUE)
print(p)

q<-matrix(c(3,4,5,6),nrow=2,byrow=TRUE)
print(q)





row_names=c("row1","row2","row3")
col_names=c("col1","col2","col3")
R<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3, byrow=TRUE,dimnames = list(row_names,col_names))
R
print(R[2,3])
R
print(R[3,])
R
print(R[,2])
R
R[2,3]<-20
R
R[R==9]<-0
R
R[R>5]<-9
R
rbind(R,c(10,11,12))
cbind(R,c(13,14,15))
t(R)#transpose
dim(R)<-c(1,9)#modify the dim.
print(R)

Q<-matrix(c(3:17),nrow=4,ncol=4)
S<-matrix(c(1:12),nrow=3,ncol=3)
sum<-Q+S
sum






