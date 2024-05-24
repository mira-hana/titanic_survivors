# Create a sample Titanic dataset
titanic_data <- data.frame(
  PassengerId = 1:10,
  Pclass = rep(3, 10),
  Name = c("Braund, Mr. Owen Harris", "Cumings, Mrs. John Bradley (Florence Briggs Thayer)", "Heikkinen, Miss. Laina", "Futrelle, Mrs. Jacques Heath (Lily May Peel)", "Allen, Mr. William Henry", "Moran, Mr. James", "McCarthy, Mr. Timothy J", "Palsson, Master. Gosta Leonard", "Johnson, Mrs. Oscar W (Elisabeth Vilhelmina Berg)", "Nasser, Mrs. Nicholas (Adele Achem)"),
  Sex = c("male", "female", "female", "female", "male", "male", "male", "male", "female", "female"),
  Age = c(22, 38, 26, 35, 35, NA, 54, 2, 27, 14),
  SibSp = c(1, 1, 0, 1, 0, 0, 0, 3, 0, 1),
  Parch = c(0, 0, 0, 0, 0, 0, 0, 1, 2, 0),
  Ticket = c("A/5 21171", "PC 17599", "STON/O2. 3101282", "113803", "373450", "330877", "17463", "349909", "347742", "237736"),
  Fare = c(7.25, 71.28, 7.92, 53.1, 8.05, 8.46, 51.86, 21.07, 11.13, 30.07),
  Cabin = c(NA, "C85", NA, "C123", NA, NA, "E46", NA, NA, NA),
  Embarked = c("S", "C", "S", "S", "S", "Q", "S", "S", "S", "C"),
  Survived = c(0, 1, 1, 1, 0, 0, 0, 1, 1, 1)
)

# Print the Titanic dataset
print(titanic_data)
