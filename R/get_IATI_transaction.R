#' get_IATI_transaction
#'
#' Function to get activities endpoint from IATI-compliant dataset.
#'
#' @param url URL for websites containing IATI-compliant dataset. Default is 
#'  "https://iatidatastore.iatistandard.org/search/activity?q="
#' @param sector_vocabulary  sector typology - Default is DAC, Humanitarian and SDG
#' sector_vocabulary:(10 1 9 7)
#' @param country list of Country or single country to pull data about
#' @param daterange_actual list with actual start and end date of activities
#' @param daterange_planned list with planned start and end date of activities
#'
#' @return transaction Parsed content on activities from IATI-compliant datasets.
#'
#' @examples
#' data <- get_IATI_transaction(url = "https://iatidatastore.iatistandard.org/search/activity?q=",
#'                        sector_vocabulary = "sector_vocabulary:(10 1 9 7)"
#'              country = c("Colombia"),
#'              daterange_actual = c("2018-01-01T00:00:00Z", "2021-01-01T00:00:00Z"),
#'              daterange_planned = c("2018-01-01T00:00:00Z", "2021-01-01T00:00:00Z")
#'
#' @export
#'

get_IATI_transaction <- function(url = "https://iatidatastore.iatistandard.org/search/transaction?q=",
                     sector_vocabulary = "sector_vocabulary:(10 1 9 7)",
                     country = c("Colombia"),
                     daterange_actual = c("2018-01-01T00:00:00Z", "2021-01-01T00:00:00Z"),
                     daterange_planned = c("2018-01-01T00:00:00Z", "2021-01-01T00:00:00Z")
                     ) 
  {
    query <-  paste0(
      
      ## https://iatidatastore.iatistandard.org/search/transaction?q=transaction_sector_vocabulary:(1 7 6 9 10) AND transaction_recipient_country_code:(AG AI AN AR AW BB BL BQ BO BR BS BZ CA CL CO CR CU CW DM DO EC GD GP GL GF LC HN HT MQ MS NI VE US SR SV MX PA PE PR GY PM PY UY)&fl=transaction_sector_code,transaction_recipient_country_code,transaction_recipient_region_code,transaction_type,transaction_value,transaction_value_currency,transaction_value_currency&wt=csv&rows=50
      
      ## https://iatidatastore.iatistandard.org/search/transaction?q=transaction_sector_vocabulary:(1%207%206%209%2010)%20AND%20transaction_recipient_country_code:(AG%20AI%20AN%20AR%20AW%20BB%20BL%20BQ%20BO%20BR%20BS%20BZ%20CA%20CL%20CO%20CR%20CU%20CW%20DM%20DO%20EC%20GD%20GP%20GL%20GF%20LC%20HN%20HT%20MQ%20MS%20NI%20VE%20US%20SR%20SV%20MX%20PA%20PE%20PR%20GY%20PM%20PY%20UY)&fl=transaction_sector_code,transaction_recipient_country_code,transaction_recipient_region_code,transaction_type,transaction_value,transaction_value_currency,transaction_value_currency&wt=csv&rows=50
      ## https://iatidatastore.iatistandard.org/search/transaction?q=transaction_sector_vocabulary:(1%207%206%209%2010)%20AND%20transaction_recipient_country_code:(AG%20AI%20AN%20AR%20AW%20BB%20BL%20BQ%20BO%20BR%20BS%20BZ%20CA%20CL%20CO%20CR%20CU%20CW%20DM%20DO%20EC%20GD%20GP%20GL%20GF%20LC%20HN%20HT%20MQ%20MS%20NI%20VE%20US%20SR%20SV%20MX%20PA%20PE%20PR%20GY%20PM%20PY%20UY)&fl=transaction_sector_codetransaction_recipient_country_codetransaction_recipient_region_codetransaction_typetransaction_valuetransaction_value_currency&wt=csv&rows=5000000
      
      ## https://iatidatastore.iatistandard.org/search/transaction?q=transaction_sector_vocabulary:(1%207%206%209%2010)%20AND%20transaction_recipient_country_code:(AG%20AI%20AN%20AR%20AW%20BB%20BL%20BQ%20BO%20BR%20BS%20BZ%20CA%20CL%20CO%20CR%20CU%20CW%20DM%20DO%20EC%20GD%20GP%20GL%20GF%20LC%20HN%20HT%20MQ%20MS%20NI%20VE%20US%20SR%20SV%20MX%20PA%20PE%20PR%20GY%20PM%20PY%20UY)&fl=transaction_sector_codetransaction_recipient_country_codetransaction_recipient_region_codetransaction_typetransaction_valuetransaction_value_currency&wt=csv&rows=5000000
      
      # https://iatidatastore.iatistandard.org/search/transaction?q=
      #transaction_sector_vocabulary:(1 7 6 9 10)
      #AND 
      #transaction_recipient_country_code:(AG AI AN AR AW BB BL BQ BO BR BS BZ CA CL CO CR CU CW DM DO EC GD GP GL GF LC HN HT MQ MS NI VE US SR SV MX PA PE PR GY PM PY UY)
      # &fl=transaction_sector_code,transaction_recipient_country_code,transaction_recipient_region_code,transaction_type,transaction_value,transaction_value_currency,transaction_value_currency
      #&wt=csv&rows=50
      
      'https://iatidatastore.iatistandard.org/search/transaction?q=',
      #'https://iati.cloud/search/transaction?q=',
      'transaction_sector_vocabulary:(1 7 6 9 10)',
      ' AND ',
      
      # Look for region in Americas
      # '(recipient_region_code:(380 389 489 498 OR
      # transaction_recipient_region_code:(380 389 489 498))) ',
      
      
      # Look for countries in Americas
      'transaction_recipient_country_code:(AG AI AN AR AW BB BL BQ BO BR BS BZ CA CL CO CR CU CW DM DO EC GD GP GL GF LC HN HT MQ MS NI VE US SR SV MX PA PE PR GY PM PY UY)',
      
      ## Filter on date...
      # 'AND',
      # '(activity_date_start_actual_f:[2018-01-01T00:00:00Z TO *]',
      # 'OR (-activity_date_start_actual_f:[* TO *]',
      # ' AND',
      # 'activity_date_start_planned_f:[2018-01-01T00:00:00Z TO *]))',
      # 'AND ',
      # '(activity_date_end_actual_f:[2021-01-01T00:00:00Z TO *]',
      # 'OR (-activity_date_end_actual_f:[* TO *]',
      # 'AND activity_date_end_planned_f:[2021-01-01T00:00:00Z TO *]))',
    
      
      # https://iatidatastore.iatistandard.org/search/transaction?q=transaction_sector_vocabulary:(1 7 6) AND transaction_recipient_country_code:(AG AI AN AR AW BB BL BQ BO BR BS BZ CA CL CO CR CU CW DM DO EC GD GP GL GF LC HN HT MQ MS NI VE US SR SV MX PA PE PR GY PM PY UY)&fl=
      
      
      #&wt=csv&rows=50
      
      ### Define the variables to receive
      "&fl=",
        "iati_identifier,",
        "transaction_sector_code,",
        "transaction_recipient_country_code,",
        "transaction_recipient_region_code,",
        "transaction_type,",
        "transaction_value,",
        "transaction_value_currency",
      
      ## Get max records from API & in csv format
      '&wt=csv&rows=5000000'
    )
    transaction <- utils::read.csv(utils::URLencode(query), as.is=T,na.strings="")
    #str(transaction)
    #labeltransaction <- as.transaction.frame(names(transaction))
    # write.csv(transaction, "data-raw/transaction.csv", row.names = FALSE)
    
    ## Check Unique ID
    #nlevels(as.factor(transaction$iati_identifier))
    cat( nrow(transaction), " transaction records were retrieved from IATI Datastore based on your query")
    
    ## Add label for each code
    transaction$activity_status_codeLabel <- ""
    transaction$reporting_org_refLabel <- ""
    for ( j in 1:nrow(transaction)) {
      # j <- 1
      transaction[ j, c("activity_status_codeLabel")] <- ifelse( identical(as.character(IatiTidy::ActivityStatus$name[IatiTidy::ActivityStatus$code ==transaction[j, c("activity_status_code")] ]), character(0)),
                                                    paste("No Matching Label"),
                                                    as.character(IatiTidy::ActivityStatus$name[IatiTidy::ActivityStatus$code ==transaction[j, c("activity_status_code")] ]) )
      
      # transaction[ j, c("reporting_org_refLabel")] <- ifelse( identical(as.character(IatiTidy::ActivityStatus$name[IatiTidy::ActivityStatus$code ==transaction[j, c("activity_status_code")] ]), character(0)),
      #                                                     paste("No Matching Label"),
      #                                                     as.character(IatiTidy::ActivityStatus$name[IatiTidy::ActivityStatus$code ==transaction[j, c("activity_status_code")] ]) )
      # 
      
      }
    
    
    transaction_sector <-  split_sector(transaction)
    transaction_implementers <-  split_implementers(transaction)    
    return(transaction)

}

