=================================================================
## Human Activity Recognition Using Smartphones Dataset Processing
Version 1.0
=================================================================

This repository contains a script to download and process the data from the Human Activity Recognition Using Smartphones Dataset
Links for the original dataset, script and codebook are provided.

### Assumptions and instructions

* The training and test data are available in folders named train and test respectively, no data from the "Inertial Signal" sub-folders are used.

* For each of these data sets:

- the data is present in X_<dataset>.txt file
- Subject identification is present in subject_<dataset>.txt file
- Activity codes are present in y_<dataset>.txt file
- All activity codes and their labels are in a file named activity_labels.txt.
- Names of all measurements taken are present in file features.txt ordered and indexed as they appear in the X_<dataset>.txt files.
- The final datasets results from merging the information containing the measurements, activities and subjects.
- Two final tidy datasets are created, the first containing the processed data and another containing the means from the measurements.
- Only information about the mean, mean frequencies and the standard deviations are being processed and kept.
- All columns representing means contain ...mean in them.
- All columns representing standard deviations contain ...std in them.
- All columns representing mean frequencies contain ...meanfreq in them.
- The processed tidy dataset should be created in the current directory as human_activity.csv
- The processed tidy dataset containing the means should be created in the current directory as "human_data.csv"



### Running the script

Clone this repository
Download the data set and extract. It should result in a UCI HAR Dataset folder that has all the files in the required structure.
Change current directory to the UCI HAR Dataset folder.
Run Rscript <path to>/run_analysis.R

