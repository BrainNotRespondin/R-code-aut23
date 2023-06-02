library(dplyr)
library(ggplot2)

# Import the data sets
sales <- read.csv("sales_ug.csv")
store_cities <- read.csv("store_cities.csv")

# Merge the data frame using store_id
merged_data <- sales %>%
  merge(store_cities, by = "store_id") 

# Calculate store size and how much revenue its made
store_size_revenue <- merged_data %>%
  group_by(store_size) %>%
    summarise(revenue = sum(revenue))

# Print the store size with revenue data frame
ggplot(store_size_revenue, aes(x=store_size, y=revenue, fill=store_size)) +
  geom_bar(stat="identity") +
  labs(title="Revenue depending on store size",
       x="Store ID",
       y="Total Revenue ($)") +
    theme(legend.position="none")
