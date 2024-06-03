# titanic_unit-test.R

library(testthat)

# Function to calculate fare per person
calculate_fare_per_person <- function(total_fare, num_passengers) {
  if (num_passengers == 0) {
    stop("Number of passengers cannot be zero")
  }
  return(total_fare / num_passengers)
}

# Unit tests for calculate_fare_per_person function
test_that("calculate_fare_per_person calculates fare per person correctly", {
  expect_equal(calculate_fare_per_person(100, 4), 25)  # Total fare = 100, Number of passengers = 4
  expect_equal(calculate_fare_per_person(75, 3), 25)   # Total fare = 75, Number of passengers = 3
  expect_error(calculate_fare_per_person(100, 0), "Number of passengers cannot be zero")  # Division by zero
  expect_equal(calculate_fare_per_person(-100, 4), -25)  # Negative fare
  expect_equal(calculate_fare_per_person(100, -4), -25)  # Negative passengers
})

# Function for data preprocessing
preprocess_titanic_data <- function(titanic_data) {
  # Example preprocessing steps (e.g., imputation, feature engineering)
  # For demonstration, we just return the input data
  return(titanic_data)
}

# Unit tests for preprocess_titanic_data function
test_that("preprocess_titanic_data returns data unchanged", {
  sample_data <- data.frame(A = 1:3, B = c("x", "y", "z"))
  expect_equal(preprocess_titanic_data(sample_data), sample_data)
})

# Function for model training
train_titanic_model <- function(preprocessed_data) {
  # Example model training (e.g., train a logistic regression model)
  # For demonstration, we return a mock trained model
  trained_model <- "Trained Titanic model"
  return(trained_model)
}

# Unit tests for train_titanic_model function
test_that("train_titanic_model returns a trained model", {
  sample_data <- data.frame(A = 1:3, B = c("x", "y", "z"))
  model <- train_titanic_model(sample_data)
  expect_equal(model, "Trained Titanic model")
})

# Function for making survival predictions
predict_survival_on_titanic <- function(trained_model, new_data) {
  # Example prediction using the trained model
  # For demonstration, we return mock predictions
  predictions <- rep(0, nrow(new_data))
  return(predictions)
}

# Unit tests for predict_survival_on_titanic function
test_that("predict_survival_on_titanic returns correct number of predictions", {
  sample_data <- data.frame(A = 1:3, B = c("x", "y", "z"))
  model <- "Trained Titanic model"
  predictions <- predict_survival_on_titanic(model, sample_data)
  expect_equal(length(predictions), nrow(sample_data))
  expect_equal(predictions, rep(0, nrow(sample_data)))
})
