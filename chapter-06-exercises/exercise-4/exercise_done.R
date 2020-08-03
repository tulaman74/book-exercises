# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(x,y) {
  x_length <- nchar(x)
  y_length <- nchar(y)
  if (x_length >= 2*y_length){
    status <- "True"
  } else if (y_length >= 2*x_length){
    status <-"true"
  } else {
    status <-"false"
  }
  status
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!



# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"

describe_difference <- function(x,y) {
  x_length <- nchar(x)
  y_length <- nchar(y)
  if (x_length > y_length) {
    str_difference <- x_length - y_length
    output <- paste("Your first string is longer by", str_difference, "characters")
  } else if (y_length > x_length) {
    str_difference <- y_length - x_length
    output <- paste("Your second string is longer by", str_difference, "characters")
  } else if (x_length == y_length) {
    output <- "Your strings are the same length!"
  } else
    output <- "error"
  output
}
  
# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1

describe_difference("hello","goodbye")
