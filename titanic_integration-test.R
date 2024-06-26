# titanic_integration-test.R

library(testthat)
library(ggplot2)

# Function for data preprocessing
preprocess_titanic_data <- function(titanic_data) {
  # Perform data preprocessing steps (e.g., imputation, feature engineering)
  # For simplicity, we'll just return the input data for demonstration
  return(titanic_data)
}

# Function for model training
train_titanic_model <- function(preprocessed_data) {
  # Train a mock model using the preprocessed data
  # For demonstration, we'll just return a placeholder model
  return("Trained Titanic model")
}

# Function for making survival predictions
predict_survival_on_titanic <- function(trained_model, new_data) {
  # Make survival predictions using the trained model
  # For demonstration, we'll just return a vector of zeros as placeholder predictions
  return(rep(0, nrow(new_data)))
}

# Integration test for Titanic data analysis pipeline
test_that("data analysis pipeline runs without error and generates plots", {
  # Step 1: Data preprocessing
  titanic_data <- data.frame(
    PassengerId = 1:10,
    Pclass = rep(3, 10),
    Age = c(25, 30, 35, NA, 20, 40, 45, 50, 55, 60),
    Sex = c("male", "female", "male", "female", "male", "female", "male", "female", "male", "female"),
    Survived = c(0, 1, 1, 0, 1, 0, 0, 1, 1, 0)
  )
  preprocessed_titanic_data <- preprocess_titanic_data(titanic_data)
  
  # Step 2: Model training
  titanic_model <- train_titanic_model(preprocessed_titanic_data)
  
  # Step 3: Prediction
  predictions <- predict_survival_on_titanic(titanic_model, new_data = preprocessed_titanic_data)
  
  # Check if predictions have the correct length
  expect_equal(length(predictions), nrow(preprocessed_titanic_data))
  
  # Since the mock prediction function returns all zeros, update the expectation accordingly
  expect_equal(predictions, rep(0, nrow(preprocessed_titanic_data)))
  
  # Plotting (for visual inspection)
  p <- ggplot(preprocessed_titanic_data, aes(x = Age, fill = factor(Survived))) +
    geom_histogram(binwidth = 5, position = "dodge") +
    labs(title = "Age Distribution by Survival (Test Data)", x = "Age", y = "Count") +
    scale_fill_discrete(name = "Survived", labels = c("No", "Yes"))
  
  # Save the plot to a file
  ggsave("age_distribution_by_survival_test_data.png", plot = p)
})
