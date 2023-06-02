library(dplyr)

# Import the data sets
sales <- read.csv("sales_ug.csv")
store_cities <- read.csv("store_cities.csv")

# Merge the data frame using store_id
merged_data <- sales %>%
  merge(store_cities, by = "store_id")

# Calculate the most common store types
most_common_storetypes <- merged_data %>%
  count(storetype_id) %>%
  arrange(desc(n))

# Calculate sales volume for store types
sales_volume <- merged_data %>%
  group_by(storetype_id) %>%
  summarise(total_sales = sum(sales)) %>%
  arrange(desc(total_sales))

# Calculate the total revenue for each store type
revenue <- merged_data %>%
  group_by(storetype_id) %>%
  summarise(total_revenue = sum(revenue)) %>% 
  arrange(desc(total_revenue))

# Print out the revenue for each store type
print(most_common_storetypes)

print(sales_volume)

print(revenue)
