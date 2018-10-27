################
## R_CLASS_II ##
################

#In this class we'll get down to some data wrangling and learn how join and subset datasets in R
#You'll also learn statistical functions in R

#In this class we'll look at:
#1. Basic data analysis - packages; sorting and filters
#2. Joining data
#3. Subsetting data
#4. Descriptive statistics

###########################
##1. Basic data analysis ##
###########################

#In order to do some analysis in R we'll need to install a package for analysis

#What is a package?
#Packages allow you to carry out specific functions in R
#They're free and easy to install
#To explore all the packages available in your library
library()

#Some of the best packages for data analysis are the following dplyr and tidyr let's install them now

#dplyr
install.packages("dplyr")

#The package also needs to be loaded from the library
library("dplyr")

#tidyr
install.packages("tidyr")
library("tidyr")

#Note you need to call the package using "", i.e. "dplyr"
#This is one of R's quirks
#Let's look at where the package is installed

#In order to analyse the data we need to read it into the programme first
genderpayjan <- read.csv('genderpay300118.csv')

#Now let's sort and filter the data
#Let's sort the data, from high to low
#The function here is arrange
arrange(genderpayjan,DiffMedianHourlyPercent)
#Which company has reported the largest gender pay gap?

#Let's talk through the function
#What is happening in this function?

#As you can see the sort prints the results to the console
#But let's take a look in the table format...
View(arrange(genderpayjan,DiffMedianHourlyPercent))
#This is an example of nesting functions

#Let's mix it up and sort in the other direction
View(arrange(genderpayjan,desc(DiffMedianHourlyPercent)))
#What could I do if I don't want the data printed to the console or in a view?

#Which company has the biggest proportion of women in the top quartile?
#Which company has the biggest median gender bonus pay gap?
#Which company has the biggest proportion of women in the lower pay band?
#Which company has the smallest proportion of women in the top quartile?

#Let's look at filtering
#What if I only want to see all the gender pay gaps over 20%?
#We can subset the data using filter
filter(genderpayjan, DiffMedianHourlyPercent > 20)
#What's happening in the above command...

#The filter command is part of the dplyr package and works with a number of operators
#Less than < 
#Greater than >
#Less than or equal to <= 
#Greater than or equal to >=

#According to the ONS in 2017 the national median gender pay gap in England and Wales stood at 18.4%
#Let's look for companies with a gender pay gap below the national average
filter(genderpayjan, DiffMedianHourlyPercent < 18.4)
#How many companies are better than than the national average?

#How many companies have a gender pay gap of more than 50%?
#In how many companies do women make up less than than 20% of the top paid employees?
#How many companies have a median DiffMedianBonusPercent
#How many companies are in the public sector category?
#Now come up with two more newslines...

####################
##2. Joining data ##
####################

#But what if we want to join another dataset to that data?
#Let's load the data set in and look at it
genderpayapril <- read.csv("genderpay040418.csv")
genderpayaug <- read.csv("genderpay100817.csv")

#Take a look at the data
View(genderpayapril)

#The structure is exactly the same as the existing dataset
#The column headers match up so let's append the rows
#We'll use the bind_rows command, a function of dplyr

allgenderpay <- bind_rows(genderpayaug,genderpayapril)

#There are numerous join functions that can allow you to extract data
#This is based on a set of criteria

#Compare files to see new entries 
#newentriesgenderpay <- anti_join(new, old, by="EmployerName")
#What are the possible shortcomings with this command?

#######################
## 3.Subsetting data ##
#######################

#There are a few ways to subset data
#One of the most straightforward is to name the data by location
#This can then be saved to a new dataframe
headsingle_allgenderpay <- allgenderpay[ ,-(5:7)]

#Or we can name the data we want to keep
onlypay_allgenderpay <- allgenderpay[, 1:4]

#Or we can name the column headers we want to keep
myvars <- c("EmployerName", "DiffMedianHourlyPercent", "DiffMedianBonusPercent")
gap_allgender <- allgenderpay[myvars]

#Let's look at some quick ways of finding headlines

#Let's look at the median value of our new dataset
median(allgenderpay$DiffMedianHourlyPercent)

#Let's look at the median value across all companies 
mean(allgenderpay$DiffMedianHourlyPercent)

#and take a look at the outliers
min(allgenderpay$DiffMedianHourlyPercent)
max(allgenderpay$DiffMedianHourlyPercent)

#What else might we want to consider when looking at the data for storylines?

##############################
##4. Descriptive statistics ##
##############################

#R comes with a number of built in packages for analysis
#This means you can run simple analysis on practice data sets

#To see how R gives you the ability to analyse your data simply and effectively we're going to use one it's built in data packages

#To see a full list of the packages
data()

#We're going to use airquality dataset for this class
#Open it up and take a look
airquality

#Let's also find out more about the dataset
?airquality

#If we were going to use this in a story about air pollution what might we want to know?
#The first step is to look at the descriptive statistics
#What are descriptive statistics?

#The summary function gives you basic descriptive statistics 
??summary

#Let's look at the summary statistics for the Wind column in the airquality dataset
summary(airquality$Wind)

#Let's look through the details of what is returned from this query
#What might you want to use these for?

#Let's run the summary analysis for the entire dataset
summary(airquality)

#There are some unusual results in there
#Any ideas why we are getting the summary stats for month and day?

#Looking at the results, what might you use from this to describe your data? 
#Let's come up with a few top lines from the data for a story

#In the next class we will look at scrapping data from the web

###################
## Caelainn Barr ##
## The Guardian  ##
## @caelainnbarr ##
###################