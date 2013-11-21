# Presbyterian data
pres <- read.csv("weber-1927.csv")

# Add up the baptisms and received totals
baptisms_df <- data.frame(pres$baptisms_adults, pres$baptisms_infants,
                          pres$baptisms_unspecified)
received_df <- data.frame(pres$received_certificate, pres$received_exam,
                          pres$received_unspecified)

baptisms_total <- rowSums(baptisms_df, na.rm = T)
received_total <- rowSums(received_df, na.rm = T)

all_new_members_df <- data.frame(baptisms_total, received_total)
all_new_members <- rowSums(all_new_members_df, na.rm =T)

baptisms_total[baptisms_total == 0] <- NA
received_total[received_total == 0] <- NA
all_new_members[all_new_members == 0] <- NA

pres <- transform(pres, baptisms_total = baptisms_total)
pres <- transform(pres, received_total = received_total)
pres <- transform(pres, all_new_members = all_new_members)
                     
# Add the population data
pop <- read.csv("annual-national-population.csv")
colnames(pop) <- c("year", "armed_forces", "population", "civilian")
pop$armed_forces <- NULL
pop$civilian <- NULL
pop$population <- pop$population * 1e3
pres <- join(pres, pop, by="year")

rm(baptisms_df, received_df, baptisms_total, received_total, pop,
   all_new_members_df, all_new_members)