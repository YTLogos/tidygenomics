% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/subtract.R
\name{genome_subtract}
\alias{genome_subtract}
\title{Subtract one data frame from another based on chromosome, start and end.}
\usage{
genome_subtract(x, y, by = NULL)
}
\arguments{
\item{x}{A dataframe.}

\item{y}{A dataframe.}

\item{by}{A character vector with 3 entries which are used to match the chromosome, start and end column.
For example: \code{by=c("Chromosome"="chr", "Start"="start", "End"="end")}}
}
\value{
The subtracted dataframe of \code{x} and \code{y} with the new boundaries.
}
\description{
Subtract one data frame from another based on chromosome, start and end.
}
\examples{

library(dplyr)

x1 <- data.frame(id = 1:4, bla=letters[1:4],
                 chromosome = c("chr1", "chr1", "chr2", "chr1"),
                 start = c(100, 200, 300, 400),
                 end = c(150, 250, 350, 450))

x2 <- data.frame(id = 1:4, BLA=LETTERS[1:4],
                 chromosome = c("chr1", "chr2", "chr1", "chr1"),
                 start = c(120, 210, 300, 400),
                 end = c(125, 240, 320, 415))

j <- genome_subtract(x1, x2, by=c("chromosome", "start", "end"))
print(j)

}
