# titanic_analysis.R

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
titanic$Title <- gsub('(.*, )|(\\..*)', '', titanic$Name)

# Plot: Survival by passenger class
p1 <- ggplot(titanic, aes(x = Pclass, fill = factor(Survived))) +
  geom_bar(position = "dodge") +
  labs(title = "Survival by Passenger Class", x = "Passenger Class", y = "Count") +
  scale_fill_discrete(name = "Survived", labels = c("No", "Yes"))

# Display the plot
print(p1)

# Plot: Survival rate by gender
p2 <- ggplot(titanic, aes(x = Sex, fill = factor(Survived))) +
  geom_bar(position = "dodge") +
  labs(title = "Survival by Gender", x = "Gender", y = "Count") +
  scale_fill_discrete(name = "Survived", labels = c("No", "Yes"))

# Display the plot
print(p2)

# Additional example plots
# Plot: Age distribution by survival
p3 <- ggplot(titanic, aes(x = Age, fill = factor(Survived))) +
  geom_histogram(binwidth = 5, position = "dodge") +
  labs(title = "Age Distribution by Survival", x = "Age", y = "Count") +
  scale_fill_discrete(name = "Survived", labels = c("No", "Yes"))

# Display the plot
print(p3)

# Plot: Fare distribution by survival
p4 <- ggplot(titanic, aes(x = Fare, fill = factor(Survived))) +
  geom_histogram(binwidth = 10, position = "dodge") +
  labs(title = "Fare Distribution by Survival", x = "Fare", y = "Count") +
  scale_fill_discrete(name = "Survived", labels = c("No", "Yes"))

# Display the plot
print(p4)
