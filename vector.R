###############CHAPTER : 2

#vector
#group of lists
#atomic,list
#access vector from index number
a<-c(1,2,3,4,5,6)
(a>5)
(a<5)
(a!=2)
(a&1)
(a|6)
(a&0)
(a|0)


a<-c(1,2,3,4,5)
b<-c(5,6,7,8,9)
(a+b)
length(a)

a<-c(1,2,3,4,5)
b<-c(1,2,3,4,5)
(a==b)


d<-c(1L,2L,3L,4L,5L)
e<-c(5L,4L,9L,3L,9L)
(d+e)

f<-c(1+i,2+7i,3+7i,4+0i,5+9i)
g<-c(1+0i,2+37i,3+57i,42+0i,52+9i)
(f!=g)

h<-c(TRUE,FALSE)
i<-c(FALSE,FALSE)
(h<i)

j<-c(1.56,2.45,3.00,4.23,5.78)
k<-c(1.564,2.45,33.00,44.243,65.778)
(j>k)

a<-c(1,2,3,4,5,6,7,8,9,0,0,9,8,76)
a(3:10)

a<-c(1,2,3,4,5)
class(a)
seq(1,3)
range(1:3)

d<-c(1L,2L,3L,4L,5L)
class(d)
seq(1L,3L)
range(1:3)

h<-c(TRUE,FALSE,TRUE,FALSE)
class(h)
seq(TRUE,FALSE)
range(1:3)

j<-c(1.56,2.45,3.00,4.23,5.78)
class(j)
seq(1.56,5.78)
range(1:3)


a<-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16)
length(a)
a<-seq(from =  1, to = 16, by=2 )
a
a[-3]
a<-c((1:10),by=5)
length.out=5#divide number of elements
a<-c((1:10),length.out=5)
a



a<-rep(c(1,2,3), times=3)
a

a<-c(1,2,3,4,5,6,7,8,9)
a[1]
a[5]
a[2:6]
a[0:6]

a<-c(1,3,5,7,9,2,4,6,8,0,11,12,13,14,15,67)
a
a[5]
a[c(1,3,6)]
a[c(-2:0)]
