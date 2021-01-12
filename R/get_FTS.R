#' @name get_FTS
#' @rdname get_FTS
#' @title Pull FTS data from API
#' @description Function to get flows from FTS.
#' https://api.hpc.tools/docs/v1/
#' for instance
#' https://api.hpc.tools/docs/v1/#public_fts_flow_get?year=2015&filterBy=destinationGlobalClusterCode:HEA&filterBy=destinationLocationID:114,115&groupby=organization&format=xml
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
#'                              year = "year=2020")
#' }
#'
#' @export
#'

get_FTS <- function(url = "https://api.hpc.tools",
                    ext = "/v1/public/fts/flow?",
                    boundary = "year=2020",
                    #filter = "&destinationCountryISO3:ABW,AIA,ARG,ASM,ATG,BES,BHS,BLM,BLZ,BMU,BOL,BRA,BRB,CAN,CHL,COL,CRI,CUB,CUW,CYM,DMA,DOM,ECU,FLK,GLP,GRD,GTM,GUF,GUY,HND,HTI,JAM,KNA,LCA,MAF,MEX,MSR,MTQ,NFK,NIC,PAN,PER,PRI,PRY,SGS,SLV,SPM,SUR,SXM,TCA,TTO,URY,USA,VCT,VEN,VGB,VIR",
                    #grouping = "&groupby=country",
                    limit = "&limit=1000"
)
{

  reference <- unhcrdatapackage::reference
  as.character(reference[ reference$UNHCRBureau == "Americas", c("iso_3")])
  
  #ABW,AIA,ARG,ASM,ATG,BES,BHS,BLM,BLZ,BMU,BOL,BRA,BRB,CAN,CHL,COL,CRI,CUB,CUW,CYM,DMA,DOM,ECU,FLK,GLP,GRD,GTM,GUF,GUY,HND,HTI,JAM,KNA,LCA,MAF,MEX,MSR,MTQ,NFK,NIC,PAN,PER,PRI,PRY,SGS,SLV,SPM,SUR,SXM,TCA,TTO,URY,USA,VCT,VEN,VGB,VIR
  
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
  path <- paste0(ext, 
                 boundary, 
                # filter, 
                # grouping,
                limit
                 )
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
                                                                    path))
                                           ))
  
  #names(ftsflow$data$flows)
  
  if ( !(is.na(grouping))) {
    flows <- ftsflow$data
  } else {
    flows <- ftsflow$data$flows
  }
  #str(flows)
  
  #flowsreport1 <- ftsflow$data$report1$fundingTotals$objects
  #flows1 <- data.frame(Reduce(rbind, report1funding))
  
  
  # df <- data.frame(matrix(unlist(ftsflow), nrow=length(flows), byrow=T))
  # df2 <- do.call(rbind.data.frame, flows)
  # df3 <- plyr::ldply (flows, data.frame)
  # df5 <- tibble::enframe(flows)
  flows_frame <- data.frame(Reduce(rbind, flows))
  
   
  return(flows_frame)

}
