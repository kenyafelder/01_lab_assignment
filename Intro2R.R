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

data_cube<-array(data = 0,dim = c(2,2,3)) 


#------ Part 5: Indexing Objects ------

A<-c(1836457,2)

A
A[1]
A[2]
A[-1]
A[1:2]

grades<-rnorm(100,80,15)

grades[1:5]
grades>80

grades[grades>80]

#------ Part 5: Object Manipulation ------

class(notas)
class(m1)

length(notas)
length(m1)

dim(m1)
dim(df1)
dim(caja)

names(df1)

rm(m1)

ls()

dishes<-c('Mole','BBQ ribs','Paella','PB&J')
rating<-c(10,9,8,3)

food_I_cook<-data.frame(dishes,rating)

#------ Part 6: R Packages ------
#https://www.youtube.com/watch?v=6AOpomu9V6Q
install.packages('tidyverse')
install.packages("leaflet")

library(tidyverse)
library(leaflet)


leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=-98.502829112097, lat=29.422872578200067,  popup="This is our class building!")


#------ Part 7: Ask R for help ------

?sum
help('sum')

help(package='foreign')

??regression

#------ Part 8: Programming Challenge ------

#Create a data.frame object that is a list of top 5 favorite places to eat in San Antonio ordered decreasingly starting with the one you like the most. The data frame needs to have three columns: 1st: Ranking Number, 2nd: Name of the restaurant, 3: Type of Food. Type your code bellow.


