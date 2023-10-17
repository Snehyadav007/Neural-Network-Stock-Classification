# Dividend Classification Using Neural Network in R


This repository contains an R-based implementation of a neural network for classifying dividend payments. The model is trained on historical financial data to predict whether a given company is likely to issue dividends in the future. This README file provides an overview of the project, how to set it up, and how to use it.

## Table of Contents
- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Dataset](#dataset)
- [Training](#training)
- [Usage](#usage)
- [Inference](#inference)
- [Code Evaluation](#Codeevaluation)

## Introduction

Dividend classification is an important task in financial analysis. This project aims to classify companies into two categories: those that are likely to pay dividends and those that are not. To achieve this, we use a neural network model trained on historical financial data.

## Prerequisites

Before you begin, make sure you have the following installed:

- R (version 4.0 or higher)
- RStudio (recommended for an integrated development environment)

## Installation

https://posit.co/download/rstudio-desktop/

### Dataset
You can provide your own financial dataset in CSV format or use the sample dataset provided. Ensure that your dataset contains the necessary columns, such as financial features and the binary label for dividend/no dividend.

### Training
1. Normalization: The code normalizes the data to a range between 0 and 1.
2. Training and Test Data: It splits the dataset into training and test sets.
3. Neural Network: The neural network is created and trained using the "neuralnet" package.
4. Testing the Neural Network: The trained neural network is tested on the test dataset, and the results are stored in a data frame.
5. Rounding Off Results: The predicted results are rounded for evaluation.
6. Decision Matrix: A confusion matrix is created to evaluate the model's performance.

### Usage

Ensure you have R (version 4.0 or higher) and the "neuralnet" package installed.

Clone this repository to your local machine:
git clone https://github.com/your-username/dividend-classification-r.git
Navigate to the project directory and open the R script in your R environment.

Modify the code to fit your dataset and run it to train, test, and evaluate the neural network.

### Inference
You can use the trained model for inference by running the `predict.R` script. Provide a financial data sample, and the model will predict whether the company is likely to issue dividends.

### Code Evaluation
a. Data Loading: The code starts by setting the working directory and loading a financial dataset from a CSV file named "dividendinfo.csv". It's important to ensure that the dataset is well-preprocessed and structured, containing the necessary columns for training and testing the neural network.

b. Normalization: The data is normalized using the normalize function. Normalization is a crucial step to ensure that all features have the same scale, which can improve the training process of the neural network. The code effectively scales the features to a range between 0 and 1.

c. Training and Test Data Split: The dataset is divided into a training set (first 160 rows) and a test set (remaining rows). This is a standard practice in machine learning to assess the model's performance on unseen data.

d. Neural Network Model: The code uses the "neuralnet" package to create and train a neural network model. The model is defined to predict the "dividend" variable using specific financial features (fcfps, earnings_growth, de, mcap, current_ratio). The choice of architecture with two hidden layers (2,2) is appropriate for this task, but hyperparameter tuning may further optimize the model's performance.

e. Testing and Prediction: The trained neural network is tested on the test dataset, and the results are stored in a data frame. This allows for the evaluation of the model's predictions against actual labels.

f. Rounding Off Results: The predicted results are rounded for evaluation. Rounding the results to integer values (0 or 1) is suitable for binary classification tasks.

g. Decision Matrix (Confusion Matrix): The code generates a confusion matrix to assess the model's performance. The confusion matrix helps in calculating various evaluation metrics such as accuracy, precision, recall, and F1-score.

