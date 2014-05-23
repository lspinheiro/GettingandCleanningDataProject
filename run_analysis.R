  ## read the needed datasets from disk
  activity_labels = read.table("activity_labels.txt")
  features = read.table("features.txt")
  setwd("test")
  x_test = read.table("X_test.txt")
  y_test = read.table("Y_test.txt")
  subject_test = read.table("subject_test.txt")
  setwd("../")
  setwd("train")
  x_train = read.table("X_train.txt")
  y_train = read.table("Y_train.txt")
  subject_train = read.table("subject_train.txt")
  setwd("../")
  

  ## name the variables in the train and test datasets
  names(x_test) = features[, 2]
  names(x_train) = features[, 2]
  
  ## bind data frames to create a compiled result table with train and test sets
  ## two variables are created to include labels and subjects
  ## The final data frame with results is created by merging results and activity labels
  results = rbind.data.frame(x_test, x_train)
  results$labelsnum = rbind(y_test, y_train)
  results$subject = rbind(subject_test, subject_train)
  results[, 562] = as.vector(results[, 562])
  results[, 563] = as.vector(results[, 563])
  merged = merge(results, activity_labels, by.x="labelsnum", by.y="V1", all=TRUE)
  merged = merged[, 2:564]
  
  ## remove all unused data frames to save memory
  ## these data frames can be reloaded from disk if needed
  
  rm(x_test)
  rm(x_train)
  rm(y_train)
  rm(y_test)
  rm(subject_test)
  rm(subject_train)
  
  
  ## Subset all the means and standard deviations from all activities
  ## mean frequencies are included
  summarized = merged[, c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228, 240:241, 253:254, 266:271, 294:296, 345:350, 373:375, 424:429, 452:454, 503:504, 513, 516:517, 526, 529:530, 539, 542:543, 552, 555:563)]
  rm(merged)
  
  ##rename variables and reorder data frame using regular expressions
  ## the variable names are turned lower case and punctuation is substituted with "."
  
  colnames(summarized)[88] <- "activity"
  names = gsub( " *\\(*?\\)- *,", ".", names(summarized[1:86]))
  names = gsub( "-", ".", names)
  names = gsub( "\\()", "", names)
  names = tolower(names)
  names(summarized)[1:86] = names
  
  
  ##sort the variables and remove row.names created along the process
  newsummarized = summarized[, c(88, 87, 1:86)]
  newsummarized = newsummarized[order(newsummarized$activity, newsummarized$subject),]
  row.names(newsummarized) = NULL
  
  ## save the data
  write.csv(newsummarized, file="human_activity.csv", row.names = FALSE)
  
  ## create a new data frame with the average value of the activities
  library(reshape2)
  humanMelt = melt(newsummarized, id=c("activity", "subject"), measure.vars=names(newsummarized)[3:88])
  humanData = dcast(humanMelt, activity+subject~variable, mean)
  
  ##save the new data frame
  write.table(humanData, file="human_data.txt", row.names = FALSE)

