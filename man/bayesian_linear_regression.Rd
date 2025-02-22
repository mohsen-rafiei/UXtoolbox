% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bayesian_linear_regression.R
\name{bayesian_linear_regression}
\alias{bayesian_linear_regression}
\title{Bayesian Linear Regression for UX Predictions}
\usage{
bayesian_linear_regression(
  data,
  formula,
  n_samples = 10000,
  priors = normal(0, 1)
)
}
\arguments{
\item{data}{A data frame containing UX variables.}

\item{formula}{A formula specifying the regression model (e.g., \code{completion_time ~ experience + age}).}

\item{n_samples}{Number of posterior samples (default is 10000).}

\item{priors}{A list of priors for coefficients (default is weakly informative).}
}
\value{
A list containing the Bayesian regression model summary, credible intervals, and posterior distributions.
}
\description{
Performs Bayesian linear regression to model UX outcomes with credible intervals and effect size estimation.
}
\examples{
library(rstanarm)
test_data <- data.frame(
  completion_time = c(5.1, 6.3, 5.5, 4.8, 7.2, 6.0, 5.4, 4.9, 7.0, 6.5),
  experience = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
  age = c(25, 30, 28, 35, 40, 26, 32, 29, 38, 33)
)
bayesian_linear_regression(test_data, completion_time ~ experience + age)
}
