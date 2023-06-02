#sets working directory to find file
setwd("D:/Github Respositories/R-code-aut23/Report")

#load the library
library(ggplot2)
library(dplyr)

# Read the data
sales_data <- read.csv("sales_ug.csv")

# Calculate total revenue for each store
total_revenue <- sales_data %>%
  group_by(store_id) %>%
  summarise(total_revenue = sum(revenue))

# Plot the results
ggplot(total_revenue, aes(x=store_id, y=total_revenue, fill=store_id)) +
  geom_bar(stat="identity") +
  labs(title="Total Revenue Per Store Over Seven Days",
       x="Store ID",
       y="Total Revenue ($)") +
         theme(legend.position="none")
    


