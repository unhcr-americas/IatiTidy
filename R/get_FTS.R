#' @name get_FTS
#' @rdname get_FTS
#' @title Pull FTS data from API
#' @description Function to get flows from FTS.
#' https://api.hpc.tools/docs/v1/
#' for instance
#' https://api.hpc.tools/docs/v1/#public_fts_flow_get?year=2015&filterBy=destinationGlobalClusterCode:HEA&filterBy=destinationLocationID:114,115&groupby=organization&format=xml
#'
#' @param boundary year or other to include
#'
#' @return list with flows_frame data frame with flows
#'
#' @examples
#'\dontrun{
#' data <- get_FTS(boundary = "year=2020")
#' }
#'
#' @export
#'

get_FTS <- function(boundary = "year=2020")
  
{
  #filter = "&destinationCountryISO3:ABW,AIA,ARG,ASM,ATG,BES,BHS,BLM,BLZ,BMU,BOL,BRA,BRB,CAN,CHL,COL,CRI,CUB,CUW,CYM,DMA,DOM,ECU,FLK,GLP,GRD,GTM,GUF,GUY,HND,HTI,JAM,KNA,LCA,MAF,MEX,MSR,MTQ,NFK,NIC,PAN,PER,PRI,PRY,SGS,SLV,SPM,SUR,SXM,TCA,TTO,URY,USA,VCT,VEN,VGB,VIR",
  #grouping = "&groupby=country",
  
  
  preurl = "https://api.hpc.tools"
  ext = "/v1/public/fts/flow?"
                      
  url <- paste0(preurl, 
                 ext, 
                 boundary, 
                 # filter, 
                 # grouping,
                 "&limit=1000"
  )
  
    flows <- tibble() 
    
    while(!is_null(url)) {
      tmp <- jsonlite::fromJSON(url)
      url <- tmp$meta$nextLink
      flows <- flows %>% bind_rows(tmp$data$flows)
    }
    
    flows.source <- 
      flows %>% 
      select(flowid  = id, sourceObjects) %>% 
      unnest(cols = c(sourceObjects)) %>% 
      mutate(across(c(organizationTypes, organizationSubTypes), as.character))
    flows.source <- merge(y = flows.source, x = flows, by.y = "flowid",by.x = "id")
    flows$sourceObjects <- NULL
    
    flows.destination <- 
      flows %>% 
      select(flowid = id, destinationObjects) %>% 
      unnest(cols = c(destinationObjects)) %>% 
      mutate(across(c(organizationTypes, organizationSubTypes), as.character))
    flows.destination <- merge(x = flows.destination, y = flows, by.x = "flowid",by.y = "id" )
    flows$destinationObjects <- NULL
    
    flows.reports <- 
      flows %>% 
      select(flowid  = id, reportDetails) %>% 
      unnest(cols = c(reportDetails))
    flows.reports <- merge(x = flows.reports, y = flows, by.x = "flowid",by.y = "id" )
    flows$reportDetails <- NULL
    
    flows.child <- 
      flows %>% 
      select(flowid  = id, childFlowIds) %>% 
      unnest(cols = c(childFlowIds))
    
    flows.keywords <- 
      flows %>% 
      select(flowid  = id, keywords) %>% 
      unnest(cols = c(keywords))  
    
    #levels(as.factor(flows.keywords$keywords))
    
    return(list(flows,
                flows.destination,
                flows.source, 
                flows.reports, 
                flows.child, 
                flows.keywords))
      return(flows_frame)
    
}


#reference <- unhcrdatapackage::reference
#as.character(reference[ reference$UNHCRBureau == "Americas", c("iso_3")])

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
# path <- paste0(ext, 
#                boundary, 
#                # filter, 
#                # grouping,
#                limit
# )

#path <- "/v1/public/organization"
#raw.result <- httr::GET(url = url, path = path)

#names(raw.result)
#if (httr::status_code(raw.result) == "200") { cat("successful API Query \n")} else { cat ("query did not work! \n")}

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

