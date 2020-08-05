# Exercise 5: large data sets: Baby Name Popularity Over Time

# Read in the female baby names data file found in the `data` folder into a 
# variable called `names`. Remember to NOT treat the strings as factors!
setwd("/Users/apolla/Dropbox/R Data/Data_Science/book-exercises/chapter-10-exercises/exercise-5/")
names <- read.csv('data/female_names.csv', stringsAsFactors = FALSE)

# Create a data frame `names_2013` that contains only the rows for the year 2013
names_2013 <- names[names$year == 2013,]

# What was the most popular female name in 2013?
most_popular_2013 <- names_2013[names_2013$prop == max(names_2013$prop), "name"]
names_2013[names_2013$prop == max(names_2013$prop), "name"]

# Write a function `most_popular_in_year` that takes in a year as a value and 
# returns the most popular name in that year
most_popular_in_year <- function(year){
  names_year <- names[names$year == year, ]
  most_popular_year <- names_year[names_year$prop == max(names_year$prop), "name"]
  most_popular_year
}

# What was the most popular female name in 1994?
most_popular_in_year(1994)

# Write a function `number_in_million` that takes in a name and a year, and 
# returns statistically how many babies out of 1 million born that year have 
# that name. 
# Hint: get the popularity percentage, and take that percentage out of 1 million.
number_in_million <- function(name, year){
  name_popularity <- names[names$year == year & names$name == name, "prop"]
  round(name_popularity * 1000000)
}

# How many babies out of 1 million had the name 'Laura' in 1995?
number_in_million("Laura", 1995)

# How many babies out of 1 million had your name in the year you were born?
number_in_million("Ari", 1974)

## Consider: what does this tell you about how easy it is to identify you with 
## just your name and birth year?

## Write a function for a given name, that returns the year it was most popular
most_popular_year <- function(name){
  name_selected <- names[names$name == name, ]
  most_popular_year <- name_selected[name_selected$prop == max(name_selected$prop), "year"]
  most_popular_year
}
most_popular_year("Ari")


## now add to the above function the number of babies, out of a million born that year 
## with that name and display it as a nice sentence
most_popular_year_with_frequency <- function(name){
  name_selected <- names[names$name == name, ]
  most_popular_year <- name_selected[name_selected$prop == max(name_selected$prop), "year"]
  year_prop <- name_selected[name_selected$prop == max(name_selected$prop), "prop"]
  num_born <- round(year_prop * 1000000)
  display <- paste0("The name", " ", name, " was most popular in the year", " ", most_popular_year, ", where", 
                    " ", num_born, " ", "babies per million births with that name were born.")
  display
}

most_popular_year_with_frequency("Ari")

## Show what year each of our names was the most popular
ds_names <- c("Emily", "Julia", "Michael", "Elizabeth", "Alex", "Christine", "Ari")
sapply(ds_names, most_popular_year)

## Show what year each of names was most popular and the number of births for that year
sapply(ds_names, most_popular_year_with_frequency)

