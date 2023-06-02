setwd("D:/Github Respositories/R-code-aut23/Report")

# Load the Library
library(dplyr)

# Read the sales data
sales_data <- read.csv("sales_ug.csv")

# Compute total revenue by store and date
daily_revenue <- sales_data %>%
  group_by(store_id, date) %>%
  summarise(total_revenue = sum(revenue))

# Print total revenue by store and date
print(daily_revenue)

