# Load necessary libraries
library(ggplot2)

# Load the Titanic dataset
titanic <- read.csv("https://raw.githubusercontent.com/datasciencedojo/datasets/master/titanic.csv")

# View the first few rows
head(titanic)

# Summary statistics
summary(titanic)

# Structure of the dataset
str(titanic)

# Number of rows and columns
dim(titanic)

# Check for missing values in each column
colSums(is.na(titanic))

# Example: Extract titles from names
# The regex pattern used here should correctly extract titles like 'Mr', 'Mrs', 'Miss', etc.
titanic$Title <- gsub('(.*, )|(\\..*)', '', titanic$Name)

# Verify the extracted titles
table(titanic$Title)

# Example: Survival by passenger class
ggplot(titanic, aes(x = Pclass, fill = factor(Survived))) +
  geom_bar(position = "dodge") +
  labs(title = "Survival by Passenger Class", x = "Passenger Class", y = "Count") +
  scale_fill_discrete(name = "Survived", labels = c("No", "Yes"))

# Example: Survival rate by gender
table(titanic$Sex, titanic$Survived)
