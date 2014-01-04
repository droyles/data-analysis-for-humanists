# Comments begin with # and are ignored by R
# Use them often!

# Variables hold data
a = 10
a

b = 20
b

a = b
a
b

# Variables can hold more complicated kinds of data
x <- "This is a string."

y <- c(1, 2, 3, 4, 5)

# Functions do something to data.
# You can identify them with the parentheses 
sum(y)

# Functions have arguments that go inside the parentheses
add <- function(argument1, argument2) {
  return argument1 + argument2
}

# What should this equal?
add(1, 2)

# Try writing a function that subtracts. Here's a start

subtract <- function(arg1, arg2) {

}

subtract(2, 1)

# Reading a data frame from a file
missions <- read.csv("paulist-summary.csv")

# Structure of a data frame
?str
str(missions)

# Summary of a data frame
summary(missions)

# Summary of single variable
missions$year_start
summary(missions$converts)

# Base graphics plot with points
plot(missions$year_start, missions$missions_total)

# Base graphics plot with lines
plot(missions$year_start, missions$missions_total, "l")

# Simple ggplot
library(ggplot2)

ggplot(data = missions,
       aes(x = year_start, y = missions_total)) +
  geom_line()
