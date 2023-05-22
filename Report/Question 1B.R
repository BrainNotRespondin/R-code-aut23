#sets working directory to find file
setwd("D:/Github Respositories/R-code-aut23/Report")

#load the library
library(ggplot2)

# Read the data
sales_data <- read.csv("sales_ug.csv")

# Calculate total revenue for each store
total_revenue <- aggregate(sales_data$revenue, 
                  by=list(StoreID=sales_data$store_id), 
                    sum)

# Plot the results
ggplot(total_revenue, aes(x=StoreID, y=x, fill=StoreID)) +
  geom_bar(stat="identity") +
  theme_minimal() +
  labs(title="Total Revenue Per Store Over Seven Days",
       x="Store ID",
       y="Total Revenue ($)") +
         theme(legend.position="none")
    


