###ARRAY
#1-D array
a<-c(1,2,3,4)
a<-array(a)
a

#MULTIPLE D array
# Create two vectors of different lengths. 
v1 <- c(5, 9, 3) 
v2 <- c(10, 11, 12, 13, 14, 15) 

# Take these vectors as input to the array. 
result <- array(c(v1, v2), dim = c(3, 3, 2)) 
print(result) 

a<-c(12,14,17)
b<-c(13,18,10)
d<-array(c(a,b),dim(3,3,1))
d

#Creating two vectors of different lengths  
vec1 <-c(1,3,5)  
vec2 <-c(10,11,12,13,14,15)  

#Initializing names for rows, columns and matrices  
col_names <- c("Col1","Col2","Col3")  
row_names <- c("Row1","Row2","Row3")  
matrix_names <- c("Matrix1","Matrix2")  

#Taking the vectors as input to the array   
res <- array(c(vec1,vec2),dim=c(3,3,2),dimnames=list(row_names,col_col_names,matrix_names))  

#Creating two vectors of different lengths  
vec1 <-c(1,3,5)  
vec2 <-c(10,11,12,13,14,15)  

#Taking the vectors as input to the array1   
res1 <- array(c(vec1,vec2),dim=c(3,3,2))  
print(res1)  

#Creating two vectors of different lengths  
vec1 <-c(8,4,7)  
vec2 <-c(16,73,48,46,36,73)  

#Taking the vectors as input to the array2   
res2 <- array(c(vec1,vec2),dim=c(3,3,2))  
print(res2)  

#Creating matrices from these arrays  
mat1 <- res1[,,2]  
mat2 <- res2[,,2]  
res3 <- mat1+mat2  
print(res3)        




#Creating two vectors of different lengths  
vec1 <-c(1,3,5)  
vec2 <-c(10,11,12,13,14,15)  

#Taking the vectors as input to the array1   
res1 <- array(c(vec1,vec2),dim=c(3,3,2))  
print(res1)  

#using apply function   
result <- apply(res1,c(1),sum)  
print(result)  
                                                     
                                                     
                                                     
                                                     
                                                     
                                                     
                                                     