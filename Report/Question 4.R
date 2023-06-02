# Load required library
library(dplyr)

# Step 1: Load the sales data
sales_data <- read.csv("sales_ug.csv")

# Step 2: Identify the different levels of promotion for each promotion type


# Step 3: Analyze the effectiveness of promotions on sales
promo_sales <- sales_data %>%
  group_by(promo_type_1, promo_bin_1) %>%
  summarize(total_sales = sum(sales))

print(promo_sales)
