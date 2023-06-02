setwd("D:/Github Respositories/R-code-aut23/Report")

#Load Library
library(dplyr)

# Load the sales and product hierarchy datasets
sales <- read.csv("sales_ug.csv")
product_hierarchy <- read.csv("product_hierarchy.csv")

# Merge the sales and product hierarchy datasets
merged_data <- merge(sales, product_hierarchy, by = "product_id")

# Calculate total sales quantity and revenue for each product type
product_type_summary <- merged_data %>%
  group_by(hierarchy1_id) %>%
  summarise(
    Subtypes = n_distinct(hierarchy2_id),
      Products = n_distinct(product_id),
        Sales_Quantity = sum(sales),
          Revenue = sum(revenue)
            ) %>%
              arrange(desc(Sales_Quantity))

# Display the product type summary table
print(product_type_summary)

