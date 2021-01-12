#' get_IATI_activity
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
#' @return Parsed content on activities from IATI-compliant datasets.
#'
#' @examples
#' data <- get_IATI_activity(url = "https://iatidatastore.iatistandard.org/search/activity?q=",
#'                        sector_vocabulary = "sector_vocabulary:(10 1 9 7)"
#'              country = c("Colombia"),
#'              daterange_actual = c("2018-01-01T00:00:00Z", "2021-01-01T00:00:00Z"),
#'              daterange_planned = c("2018-01-01T00:00:00Z", "2021-01-01T00:00:00Z")
#'
#' @export
#'

get_IATI_activity <- function(url = "https://iatidatastore.iatistandard.org/search/activity?q=",
                     sector_vocabulary = "sector_vocabulary:(10 1 9 7)",
                     country = c("Colombia"),
                     daterange_actual = c("2018-01-01T00:00:00Z", "2021-01-01T00:00:00Z"),
                     daterange_planned = c("2018-01-01T00:00:00Z", "2021-01-01T00:00:00Z")
                     ) 
  {
    # #url <- "https://iatidatastore.iatistandard.org/search/activity?q=sector_vocabulary:(10 1 9 7) AND (recipient_region_code:(380 389 489 498 OR transaction_recipient_region_code:(380 389 489 498))) AND (activity_date_start_actual_f:[2018-01-01T00:00:00Z TO *] OR (-activity_date_start_actual_f:[* TO *] AND activity_date_start_planned_f:[2018-01-01T00:00:00Z TO *])) AND (activity_date_end_actual_f:[2021-01-01T00:00:00Z TO *] OR (-activity_date_end_actual_f:[* TO *] AND activity_date_end_planned_f:[2021-01-01T00:00:00Z TO *]))&fl=iati_identifier,reporting_org_*,title_*,description_*,participating_org_*,activity_status_code,activity_date_*,recipient_country_*,recipient_region_*,sector_*,humanitarian,humanitarian_scope_*,default_finance_type_code,default_aid_type_*,default_tied_status_code,budget_*,default_currency,capital_spend_percentage,transaction_type&wt=csv&rows=736"
    
  
    # https://iatidatastore.iatistandard.org/search/activity?q=sector_vocabulary:(1 7 6 9 10) AND (recipient_country_code:(AG AI AN AR AW BB BL BQ BO BR BS BZ CA CL CO CR CU CW DM DO EC GD GP GL GF LC HN HT MQ MS NI VE US SR SV MX PA PE PR GY PM PY UY) OR transaction_recipient_country_code:(AG AI AN AR AW BB BL BQ BO BR BS BZ CA CL CO CR CU CW DM DO EC GD GP GL GF LC HN HT MQ MS NI VE US SR SV MX PA PE PR GY PM PY UY))&fl=iati_identifier,reporting_org_*,title_*,description_*,participating_org_*,activity_status_code,activity_date_*,recipient_country_*,recipient_region_*,sector_*,humanitarian,humanitarian_scope_*,default_finance_type_code,default_aid_type_*,default_tied_status_code,budget_*,default_currency,capital_spend_percentage,transaction_type&wt=csv&rows=50
    # https://iatidatastore.iatistandard.org/search/activity?q=(recipient_country_code:(AG AI AN AR AW BB BL BQ BO BR BS BZ CA CL CO CR CU CW DM DO EC GD GP GL GF LC HN HT MQ MS NI VE US SR SV MX PA PE PR GY PM PY UY) OR transaction_recipient_country_code:(AG AI AN AR AW BB BL BQ BO BR BS BZ CA CL CO CR CU CW DM DO EC GD GP GL GF LC HN HT MQ MS NI VE US SR SV MX PA PE PR GY PM PY UY))&fl=iati_identifier,title_*,description_*,other_identifier_*,activity_date_*,transaction_type,recipient_country_*&wt=csv&rows=50
    # https://iatidatastore.iatistandard.org/search/activity?q=sector_vocabulary:(1 7 6) AND (recipient_country_code:(AG AI AN AR AW BB BL BQ BO BR BS BZ CA CL CO CR CU CW DM DO EC GD GP GL GF LC HN HT MQ MS NI VE US SR SV MX PA PE PR GY PM PY UY) OR transaction_recipient_country_code:(AG AI AN AR AW BB BL BQ BO BR BS BZ CA CL CO CR CU CW DM DO EC GD GP GL GF LC HN HT MQ MS NI VE US SR SV MX PA PE PR GY PM PY UY))&fl=iati_identifier,title_*,description_*,other_identifier_*,activity_date_*,transaction_type,recipient_country_*&wt=csv&rows=50
  query <-  paste0(
      'https://iatidatastore.iatistandard.org/search/activity?q=',
      #'https://iati.cloud/search/transaction?q=',
      'sector_vocabulary:(1 7 6 9 10)',
      ' AND ',
      
      # Look for region in Americas
      # '(recipient_region_code:(380 389 489 498 OR
      #  transaction_recipient_region_code:(380 389 489 498))) ',
      
      
      # Look for countries in Americas
      
      '(recipient_country_code:(AG AI AN AR AW BB BL BQ BO BR BS BZ CA CL CO CR CU CW DM DO EC GD GP GL GF LC HN HT MQ MS NI VE US SR SV MX PA PE PR GY PM PY UY) 
      OR transaction_recipient_country_code:(AG AI AN AR AW BB BL BQ BO BR BS BZ CA CL CO CR CU CW DM DO EC GD GP GL GF LC HN HT MQ MS NI VE US SR SV MX PA PE PR GY PM PY UY)) ',
      
      # 'AND',
      # '(activity_date_start_actual_f:[2018-01-01T00:00:00Z TO *]',
      # 'OR (-activity_date_start_actual_f:[* TO *]',
      # ' AND',
      # 'activity_date_start_planned_f:[2018-01-01T00:00:00Z TO *]))',
      # 'AND ',
      # '(activity_date_end_actual_f:[2021-01-01T00:00:00Z TO *]',
      # 'OR (-activity_date_end_actual_f:[* TO *]',
      # 'AND activity_date_end_planned_f:[2021-01-01T00:00:00Z TO *]))',
    
     
     
     ### Define the variables to receive
     "&fl=",
         "iati_identifier,",
         "title_*,",
         "description_*,",
         "other_identifier_*,",
         "activity_date_*,",
         "transaction_type,",
         "recipient_country_*,",
         "reporting_org_*,",
         "participating_org_*,",
         "activity_status_code,",
         "contact_info_*,",
         "activity_scope_code,",
         "recipient_region_*,",
         "location_*,",
         "sector_*,",
         "humanitarian,",
         "humanitarian_scope_*,",
         "collaboration_type_code,",
         "default_flow_type_code,",
         "default_finance_type_code,",
         "default_aid_type_*,",
         "default_tied_status_code,",
         "budget_*,",
         "planned_disbursement_*,",
         "capital_spend_percentage,",
         "transaction_*,",
         "document_link_url,",
         "related_activity_ref,",
         "conditions_condition_narrative,",
         "last_updated_datetime,",
         "default_currency,",
         "hierarchy,",
         "reporting_org_secondary_reporter",
     
     
      ## Get max records from API & in csv format
      '&wt=csv&rows=5000000'
    )
    activities <- utils::read.csv(utils::URLencode(query), as.is=T,na.strings="")
    #str(activities)
    #labelactivities <- as.data.frame(names(activities))
    # write.csv(activities, "data-raw/activities.csv", row.names = FALSE)
    
    ## Check Unique ID
    #nlevels(as.factor(activities$iati_identifier))
    cat( nrow(activities), " activity records were retrieved from IATI Datastore based on your query")
    
    ## Add label for each code
    activities$activity_status_codeLabel <- ""
    activities$reporting_org_refLabel <- ""
    for ( j in 1:nrow(activities)) {
      # j <- 1
      activities[ j, c("activity_status_codeLabel")] <- ifelse( identical(as.character(IatiTidy::ActivityStatus$name[IatiTidy::ActivityStatus$code ==activities[j, c("activity_status_code")] ]), character(0)),
                                                    paste("No Matching Label"),
                                                    as.character(IatiTidy::ActivityStatus$name[IatiTidy::ActivityStatus$code ==activities[j, c("activity_status_code")] ]) )
      
      # activities[ j, c("reporting_org_refLabel")] <- ifelse( identical(as.character(IatiTidy::ActivityStatus$name[IatiTidy::ActivityStatus$code ==activities[j, c("activity_status_code")] ]), character(0)),
      #                                                     paste("No Matching Label"),
      #                                                     as.character(IatiTidy::ActivityStatus$name[IatiTidy::ActivityStatus$code ==activities[j, c("activity_status_code")] ]) )
      # 
      
      }
    
    
    activities_sector <-  split_sector(activities)
    activities_implementers <-  split_implementers(activities)    
    return(activities)

}

