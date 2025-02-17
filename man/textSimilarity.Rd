% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/3_1_textSimilarity.R
\name{textSimilarity}
\alias{textSimilarity}
\title{Compute the semantic similarity between two text variables.}
\usage{
textSimilarity(x, y, method = "cosine")
}
\arguments{
\item{x}{Word embeddings from textEmbed.}

\item{y}{Word embeddings from textEmbed.}

\item{method}{Character string describing type of measure to be computed. Default is "cosine" (see also
measures from textDistance() (which here is computed as 1 - textDistance) including "euclidean", "maximum",
"manhattan", "canberra", "binary" and "minkowski").}
}
\value{
A vector comprising semantic similarity scores.
}
\description{
Compute the semantic similarity between two text variables.
}
\examples{
library(dplyr)
similarity_scores <- textSimilarity(
  word_embeddings_4$harmonytext,
  word_embeddings_4$satisfactiontext
)
comment(similarity_scores)
}
\seealso{
see \code{\link{textDistance}}, \code{\link{textSimilarityNorm}} and \code{\link{textSimilarityTest}}
}
