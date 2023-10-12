

# taking file and reading 

setwd("/Users/alphaiota/Downloads")
mydata <- read.csv("dividendinfo.csv")




#normalizing to 0 and 1 

normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))  }


maxmindf <- as.data.frame(lapply(mydata, normalize))



# Training and Test Data

trainset <- maxmindf[1:160, ]
testset <- maxmindf[161:200, ]



#Neural Network

library(neuralnet)
nn <- neuralnet(dividend ~ fcfps + earnings_growth + de + mcap + current_ratio, data=trainset, hidden=c(2,2), linear.output=FALSE, threshold=0.01)
nn$result.matrix
plot(nn)




#Testing the resulting output

temp_test <- subset(testset, select = c("fcfps","earnings_growth", "de", "mcap", "current_ratio"))
nn.results <- compute(nn, temp_test)
results <- data.frame(actual = testset$dividend, prediction = nn.results$net.result)

results




#rounding off 

roundedresults<-sapply(results,round,digits=0)
roundedresultsdf=data.frame(roundedresults)


#decision matrix

attach(roundedresultsdf)
table(actual,prediction)

