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
    query <-  paste0(
      'https://iatidatastore.iatistandard.org/search/activity?q=',
      #'https://iati.cloud/search/transaction?q=',
      'sector_vocabulary:(10 1 9 7)',
      ' AND (',
      '
      recipient_region_code:(380 389 489 498 OR
      transaction_recipient_region_code:(380 389 489 498))) ',
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
      "reporting_org_*,",
      "title_*,",
      "description_*,",
      "participating_org_*,",
      "activity_status_code,",
      "activity_date_*,",
      "recipient_country_*,",
      "recipient_region_*,",
      "sector_*,",
      "humanitarian,",
      "humanitarian_scope_*,",
      "default_finance_type_code,",
      "default_aid_type_*,",
      "default_tied_status_code,",
      "budget_*,",
      "default_currency,",
      "capital_spend_percentage,",
      "default_currency,",
      "transaction_receiver*,",
      "transaction_date*,",
      "transaction_value*,",
      "transaction_provider*,",
      "transaction_receiver*",
      "transaction_type*",
      '&wt=csv&rows=5000000'
    )
    data <- utils::read.csv(utils::URLencode(query), as.is=T,na.strings="")
    
    return(data)

}

