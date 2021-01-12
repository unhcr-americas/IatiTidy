## https://www.youtube.com/watch?v=Dlh9mQnFlLM&t=3s
# https://fts.unocha.org/sites/default/files/2020-10/improving-humanitarian-transparency-with-the-iati-and-the-un-ocha-fts.pdf

## https://api.hpc.tools/docs/v1/

# https://api.hpc.tools/docs/v1/#public_fts_flow_get?year=2015&filterBy=destinationGlobalClusterCode:HEA&filterBy=destinationLocationID:114,115&groupby=organization&format=xml

#' get_FTS
#'
#' Function to get flows from FTS.
#'
#' @param url URL for FTS API
#' @param ext  API endpoint
#' @param year year to include
#'
#' @return flows_frame data frame with flows
#'
#' @examples
#'\dontrun{
#' data <- get_FTS(url = "https://api.hpc.tools",
#'                              ext = "/v1/public/fts/flow?",
#'                              year = "year=2019,2020")
#' }
#'
#' @export
#'

get_FTS <- function(url = "https://api.hpc.tools",
                    ext = "/v1/public/fts/flow?",
                    year = "year=2019,2020"
)
{

  
  # # Load packages
  # library(tidyverse)
  # library(httr)
  # library(jsonlite)
  # library(lubridate)
  # library(rjson)


  ### API Call Parameter #####
  # url  <- "https://api.hpc.tools"
  # ext <- "/v1/public/fts/flow?"
  # year <-"year=2019,2020"
  # organizationAbbrev <-"organizationAbbrev=wfp,unicef"
  # countryISO3 <- ""
  path <- paste0(ext, year)
  #path <- "/v1/public/organization"


  raw.result <- httr::GET(url = url, path = path)
  
  #names(raw.result)
  if (httr::status_code(raw.result) == "200") { cat("successful API Query \n")} else { cat ("query did not work! \n")}
  
  # Process API request content
  #ftsflow <- rjson::fromJSON(httr::content(raw.result))
  
  # this.raw.content <- rawToChar(raw.result$content)
  # nchar(this.raw.content)
  # # That’s rather large. Let’s look at the first 100 characters
  # substr(this.raw.content, 1, 100)
  
  # Base URL path
  # base_url = "https://data.colorado.gov/resource/tv8u-hswn.json?"
  # full_url = paste0(base_url, "county=Boulder",
  #                   "&$where=age between 20 and 40",
  #                   "&$select=year,age,femalepopulation")
  # 
  # data1 <- RCurl::getForm(base_url, county = "Boulder", age="age between 20 and 40")
  
  
  # get data as binary from the specified url using RCurl
  #data <- RCurl::getURL(utils::URLencode(full_url))
  
  
  # encode the URL to replace all spaces with the ascii value for a space which is %20.
  # and Convert JSON to data frame
  ftsflow <- rjson::fromJSON(RCurl::getURL(utils::URLencode(paste0(url,
                                                                    path))))
  
  #names(ftsflow$data$flows)
  flows <- ftsflow$data$flows
  #str(flows)
  
  # df <- data.frame(matrix(unlist(ftsflow), nrow=length(flows), byrow=T))
  # df2 <- do.call(rbind.data.frame, flows)
  # df3 <- plyr::ldply (flows, data.frame)
  # df5 <- tibble::enframe(flows)
  flows_frame <- data.frame(Reduce(rbind, flows))
  
   
  return(flows_frame)

}
