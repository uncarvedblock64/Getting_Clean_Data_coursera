# Getting_Clean_Data_coursera
Coursera Data Science Specialization Course: Getting and Cleaning Data

## Repo Contents:
* getprojectfiles.R: when sourced in R, it will download the project files and unzip the archive in the cwd.
* run_analysis.R: Needs to be run inside the unzipped folder 'UCI HAR Dataset/'
    Just source the script and it will run automatically.  The script depends on the `dplyr` library.
* CodeBook.md: describes the variables in the tidydataset.txt file.
* tidydataset.txt: is output by the `run_analysis.R` script in the working directory.  
    The choice of variables is explained in the 'CodeBook.md'
    To read tidydataset.txt into R use the code: 
    `data <- read.table("tidydataset.txt", header = TRUE)`
    `View(data)`
    This code is taken from the course's TA's project FAQ, "David's Project FAQ" [link](https://class.coursera.org/getdata-010/forum/thread?thread_id=49)
    The decision to cite this was based entirely on David's suggestion to cite it in his FAQ ;-)
  
## run_analysis.R discussion of process
* Basically followed 5 step process outlined in the Project Assignment Page, as commented in the script.
* I used `gsub()` per suggestions in the course thread [link](https://class.coursera.org/getdata-010/forum/thread?thread_id=326)
  + Used in Step 2 to remove characters, '-', '(', and ')' from variable names in the original X_(test|train).txt files
  + Used in Step 4 to expand upon the original variable names so that they were more descriptive.
    Additional information loosely derived from the data set README.txt and features_info.txt
* I used `grepl()` to create a indexing vectors while selecting columns with std, mean, Subject_id, or Activity while excluding Freq and angle
  + the decision to exclude meanFreq and angle variables is discussed in the codebook.
* I chose a wide tidy data format, because it is easier to view the group_by effect on Activity and subject_id that way.
* The use of the function `summarise_each()` was discovered on 2 stackoverflow questions [link1](http://stackoverflow.com/questions/21644848/summarizing-multiple-columns-with-dplyr) and [link2](http://stackoverflow.com/questions/21295936/can-dplyr-summarise-over-several-variables-without-listing-each-one)
  + the decision also makes the code easier to read, since it only required 2 lines of code.




## This project uses the Human Activity Recognition Using Smartphones Dataset; License infomation from creators is below:
[link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
> License:
> ========
> [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
> This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
> Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
