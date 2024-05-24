titanic <- read.csv("https://raw.githubusercontent.com/datasciencedojo/datasets/master/titanic.csv")

head(titanic)   # View the first few rows
summary(titanic)   # Summary statistics
str(titanic)   # Structure of the dataset
dim(titanic)   # Number of rows and columns

colSums(is.na(titanic))   # Check for missing values in each column

# Example: Extract titles from names
titanic$Title <- gsub('(.*, )|(\\..*)', '', titanic$Name)

library(ggplot2)
# Example: Survival by passenger class
ggplot(titanic, aes(x = Pclass, fill = factor(Survived))) +
  geom_bar(position = "dodge") +
  labs(title = "Survival by Passenger Class", x = "Passenger Class", y = "Count") +
  scale_fill_discrete(name = "Survived", labels = c("No", "Yes"))

# Example: Survival rate by gender
table(titanic$Sex, titanic$Survived)