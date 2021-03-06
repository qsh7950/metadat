\name{search_dat}
\alias{search_dat}
\title{Searching data function}
\description{Searches all existing data files based on data descriptor fields of interest (e.g., name, concept, topic). Prompts users to choose one matching dataset of interest}
\usage{
search_dat(pattern, fields)
}
\arguments{
   \item{pattern}{Character string specifying the search pattern to match within the data files using fuzzy matching.}
   \item{fields}{The specific field or fields in the documentation to search. The default is the "concept" field.}
}
\details{
   \code{data_search} permits searching of the datasets based on a number of concept ideas. For example, users may want to simply find datasets that are used in ecology, psychology or social sciences. In which case, they can add these search terms in to find relevant datasets and open the specific help files associated with these data sets to explore more detail before loading them.
}
\author{
Daniel Noble \email{daniel.noble@anu.edu.au}
}
\keyword{file}