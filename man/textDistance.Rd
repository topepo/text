% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/3_1_textSimilarity.R
\name{textDistance}
\alias{textDistance}
\title{Compute the semantic distance between two text variables.}
\usage{
textDistance(x, y, method = "euclidean")
}
\arguments{
\item{x}{Word embeddings (from textEmbed).}

\item{y}{Word embeddings (from textEmbed).}

\item{method}{Character string describing type of measure to be computed; default is "euclidean" (see also
measures from stats:dist() including "maximum", "manhattan", "canberra", "binary" and "minkowski".}
}
\value{
A vector comprising semantic distance scores.
}
\description{
Compute the semantic distance between two text variables.
}
\examples{
library(dplyr)
distance_scores <- textDistance(
  word_embeddings_4$harmonytext,
  word_embeddings_4$satisfactiontext
)
comment(distance_scores)
}
\seealso{
see  \code{\link{textSimilarity}}, \code{\link{textSimilarityNorm}} and \code{\link{textSimilarityTest}}
}
