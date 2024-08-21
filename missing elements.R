df<-data.frame(c1=1:8,
               c2=factor(c("B","A","B","C",
                           "A","B","C","B")))
df
#filling some NA in df
df[4,1]<-df[6,2]<-df[3,2]<-NA
df
na.omit(df)#remove rows consist with nA value

levels(df$c2)#terms (catogerious )value....level<-sign a name
#$ use only access a single terms
#na.fail(df)if na is encountered
na.exclude(df)#skip the na value rows
installed.packages(dplyr)
library(dplyr)
view(airquality)
air=airquality
str(air)
---
filter air Temp>Month==6
air=month(air,TempINC=(Temp=32)*5/9
---