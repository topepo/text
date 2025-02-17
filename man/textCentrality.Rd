% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/4_1_textPlotCentrality.R
\name{textCentrality}
\alias{textCentrality}
\title{Compute semantic similarity score between single words' word embeddings
and the aggregated word embedding of all words.}
\usage{
textCentrality(
  words,
  word_embeddings,
  single_word_embeddings = single_word_embeddings_df,
  method = "cosine",
  aggregation = "mean",
  min_freq_words_test = 0
)
}
\arguments{
\item{words}{Word or text variable to be plotted.}

\item{word_embeddings}{Word embeddings from textEmbed for the words to be plotted
(i.e., the aggregated word embeddings for the "words" variable).}

\item{single_word_embeddings}{Word embeddings from textEmbed for individual words
(i.e., the decontextualized word embeddings).}

\item{method}{Character string describing type of measure to be computed. Default is "cosine" (see also
measures from textDistance() (which here is computed as 1 - textDistance) including "euclidean", "maximum",
"manhattan", "canberra", "binary" and "minkowski").}

\item{aggregation}{Method to aggregate the word embeddings
(default = "mean"; see also "min", "max" or "[CLS]").}

\item{min_freq_words_test}{Option to  select words that have at least occurred a specified
number of times (default = 0); when creating the semantic similarity
scores.}
}
\value{
A dataframe with variables (e.g., including semantic similarity, frequencies)
for the individual words that are used for the plotting in the textCentralityPlot function.
}
\description{
Compute semantic similarity score between single words' word embeddings
and the aggregated word embedding of all words.
}
\examples{
\dontrun{
df_for_plotting <- textCentrality(
  words = Language_based_assessment_data_8$harmonywords,
  word_embeddings = word_embeddings_4$harmonywords,
  single_word_embeddings = word_embeddings_4$singlewords_we
)
df_for_plotting
}
}
\seealso{
see \code{\link{textCentralityPlot}}  \code{\link{textProjection}}
}
