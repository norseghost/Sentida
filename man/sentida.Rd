% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sentida.R
\name{sentida}
\alias{sentida}
\title{Sentiment scores a string}
\usage{
sentida(string)
}
\arguments{
\item{string:}{a text string}
  
}
\value{
The function returns the sum of sentiment.
}
\description{
sentida sentiment-scores a string of text. 
}
\examples{
# Examples of sentiment scoring

library(sentida)

# Score danish words
sentida("gud bevare Danmark")
}
