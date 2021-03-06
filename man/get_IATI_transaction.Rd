% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_IATI_transaction.R
\name{get_IATI_transaction}
\alias{get_IATI_transaction}
\title{Pull Transaction data from IATI datastore API}
\usage{
get_IATI_transaction(
  url = "https://iatidatastore.iatistandard.org/search/transaction?q=",
  sector_vocabulary = "sector_vocabulary:(10 1 9 7)",
  country = c("Colombia"),
  daterange_actual = c("2018-01-01T00:00:00Z", "2021-01-01T00:00:00Z"),
  daterange_planned = c("2018-01-01T00:00:00Z", "2021-01-01T00:00:00Z")
)
}
\arguments{
\item{url}{URL for websites containing IATI-compliant dataset. Default is 
"https://iatidatastore.iatistandard.org/search/activity?q="}

\item{sector_vocabulary}{sector typology - Default is DAC, Humanitarian and SDG
sector_vocabulary:(10 1 9 7)}

\item{country}{list of Country or single country to pull data about}

\item{daterange_actual}{list with actual start and end date of activities}

\item{daterange_planned}{list with planned start and end date of activities}
}
\value{
transaction Parsed content on activities from IATI-compliant datasets.
}
\description{
Function to get activities endpoint from IATI-compliant dataset.
}
\examples{
\dontrun{
data <- get_IATI_transaction(url = "https://iatidatastore.iatistandard.org/search/activity?q=",
                       sector_vocabulary = "sector_vocabulary:(10 1 9 7)"
             country = c("Colombia"),
             daterange_actual = c("2018-01-01T00:00:00Z", "2021-01-01T00:00:00Z"),
             daterange_planned = c("2018-01-01T00:00:00Z", "2021-01-01T00:00:00Z")
 }

}
