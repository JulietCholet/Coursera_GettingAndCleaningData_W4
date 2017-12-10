##read files which contains labels of columns (features) and labels of activity (labels) 
> labels <- read.table('UCI HAR Dataset/activity_labels.txt')
> labels[,2] <- as.character(labels[,2])
> features <- read.table("UCI HAR Dataset/features.txt")
> features[,2] <- as.character(features[,2])

##here we read files containing the data. Data was split in 2: training and test. Therefore subject_train and subject_test
## for example are organized in the same way and together represent the whole set of subjects ID.
> trainS<- read.table("UCI HAR Dataset/train/subject_train.txt")
> trainX<- read.table("UCI HAR Dataset/train/X_train.txt")
> trainY<- read.table("UCI HAR Dataset/train/Y_train.txt")
> testX<- read.table("UCI HAR Dataset/test/X_test.txt")
> testY<- read.table("UCI HAR Dataset/test/Y_test.txt")
> testS<- read.table("UCI HAR Dataset/test/subject_test.txt")

##I chose to first gather subjects, measures and activities separately.

> Y<-rbind(testY,trainY)
> S<-rbind(testS,trainS)
> X<-rbind(testX,trainX)

##here columns are labelled properly
> colnames(Y) <-"Activity"
> colnames(S) <-"SubjectId"
> colnames(X) <- features[,2]

## with X, I select only columns related to mean and standard deviation
> subdata<-X[, grep(".*mean* | *.std*", colnames(X))]

## the 3 sets are then merged into "alldata"
> alldata<-cbind(S,Y,subdata)

## at this point "Activity" column only contains integers from 1 to 6
## to be more explicit, integers are replaced by correspond characters (e.g. "SITTING", "STANDING"...)
>alldata$Activity <- labels[alldata$Activity]

#column names are here changed to be more readable
> name.new <- names(alldata)
> name.new <- gsub("[(][)]", "", name.new)
> name.new <- gsub("-", "_", name.new)
> name.new <- gsub("^t", "Time-domain", name.new)
> name.new <- gsub("^f", "Frequency-domain", name.new)
> name.new <- gsub("Acc", "Accelerometer", name.new)
> name.new <- gsub("Gyro", "Gyroscope", name.new)
> names(alldata)<-name.new

##creation of a 2nd, independent tidy data set with the average of each variable for each activity 
##and each subject.
> analysis<-(alldata%>% group_by(SubjectId, Activity)%>% summarise_all(funs(mean)))

##this 2nd data set is saved as text file called "tidydata"
> write.table(x = analysis, file = "tidydata.txt", row.names=F)
