
library(tm)#highlight the most frequently words in file.
library(wordcloud)#annalyse the keyword and visualize
library(RColorBrewer)#make worldcloud in multiple colors.
library(SnowballC)# text stemming
w<-readLines(file.choose())
w
#step1: corpus
#corpus change plain text into corpus format and tm package only
#corpus the data.
#corpus is collection of documents that is enlarged and makes
# it structured text.
#vectorsource: processing the data in numeric.
w1<-Corpus(VectorSource(w))
w1
#step2: transform your text for cleaning.
stopwords("english")
#remove stopwords, punctuations,whitespaces,numbers.
#tm_map is used for transformation text.
w1<-tm_map(w1,tolower)#text is case sensitive
w1<-tm_map(w1,removeNumbers)
w1<-tm_map(w1,removeWords,stopwords("english"))
w1<-tm_map(w1,stripWhitespace)
#convert special character to space
tospace<-content_transformer(function(x,pattern)gsub(pattern,' ',x))
w1<-tm_map(w1,tospace,"/")
w1<-tm_map(w1,tospace,"?")
w1<-tm_map(w1,tospace,".")
w1<-tm_map(w1,tospace,",")
w1<-tm_map(w1,tospace,"_")
w1<-tm_map(w1,tospace,"@")
#text stemming words like finishing,finished stem in finish
w1<-tm_map(w1,stemDocument)
#step3: find the frequency of data.
w1<-Corpus(VectorSource(w))
w1
w1<-TermDocumentMatrix(w1)#table containing the frequency of data
m1<-as.matrix(w1)
m1
m1<-sort(rowSums(m1),decreasing = TRUE)
m1
d<-data.frame(word=names(m1),freq=m1)
View(d)
wordcloud(words = d$word,freq = d$freq,min.freq = 3,
          max.words = 500,
          random.order = FALSE,rot.per = 0.35,
          colors=brewer.pal(8,"Dark2"))
warnings()
