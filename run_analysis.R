##assume that the "UCI HAR Dataset" is already in the current working directory

##read the features and activity labels
activity.labels<-read.table("UCI HAR Dataset/activity_labels.txt",stringsAsFactors=F)
dim(activity.labels)
features<-read.table("UCI HAR Dataset/features.txt",stringsAsFactors=F)
dim(features)

##read data in the training sets
training.x<-read.table("UCI HAR Dataset/train/X_train.txt")
dim(training.x)
training.y<-read.table("UCI HAR Dataset/train/y_train.txt")
dim(training.y)
training.subject<-read.table("UCI HAR Dataset/train/subject_train.txt")
dim(training.subject)

##read data in the test sets
test.x<-read.table("UCI HAR Dataset/test/X_test.txt")
dim(test.x)
test.y<-read.table("UCI HAR Dataset/test/y_test.txt")
dim(test.y)
test.subject<-read.table("UCI HAR Dataset/test/subject_test.txt")
dim(test.subject)

##1.Merges the training and the test sets to create one data set.
x<-rbind(training.x,test.x)
colnames(x)<-features[,2]
#y and subject columns will be added later

##2.Extracts only the measurements on the mean and standard deviation for each measurement. 
mean.std.data<-x[,grepl("mean\\(\\)|std\\(\\)",colnames(x))]
y<-rbind(training.y,test.y)
colnames(y)<-"activity"
subject<-rbind(training.subject,test.subject)
colnames(subject)<-"subject.id"
mean.std.data<-cbind(y,subject,mean.std.data)

##3.Uses descriptive activity names to name the activities in the data set
mean.std.data$activity<-factor(mean.std.data$activity,labels=activity.labels$V2)

##4.Appropriately labels the data set with descriptive variable names. 
names(mean.std.data)
#replace "t" and "f" at the beginning with "time." and "freq." respectively
names(mean.std.data)<-gsub("^t","time.",names(mean.std.data))
names(mean.std.data)<-gsub("^f","freq.",names(mean.std.data))
#add "." to "Body", "Gravity","Jerk",and "Gyro"
names(mean.std.data)<-gsub("Body","body.",names(mean.std.data))
names(mean.std.data)<-gsub("Gravity","gravity.",names(mean.std.data))
names(mean.std.data)<-gsub("Jerk","jerk.",names(mean.std.data))
names(mean.std.data)<-gsub("Gyro","gyro.",names(mean.std.data))
#change "Acc" and "Mag" to be more descriptive
names(mean.std.data)<-gsub("Acc","acceleration.",names(mean.std.data))
names(mean.std.data)<-gsub("Mag","magnitude.",names(mean.std.data))
#remove "-" 
names(mean.std.data)<-gsub("\\-","",names(mean.std.data))
#remove "()" at the end and replace the middle ones with "."
names(mean.std.data)<-sub("\\(\\)$","",names(mean.std.data))
names(mean.std.data)<-sub("\\(\\)",".",names(mean.std.data))

##5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
library(reshape2)
meltdata<-melt(mean.std.data,id=c("activity","subject.id"))
dcastdata<-dcast(meltdata,activity+subject.id~variable,mean)
names(dcastdata)[3:ncol(dcastdata)]<-gsub("$",".average",names(dcastdata)[3:ncol(dcastdata)])
write.table(dcastdata,file="tidy_data.txt")