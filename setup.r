# Packages to install
to_install <- c("ggplot2", "plyr", "ggmap", "knitr", "maps", "lubridate")

# Looking at an object
str(to_install)

# Installing packages
install.packages(to_install)

# Removing an object
rm(to_install)

library(ggplot2)
library(ggmap)
library(plyr)
library(maps)
library(lubridate)