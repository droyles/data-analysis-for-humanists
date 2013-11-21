# Reading a data frame from a file
missions <- read.csv("paulist-summary.csv")

# Structure of a data frame
str(missions)

# Summary of a data frame
summary(missions)

# Summary of single variable
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