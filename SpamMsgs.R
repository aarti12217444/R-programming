installed.packages("tm")
installed.packages("SnowballC")
install.packages("wordcloud")
install.packages("e1071")
library(tm)
library(SnowballC)
library(wordcloud)
library(e1071)
library(gmodels)

setwd("C:/Users/asus/Downloads")
getwd()
sms_raw<-read.csv("sms_spam.csv",stringsAsFactors = FALSE)
str(sms_raw)
sms_raw$type <- factor(sms_raw$type)
sms_corpus <- VCorpus(VectorSource(sms_raw$text))
print(sms_corpus)
as.character(sms_corpus[[1]])
lapply(sms_corpus[1:2],as.character)
sms_corpus_clean<-tm_map(sms_corpus,content_transformer(tolower))
as.character(sms_corpus[[1]])
as.character(sms_corpus_clean[[1]])

sms_corpus_clean<-tm_map(sms_corpus,removeNumbers)
sms_corpus_clean<-tm_map(sms_corpus_clean,removeWords,stopwords())
sms_corpus_clean<-tm_map(sms_corpus,removePunctuation)
sms_corpus_clean<-tm_map(sms_corpus,stemDocument)
sms_corpus_clean<-tm_map(sms_corpus,stripWhitespace)
sms_dtm<-DocumentTermMatrix(sms_corpus_clean)

sms_dtm_train<-sms_dtm[1:4169,]
sms_dtm_test<-sms_dtm[4170:5559,]
sms_train_labels<-sms_raw[1:4169,]$type
sms_test_labels<-sms_raw[4170:5559,]$type
prop.table(table(sms_train_labels))
prop.table(table(sms_test_labels))
wordcloud(sms_corpus_clean, min.freq = 50, random.order = FALSE)
sms_freq_words <- findFreqTerms(sms_dtm_train, 5)
str(sms_freq_words)
sms_dtm_freq_train<- sms_dtm_train[ , sms_freq_words]
sms_dtm_freq_test <- sms_dtm_test[ , sms_freq_words]
convert_counts <- function(x) {
  x <- ifelse(x > 0, "Yes", "No")
}
sms_train <- apply(sms_dtm_freq_train, MARGIN = 2,  convert_counts)
sms_test <- apply(sms_dtm_freq_test, MARGIN = 2,   convert_counts)
sms_classifier <- naiveBayes(sms_train, sms_train_labels)
sms_test_pred <- predict(sms_classifier, sms_test)
CrossTable(sms_test_pred,sms_test_labels,prop.chisq = FALSE, prop.t = FALSE, dnn = c('predicted', 'actual'))

