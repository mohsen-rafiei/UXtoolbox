% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/factor_analysis.R
\name{factor_analysis}
\alias{factor_analysis}
\title{Factor Analysis for UX Data Exploration}
\usage{
factor_analysis(data, n_factors = 2, rotation = "varimax")
}
\arguments{
\item{data}{A data frame with numeric UX variables.}

\item{n_factors}{The number of factors to extract (default is 2).}

\item{rotation}{The rotation method for factor loadings (default is "varimax").}
}
\value{
A list containing factor loadings, uniqueness scores, model fit indices, and cumulative variance explained.
}
\description{
Performs Factor Analysis (FA) to identify latent factors in UX datasets, aiding in dimensionality reduction and insight discovery.
Provides factor loadings, uniqueness scores, and model fit indices.
}
\examples{
library(psych)
test_data <- data.frame(
  task_time = c(5, 10, 15, 20, 25),
  errors = c(1, 2, 1, 3, 2),
  clicks = c(20, 25, 22, 30, 28),
  satisfaction = c(4, 5, 3, 4, 2)
)
factor_analysis(test_data, n_factors = 2)
}
