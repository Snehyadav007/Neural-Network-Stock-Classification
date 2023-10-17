# Dividend Classification Using Neural Network in R


This repository contains an R-based implementation of a neural network for classifying dividend payments. The model is trained on historical financial data to predict whether a given company is likely to issue dividends in the future. This README file provides an overview of the project, how to set it up, and how to use it.

## Table of Contents
- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Dataset](#dataset)
- [Training](#training)
- [Inference](#inference)
- [Evaluation](#evaluation)
- [Contributing](#contributing)
- [License](#license)

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
To train the neural network, use the `train.R` script. You can specify hyperparameters, network architecture, and the path to your dataset.

### Inference
You can use the trained model for inference by running the `predict.R` script. Provide a financial data sample, and the model will predict whether the company is likely to issue dividends.

### Evaluation
To evaluate the model's performance, use the `evaluate.R` script. This script computes various evaluation metrics like accuracy, precision, recall, and F1-score.

## Contributing
Contributions are welcome! If you find any issues, have feature requests, or want to improve the project, please open an issue or submit a pull request.

## License
This project is licensed under the MIT License. See the `LICENSE` file for details.
