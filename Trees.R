class(trees)
dim(trees)
str(trees)#structure of dataset
View(trees)#display files inside coding window
head(trees)#display list of 6 elements
head(trees,n=5)
tail(trees)#display last 6 elements
mean(trees$Girth)
median(trees$girth)
sd(trees$Girth)#standard deviation
max(trees)
min(trees)
summary(trees)
subset(trees,Height>70)
subset(trees.Volime>10.2)
trees[1,]
trees[c(2,5),]
trees[,c(1,3)]


#Activity*************************
a<-read.csv(file.choose())
a
class(a)
#class(trees)
dim(a)
str(a)#structure of dataset
View(a)#display files inside coding window
head(a)#display list of 6 elements
head(a,n=5)
tail(a)#display last 6 elements
mean(a$perimeter)
median(a$texture)
sd(a$symmetry)#standard deviation
max(a$perimeter)
min(a$texture)
summary(a)
subset(a,area>70)
subset(a,compactness>10.2)
a[1,]
a[c(2,5),]
a[,c(1,3)]


#readxl file
#xlsv
#readxlv
#packageinstall
library(readxl)
my_data<-read_excel("REPORT.xlsx",sheet="position",range="G4:G1")
my_data<-read_excel("REPORT.xlsx", na="*");
my_data
view(my_data)

