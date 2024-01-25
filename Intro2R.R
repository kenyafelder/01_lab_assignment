# Lab 1 Assignment: Intro to R
# The University of Texas at San Antonio
# URP-5393: Urban Planning Methods II


#---- INSTRUCTIONS ----
# Objective: Familiarize yourself with R syntax (programming lenguage)

# Task: Run each line of code written bellow. Then, write a comment after each command explaining what it does and what is the output. Use the # sign to start commenting. For example:

1+1 # commands R to directly sum two numbers, then the sum result is return

# Read the document: Assignment_Instructions.pdf located in this folder.

#------ Part 1: Exploring R ------

print('Hi world!, Mom look!, I am programming in R!,...') # the print function allows you to copy anything within the ( ), to be printed in the console

a<-1 # 'a' is equal to 1


#------ Part 2: Let's create  objects ------

twoplustwo <- 2 + 2 #the name 'twoplustwo' is used as a short cut for 2+2, which in the console equals 4
two_plus_two <- 2 + 2 #the name 'two_plus_two' is used as a short cut for 2+2, which in the console equals 4
two.plus.two <- 2 + 2 #the name 'two.plus.two' is used as a short cut for 2+2, which in the console equals 4

two-plus-two <- 2 + 2 # R is unable to run this value because, it equates the '-' as a subtract sign, as a result not recognizing two

#------ Part 3: R Functions to create/manipulate objects ------

twoplustwo # the value is the equivalent of 2+2, which when ran, equals to 4

twoplustwo*twoplustwo # because these values equal 4 and'*' is multiplying, the result would be 16


#What class of object is 'twoplustwo'?

class(twoplustwo) # numeric

# What can be done with object 'twoplustwo'?
sum(two_plus_two,twoplustwo,3) # twoplustwo can be added into functions to represent the value of 4, the the function, it sums to make 16

sum(c(two_plus_two,twoplustwo,3)) #this function combines two_plus_two,twoplustwo,3 together, while sum() adds all the values together

#------ Part 4: more on objects ------

a<-1 #'a' is equal to 1

b<-"1" #'b' is equal to "1"

l1<-list(a,b) #the data value 'l1' holds the data list of a and b from above

m1<-matrix(0,2,2) #the data 'm1' using the formula matrix to create a matrix from the given values, 0,2,2

?matrix

sq1<-seq(1,10,1) # using the seq function ask R to equate sq1 with 1-10, one time

sq2<-LETTERS[sq1]  # using the value sq1 to connect the seq function allowed sq2 to create a sequence using the alphabet, one time


df1<- data.frame(sq1,sq1) #data.frame creates a visual data sheet, with previous values sq1 and making an alternate version, sq1.1, for the secound same column

data_cube<-array(data = 0,dim = c(2,2,3))  # you are telling R to run a test with 2,2,3 dimensions with 0 attributes
?array

#------ Part 5: Indexing Objects ------

A<-c(1836457,2) #combined the numeric within the () to be equated to 'A'

A # this value is equated to 1836457       2
A[1] #you are asking R to pull up the first numeric within A's ()
A[2] #you are asking R to pull up the first numeric within A's ()
A[-1] # i think this means, the opposite of numeric position one, so it grabs the second one
A[1:2] #asking R to grab the numeric from 'A'

grades<-rnorm(100,80,15) #you are commanding R to show a 100 observations, for the mean of 80, with the vectors of standard devation of 15
?rnorm


grades[1:5] #R has pulled the first 5 grades from this 'grades' data
grades>80

grades[grades>80] #shows all the grades that are above 80, writing true or false as to whether it meets the command

#------ Part 5: Object Manipulation ------

class(notas) #R does not recognize the data 'notas'
class(m1) #R has found that the functions used for m1 was array and matrix
?class

length(notas) #R does not recognize the data 'notas'
length(m1) #R shows the number of attributes used in data 'm1'

dim(m1) #R has retrieved the number of sets within (), 2,2
?dim
dim(df1) #R has retrieved the number of sets within the dataframe, 10,2
dim(caja)  #R does not recognize the data 'caja'

names(df1) #R has retrieved the column names within data frame df1

rm(m1) #Rhas removed value m1
?rm

ls() #R has listed all the names of the objects above
?ls
dishes<-c('Mole','BBQ ribs','Paella','PB&J') #R has combined all the attributes within the (), equating to 'dishes'
rating<-c(10,9,8,3) #R has combined all the attributes within the (), 10,9,8,3

food_I_cook<-data.frame(dishes,rating) #R has created a dataframe that combines dishes and rating's together

#------ Part 6: R Packages ------
#https://www.youtube.com/watch?v=6AOpomu9V6Q
install.packages('tidyverse') #R has installed the tidyverse, which works in harmony with API census data
install.packages("leaflet") #R has installed leaflet that creates maps

library(tidyverse) #library load attached add on packages from the internet, to have census data
library(leaflet) #library load attached add on packages from the internet, to make maps


leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=-98.502829112097, lat=29.422872578200067,  popup="This is our class building!") #R has made a map of UTSA


#------ Part 7: Ask R for help ------

?sum #R has pulled up the help section that shows you what this function means and does
help('sum') #R has pulled up the help section that shows you details on the function

help(package='foreign') #in the help file, shows Documentation for package ‘foreign’ version 0.8-84

??regression #in the help file, pulls up any information it has on regressions

#------ Part 8: Programming Challenge ------

#Create a data.frame object that is a list of top 5 favorite places to eat in San Antonio ordered decreasingly starting with the one you like the most. The data frame needs to have three columns: 1st: Ranking Number, 2nd: Name of the restaurant, 3: Type of Food. Type your code bellow.

ranking_number <- c(5,4,3,2,1)

Name_of_the_restaurant<-c('RealReal Jamaica','Wendy','RaisingCane','Shane Rib Shack','Crackt')

Type_of_Food<-c('jamaican food','fast food','fast food','BBQ','Brunch')

favorite_places_to_eat<-data.frame(ranking_number,Name_of_the_restaurant,Type_of_Food)












