titanic <- read.csv("https://raw.githubusercontent.com/datasciencedojo/datasets/master/titanic.csv")

# Summary statistics
summary(titanic_data$Age)
summary(titanic_data$Fare)

# Counts and proportions
table(titanic_data$Pclass)
table(titanic_data$Sex)
table(titanic_data$Survived)
prop.table(table(titanic_data$Survived))

# Correlation
cor(titanic_data[, c("Pclass", "Age", "Fare")])

# Group-wise statistics
aggregate(Age ~ Survived, data = titanic_data, FUN = mean)
aggregate(Fare ~ Pclass, data = titanic_data, FUN = median)

# Frequency tables
table(titanic_data$Sex, titanic_data$Survived)
table(titanic_data$Embarked, titanic_data$Survived)
