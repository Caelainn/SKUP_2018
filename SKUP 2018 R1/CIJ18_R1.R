###############
## R_CLASS_I ##
###############

#Welcome to R I!

#This is the first in a series of three classes on R.
#In the first class, R I, we'll get familiar with RStudio and carry out some basic analysis.

#In this class we'll look at:
#1. What is R & what it can be used for?
#2. Importing data
#3. Examining the data

##############################################
##1. What is R and what can it be used for? ##
##############################################

#R is a programming language and open-source statistical programming tool 
#It can be used for data analysis, visualising data and developing software
#We're going to use RStudio where you can see your data and commands in 4 panels
#The four panels are the console, where you execute commands; 
#A history panel; a workspace for display and a file/plot space

#There are many reasons why R has become more popular in recent years
#Some of the reasons are that it can be used for analysis and visuals
#It's powerful, free, has a large community of users and packages

#R is a program and language
#RStudio is the user interface or GUI that we'll be using

#RStudio is useful as you can see your data and commands in 4 panels
#The four panels are: 

#1.The console is in the bottom left corner
#This is where you execute commands
#Execute is just a fancy word for run
#Let's try to run a command
#You can use the console like a calculator

5+5

5*10

#Now you can try typing in a command...

#2.The source editor
#This is directly above the console, in the top left corner
#Here you can write and edit scripts
#You can also run scripts from this area
#It also acts as a dataviewer
#When you open a dataset, it will appear here
#That way you can view and inspect datasets that are loaded into the R environment

#3.The workspace 
#In the top right corner is the workspace 
#Here you can view objects in their global environment
#This means viewing what else is loaded onto the directory the scripts are being run from
#You can also use the top right corner pane to search your command history
#This allows you to see the scripts and commands you have used in context
#It can be useful when you want to reuse parts of a script

#What does the history pane show you?

#4.File and plot space 
#This is in the lower right pane 
#Here you can view the packages you have installed, plots that you make and R help
#What can you see is accessible in the Studio environment under the Files tab?

#You can get different views by toggling between different screens
#Let look at the help command for View
#Type this into the console

??View

######################
##2. Importing data ##
######################

#In order to work in RStudio, we're going to load in some data


#Since March 2017 all companies and some public bodies in England with more than 250 employees have been mandated to release figures on their gender pay gap
#All the data is publicly released on https://gender-pay-gap.service.gov.uk/

#There is some data already in our project, see the file panel
#What is it called?

#The data named genderpay300118 is from the government's gender pay gap reporting service
#Let's read one of the csv files into R
#To read in the data we'll type in the read.csv command and place the name of the file within it
read.csv("genderpay300118.csv") 

#What can you see?

#Now in this case we want to give the dataset a name
#Or assign the csv a name to create a dataframe
#A dataframe is the structure the data is held in

genderpayjan <- read.csv("genderpay300118.csv")

#In R the default when a csv is being read in by R is to treat the first row as a header row

#Let's open our data and take a look
#The command to see the data in a tabulated format is View
View(genderpayjan)

#What does the data look like?

#The Guardian published a series on the gender pay gap
#In order to run the project, we needed to keep track of the companies releasing data each day
#The data has a number of variables - what do they address?

#What kinds of things might you want to find from this data?
#What are the top lines you would want to find from the data? 

######################
##3. Examining data ##
######################

#Let's look at some of the dimensions of the data
#How many rows and columns does the data have?
#We use the dim function and call the dataset
dim(genderpayjan)

#This is the process for most commands, state the function and the dataset

#What do the first 6 rows of data look like?
head(genderpayjan)

#What do the last 6 rows of data look like?
tail(genderpayjan)

#What are the column names?
names(genderpayjan)

#How many rows are in the dataset?
nrow(genderpayjan)

#How many columns are in the dataset?
ncol(genderpayjan)

#How many companies are in the public sector category?
#Now come up with two more newslines...

#In the coming class we'll continue to analyse this data for newslines using packages 
#We'll also look at statistical analysis in RStudio

###################
## Caelainn Barr ##
## The Guardian  ##
## @caelainnbarr ##
###################