## API Call ######
# encode the URL to replace all spaces with the ascii value for a space which is %20.
# and Convert JSON to data frame
#ftsflow <- rjson::fromJSON(RCurl::getURL(utils::URLencode(paste0(url,path))))

  ### Tidy Results ##########
  #names(ftsflow$data$flows)
  # if ( !(is.na(grouping))) {
  #   flows <- ftsflow$data
  # } else { }
  #flows <- ftsflow$data$flows
  
  #str(flows)
  
  # flows_frame <- data.frame(Reduce(rbind, flows))
  # 
  # colflow <- c( "id", "amountUSD", "budgetYear" , "childFlowIds" ,             
  #               "contributionType", "createdAt", "date", "decisionDate",              
  #               "description" , "grandBargainEarmarkingType", "exchangeRate", 
  #               "firstReportedDate" , "flowType", "keywords", "newMoney" ,
  #               "originalAmount", "originalCurrency" , "method"  ,
  #               "parentFlowId" , "status" , "updatedAt", "versionId" , 
  #               "sourceObjects", "destinationObjects",
  #               "boundary", "onBoundary", "reportDetails", "refCode" )
  # 
  # flows_frame0 <- tidyr::unnest_wider(flows,colflow)
  
  ## other test to convert list to dataframe 
  # df <- data.frame(matrix(unlist(ftsflow), nrow=length(flows), byrow=T))
  # df2 <- do.call(rbind.data.frame, flows)
  # df3 <- plyr::ldply (flows, data.frame)
  # df5 <- tibble::enframe(flows)
  #flows_framet <- data.frame(Reduce(dplyr::bind_rows, flows))
  
  
  ### Check if there's more.... 
  # querysize <- ftsflow$meta$count
  # 
  # if( querysize > 1000) {
  #   pagenum <- (querysize / 1000)+1
  #   cat(paste0("The query output is ",querysize ," and exceeds the API limit. We will perform multiple call.\n"))
  #   
  #   for (i in 2:pagenum){
  #     limit <- paste0( "&limit=1000&page=", i)
  #     path <- paste0(ext, 
  #                    boundary, 
  #                    # filter, 
  #                    # grouping,
  #                    limit)
  #     cat ( paste0("Call to the API #", i))
  #     ftsflow1 <- rjson::fromJSON(RCurl::getURL(utils::URLencode(paste0(url,path))))
  #     
  #     flows_frame1 <- data.frame(Reduce(rbind, ftsflow1$data$flows))
  #     
  #     # names(flows_frame1)
  #     
  #     flows_frame <- dplyr::bind_rows(flows_frame, flows_frame1)
  #     #flows_frame <- rbind(flows_frame, flows_frame1)
  #     rm(flows_frame1)
  #     
  #   }
  #   
  # }
  # names(flows_frame)
  # class(flows_frame)
  # 
  # ## Build node network table..
  # flows_frame$childFlowIds
  # 
  # ## Build sub frame for the 3 sublist
  # # flows_frame$sourceObjects
  # # flows_frame$destinationObjects
  # # flows_frame$reportDetails
  # 
  # source <- data.frame(Reduce(rbind, flows_frame[ 1, c("sourceObjects")]))
  # source$idfts <- as.character(flows_frame[ 1, c("id")])
  # destination <- data.frame(Reduce(rbind, flows_frame[ 1, c("destinationObjects")]))
  # destination$idfts <- as.character(flows_frame[ 1, c("id")])
  # report <- data.frame(Reduce(rbind, flows_frame[ 1, c("reportDetails")]))
  # report$idfts <- as.character(flows_frame[ 1, c("id")])
  # 
  # for (j in 2:nrow(flows_frame)){
  #   # j<- 43
  #   cat(paste0("\n Processing Row #", j))
  #   source1 <- data.frame(Reduce(rbind, flows_frame[ j, c("sourceObjects")]))
  #   source1$idfts <- as.character(flows_frame[ j, c("id")])
  #   source <- dplyr::bind_rows(source, source1)
  #   rm(source1)
  #   
  #   destination1 <- data.frame(Reduce(rbind, flows_frame[ j, c("destinationObjects")]))
  #   destination1$idfts <- as.character(flows_frame[ j, c("id")])
  #   destination <- dplyr::bind_rows(destination, destination1)
  #   rm(destination1)
  #   
  #   report1 <- data.frame(Reduce(rbind, flows_frame[ j, c("reportDetails")]))
  #   report1$idfts <- as.character(flows_frame[ j, c("id")])
  #   report <- dplyr::bind_rows(report, report1)
  #   rm(report1)
  # }
   
