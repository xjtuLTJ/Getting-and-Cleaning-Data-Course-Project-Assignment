

activity_labels<-read.table("activity_labels.txt")
features<-read.table("features.txt")


test_data<-read.table("test/X_test.txt")
test_labels<-read.table("test/y_test.txt")
subject_test<-read.table("test/subject_test.txt")
train_data<-read.table("train/X_train.txt")
train_labels<-read.table("train/y_train.txt")
subject_train<-read.table("train/subject_train.txt")
names(test_data)<-features$V2
names(train_data)<-features$V2
train_data2<-cbind(subject_train,train_labels,train_data)
test_data2<-cbind(subject_test,test_labels,test_data)
full_data<-rbind(train_data2,test_data2)
full_data<-merge(activity_labels,full_data,by.x = 1,by.y = 2)
full_data<-full_data[,-1]
names(full_data)[1:2]<-c("activity","subjectid")
names(full_data)<-tolower(names(full_data))


full_data2<-full_data[,c(1,2,(grep("mean\\()|std\\()",names(full_data))))]


library(reshape2)
library(dplyr)

full_data3<-melt(full_data2,id=c("activity","subjectid"))
full_data3<-dcast(full_data3,activity + subjectid ~variable,mean)
full_data3<-arrange(full_data3,subjectid,activity)
final_data<-mutate(full_data3,id=seq.int(nrow(full_data3)))
final_data<-final_data[,c(69,2,1,3:68)]
names(final_data)<-gsub("-"," ",names(final_data))
names(final_data)<-gsub("\\()","",names(final_data))


names(final_data)<-gsub("std","standard deviation",names(final_data))
names(final_data)<-gsub("\\bx\\b","x-axis",names(final_data))
names(final_data)<-gsub("\\by\\b","y-axis",names(final_data))
names(final_data)<-gsub("\\bz\\b","z-axis",names(final_data))


write.table(final_data,"Tidy_Data.txt", row.name = FALSE)
