#' get_IATI
#'
#' Function to get activities endpoint from IATI-compliant datasets.
#'
#' @param url URL for websites containing IATI-compliant datasets.
#' @param query Search/query parameter. For IATI activites, this can be
#'     `iati_identifier`, `title`, `description`, `recipient_country`,
#'     `recipient_region`, `recipient_org`, `sector`, `document_link`,
#'     `participating_org`.
#' @param value Value to pass to specified `query`.
#'
#' @return Parsed content on activities from IATI-compliant datasets.
#'
#' @examples
#' get_activities(url = "https://devtracker.dfid.gov.uk",
#'                query = "iati_identifier",
#'                value = "075004")
#'
#' @export
#'
#
################################################################################


get_IATI <- function(url, query, value) {



url2 <-  paste0(
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


}

