install.packages("syuzhet")
library(syuzhet)
library(readxl)
text_df1<-read_excel("C:/Users/hrsht/Desktop/r/project1/Amazon-reivew-export.xlsx")
View(text_df1)

review<-as.character(text_df1$`Review Content`)

get_nrc_sentiment('happy')
get_nrc_sentiment('abuse')

s1<-get_nrc_sentiment(review)
View(s1)

review_sentiments<-cbind(text_df1$`Review Content`,s1)
View(review_sentiments)

barplot(colSums(s1),col=rainbow(10),ylab="count",xlab="amazon feedback of samsung a34 5g phone")
