library(dplyr)

# Load the sales and product hierarchy datasets
sales <- read.csv("sales_ug.csv")
product_hierarchy <- read.csv("product_hierarchy.csv")

# Merge the sales and product hierarchy datasets based on the "product id" column
merged_data <- merge(sales, product_hierarchy, by = "product_id", all.x = TRUE)

# Filter the merged data for the "h00" product type and calculate the total revenue
revenue_h00 <- merged_data %>%
  filter(`hierarchy1_id` == "h00") %>%
  summarize(total_revenue = sum(revenue))

# Print the revenue of the "h00" product type
print(revenue_h00)
