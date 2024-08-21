a<-"1"
b<-"2"
c<-switch(
  paste(a,b,sep=""),
  "1"="hello sir",
  "12"="hlo sir,how are you?",
  "21"="hlo"
)
print(c)


a<-"1"
b<-"2"
c<-switch(
  paste(a,b,sep=""),
  "hello sir"="1",
  "hlo sir,how are you"="12",
  "hlo"="21"
)
print(c)

