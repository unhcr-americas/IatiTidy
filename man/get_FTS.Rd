% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_FTS.R
\name{get_FTS}
\alias{get_FTS}
\title{Pull FTS data from API}
\usage{
get_FTS(boundary = "year=2020")
}
\arguments{
\item{boundary}{year or other to include}
}
\value{
list with flows_frame data frame with flows
}
\description{
Function to get flows from FTS.
https://api.hpc.tools/docs/v1/
for instance
https://api.hpc.tools/docs/v1/#public_fts_flow_get?year=2015&filterBy=destinationGlobalClusterCode:HEA&filterBy=destinationLocationID:114,115&groupby=organization&format=xml
}
\examples{
\dontrun{
data <- get_FTS(boundary = "year=2020")
}

}
