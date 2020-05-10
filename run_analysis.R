options(stringsAsFactors = F)
library(dplyr)
library(tidyr)
setwd('E:\\GEO Rwd\\Coursera\\Getting and Cleaning Data\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset')

train <- read.table("./train/X_train.txt",header = F,check.names = F) %>% tbl_df()
test <- read.table("./test/X_test.txt",header = F,check.names = F) %>% tbl_df()
subject_train <- read.table("./train/subject_train.txt",header = F,check.names = F) %>% tbl_df()
subject_test <- read.table("./test/subject_test.txt",header = F,check.names = F) %>% tbl_df()
label_train <- read.table("./train/y_train.txt",header = F,check.names = F) %>% tbl_df()
label_test <- read.table("./test/y_test.txt",header = F,check.names = F) %>% tbl_df()

trainData <- mutate(train, mean = apply(train,1,mean)) %>% mutate(std = apply(train,1,sd)) %>%
        mutate(dataType = "train")
testData <- mutate(test, mean = apply(test,1,mean)) %>% mutate(std = apply(test,1,sd)) %>% 
        mutate(dataType = "test")

names(subject_train) <- "subject"
names(subject_test) <- "subject"
names(label_train) <- "label"
names(label_test) <- "label"

trainData <- cbind(trainData,subject_train,label_train)
testData <- cbind(testData,subject_test,label_test)

allData <- rbind(trainData,testData)

selectData <- select(allData,mean,std,subject,label,dataType)

groupMean <- select(allData,mean,subject,label,dataType)

write.table(groupMean,file = "groupMean.txt",sep = '\t',quote = F,row.names = F)






trainData <- mutate(train, mean = apply(train,1,mean)) 
selectTrain <- select(trainData, mean)
trainTbl <- cbind(selectTrain,subject_train,label_train)
names(trainTbl)[2:3] <- c("subject", "label")

testData <- mutate(test, mean = apply(test,1,mean)) 
selectTest <- select(testData, mean)
testTbl <- cbind(selectTest,subject_test,label_test) 
names(testTbl)[2:3] <- c("subject", "label")

trainTbl <- mutate(trainTbl, dataType = "train")
testTbl <- mutate(testTbl, dataType = "test")

allTbl <- rbind(trainTbl,testTbl)
