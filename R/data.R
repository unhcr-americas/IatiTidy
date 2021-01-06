#' @title ActivityDateType
#' @description Types of date for activities.
#' There are many different business models and dates that can be used to describe
#'  the start and end of activities. It is recommended that each publisher
#'  adopts their own consistent approach that provides users with a meaningful
#'  indication of the lifespan of an activity.
#' @format A data frame with 4 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{double COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{character COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
"ActivityDateType"


#' @title ActivityScope
#' @description Geographic scope of activity
#' @format A data frame with 8 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{double COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{character COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "ActivityScope"


#' @title ActivityStatus
#' @description Lifecycle status of the activity from pipeline to completion
#' @format A data frame with 6 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{double COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{character COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "ActivityStatus"


#' @title AidType
#' @description See: http://www.oecd.org/dac/stats/dacandcrscodelists.htm
#' @format A data frame with 18 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{character COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{character COLUMN_DESCRIPTION}
#'   \item{\code{category}}{character COLUMN_DESCRIPTION}
#'   \item{\code{url}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "AidType"

#' @title AidTypeCategory
#' @description This codelists exists to group the Aid Type codelist into
#' categories. It is not used as a codelist in its own right.
#' External URL: http://www.oecd.org/dac/stats/dacandcrscodelists.htm
#' @format A data frame with 8 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{character COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{character COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{http://somewhere.important.com/}
  "AidTypeCategory"

#' @title AidTypeVocabulary
#' @description The AidTypeVocabulary codelist defines a range of external
#' codelists which themselves provide codes and descriptions for aid type.
#' This is a Non-Core codelist.
#' @format A data frame with 4 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{double COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{character COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{character COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "AidTypeVocabulary"


#' @title BudgetIdentifier
#' @description IATI Functional and Administrative Common Code :
#' One of several possible Budget Identifier Vocabularies.
#' As of version 2.03 this codelist has been deprecated.
#'   This is a Non-Core codelist.
#' @format A data frame with 152 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{character COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{category}}{double COLUMN_DESCRIPTION}
#'   \item{\code{url}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "BudgetIdentifier"


#' @title BudgetIdentifierSector
#' @description This codelists exists to group the Budget Identifier codelist
#' into sectors. It is not used as a codelist in its own right.
#'   This is a Non-Core codelist.
#' @format A data frame with 31 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{double COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{category}}{double COLUMN_DESCRIPTION}
#'   \item{\code{url}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "BudgetIdentifierSector"

#' @title SectorCategory
#' @description DAC 3 Digit Sector
#'   External URL: http://www.oecd.org/dac/stats/dacandcrscodelists.htm
#' @format A data frame with 44 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{double COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{character COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{http://somewhere.important.com/}
  "SectorCategory"

#' @title Sector
#' @description DAC 5 Digit Sector
#'   External URL: http://www.oecd.org/dac/stats/dacandcrscodelists.htm
#' @format A data frame with 323 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{double COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{character COLUMN_DESCRIPTION}
#'   \item{\code{category}}{double COLUMN_DESCRIPTION}
#'   \item{\code{url}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "Sector"


#' @title CashandVoucherModalities
#' @description This codelist has been created by IATI following agreements
#' and recommendations of the Tracking Cash and Voucher Assistance (CVA)
#' Working Group. Definitions of the codes have been aligned with the
#' CaLP Glossary:http://www.cashlearning.org/resources/glossary.
#'   This is a Non-Core codelist.
#' @format A data frame with 2 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{double COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{character COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "CashandVoucherModalities"


#' @title Country
#' @description The Country codelist is generated from the ISO 3166-1 part
#'  of the ISO 3166 standard. The standard makes allowance, alongside
#'   the officially assigned codes, for code elements to be expanded by using
#'   either reserved codes or user-assigned codes.
#'   IATI currently defines additional codes in the XA -XZ range.
#'     External URL: http://www.iso.org/iso/home/standards/country_codes.htm
#' @format A data frame with 251 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{character COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "Country"

#' @title Region
#' @description External URL: http://www.oecd.org/dac/stats/dacandcrscodelists.htm
#' @format A data frame with 26 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{double COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{http://somewhere.important.com/}
  "Region"


#' @title Currency
#' @description ISO 4217 Currency used for all transactions and budgets
#'   External URL: http://www.iso.org/iso/home/standards/currency_codes.htm
#' @format A data frame with 174 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{character COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{character COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "Currency"

#' @title DescriptionType
#' @description Activity decription types. (General, objectives, etc)
#' @format A data frame with 4 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{double COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{character COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{http://somewhere.important.com/}
  "DescriptionType"

#' @title EarmarkingCategory
#' @description This codelist has been created by IATI and is derived from the
#' Grand Bargain Earmarking Modality codelist.
#' See: https://reliefweb.int/sites/reliefweb.int/files/resources/Grand_Bargain_final_22_May_FINAL-2.pdf
#' @format A data frame with 4 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{double COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{character COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "EarmarkingCategory"


#' @title FlowType
#' @description DAC/CRS distinction between ODA (official development assistance)
#'  and other types of resource flow.
#'    External URL: http://www.oecd.org/dac/stats/dacandcrscodelists.htm
#' @format A data frame with 10 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{double COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{character COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "FlowType"


#' @title GeographicLocationClass
#' @description This is a Non-Core codelist.
#' @format A data frame with 4 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{double COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{character COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "GeographicLocationClass"


#' @title HumanitarianScopeType
#' @description The Humanitarian Scope Type codelist defines codes for types of
#' humanitarian events and actions.
#' @format A data frame with 2 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{double COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "HumanitarianScopeType"


#' @title HumanitarianScopeVocabulary
#' @description The Humanitarian Scope Vocabulary codelist defines a range of
#' external codelists which themselves provide codes and descriptions for
#' humanitarian events and actions.
#' @format A data frame with 3 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{character COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{character COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "HumanitarianScopeVocabulary"


#' @title IATIOrganisationIdentifier
#' @description This is a list of organisation identifiers that is maintained by
#'  the IATI Secretariat. The prefix for organisations on this list is XI-IATI
#'    If a bona fide organisation is not registered with any recognised or
#'    appropriate registration agency
#'    (http://iatistandard.org/202/codelists/OrganisationRegistrationAgency/)
#'    they should contact the IATI Technical Team who will exceptionally allocate
#'     an organisation identifier using the XI-IATI prefix.
#'
#'     While some of these identifiers have been derived from DAC codes, this
#'     ‘meaning’ is not carried forward. i.e. IATI generated identifiers have no
#'      intrinsic meaning.
#'    For general guidance about constructing Organisation Identifiers, please see
#'     http://iatistandard.org/organisation-identifiers/
#' @format A data frame with 39 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{character COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{character COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{character COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "IATIOrganisationIdentifier"


#' @title IndicatorMeasure
#' @description To specify how an indicator is being measured.
#' This includes qualitative and quantitative values.
#' @format A data frame with 5 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{double COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{character COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "IndicatorMeasure"


#' @title IndicatorVocabulary
#' @description The Indicator Vocabulary codelist defines a range of external
#' codelists which themselves provide codes and descriptions for indicators,
#' for example to specify results.
#' @format A data frame with 10 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{double COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{character COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "IndicatorVocabulary"


#' @title OrganisationIdentifier
#' @description As of 1.04 this list is no longer maintained.
#'  http://support.iatistandard.org/entries/28497976-Retire-the-Organisation-Identifier-codelist#view-post-25368673
#'    For general guidance about constructing Organisation Identifiers,
#'    please see http://iatistandard.org/organisation-identifiers/
#' @format A data frame with 419 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{character COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "OrganisationIdentifier"


#' @title OrganisationRegistrationAgency
#' @description The values from this codelist are used to identify the particular
#'  list that an organisation identifier was drawn from. The codelist provides a
#'  register of known identifier lists, including national company registers,
#'  NGO directories and international and multilateral organisation lists -
#'  along with guidance and online resources to help locate the identifiers
#'  assigned to a specific organisation.
#'  As of 17 July 2017 this list is maintained by the org-id.guide project.
#'  Data publishers can now search for and locate the relevant list for a
#'  particular organisation identifier using the org-id.guide website.
#'
#'  The full register of identifier sources is also available to download
#'  in XML, JSON and CSV formats.
#'
#'  IATI periodically replicates the codelist of identifier sources
#'  from org-id.guide, to assist those accessing IATI documentation.
#'  However, it is advised that the most up-to-date source is the
#'  org-id.guide project.
#'
#'  If org-id.guide does not contain an entry for the kind of
#'  organisation you need to identify, you can make a request a
#'  new list is included in the register following the guidance
#'
#' @format A data frame with 197 rows and 7 variables:
#' \describe{
#'   \item{\code{code}}{character COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{character COLUMN_DESCRIPTION}
#'   \item{\code{category}}{character COLUMN_DESCRIPTION}
#'   \item{\code{url}}{character COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'   \item{\code{public-database}}{logical COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "OrganisationRegistrationAgency"


#' @title PolicyMarker
#' @description The Policy Marker codelist is derived from the policy markers
#'  declared by the WP-STAT. The codes themselves are created by IATI.
#'    External URL: http://www.oecd.org/dac/stats/dacandcrscodelists.htm
#' @format A data frame with 12 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{double COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "PolicyMarker"


#' @title UNSDGGoals
#' @description A value from the top-level list of UN sustainable development
#' goals (SDGs) (e.g. ‘1’)
#'   External URL: https://sustainabledevelopment.un.org/?menu=1300
#' @format A data frame with 17 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{double COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "UNSDGGoals"


#' @title UNSDGTargets
#' @description A value from the second-level list of UN sustainable development
#' goals (SDGs) (e.g. ‘1.1’)
#'   External URL: https://unstats.un.org/sdgs/indicators/indicators-list/
#' @format A data frame with 169 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{character COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "UNSDGTargets"


#' @title TransactionType
#' @description Transaction Type -   This is a Core codelist.
#' @format A data frame with 13 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{double COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{character COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "TransactionType"


#' @title SectorVocabulary
#' @description This is a Non-Core codelist.
#' @format A data frame with 13 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{double COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{character COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{character COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "SectorVocabulary"


#' @title HumCluster
#' @description Global Coordination Groups - Cluster & Area of Interest
#' Official Names and Codes (Beta)
#' Contains IASC designated Global Clusters and Areas of Responsibility.
#' Global Clusters and Areas of Responsibility (AoR) were defined to enable more
#'  predictable leadership in situations of humanitarian emergency.
#'  The content includes the Preferred Term to be used for each Cluster and AoR,
#'   the Acronym (3-letter cluster code), the Group to which the term belongs
#'   (defining whether it is a Global Cluster or AoR) and the website URL.
#'    Both the Google Spreadsheet and CSV versions contain HXL hashtags.
#'      For more information, please visit http://vocabulary.unocha.org/
#' @format A data frame with 16 rows and 9 variables:
#' \describe{
#'   \item{\code{HRinfo ID}}{character COLUMN_DESCRIPTION}
#'   \item{\code{Preferred Term}}{character COLUMN_DESCRIPTION}
#'   \item{\code{Preferred Term (fr)}}{character COLUMN_DESCRIPTION}
#'   \item{\code{ACRONYM}}{character COLUMN_DESCRIPTION}
#'   \item{\code{Group Type}}{character COLUMN_DESCRIPTION}
#'   \item{\code{Homepage}}{character COLUMN_DESCRIPTION}
#'   \item{\code{Date Created (Post Date)}}{character COLUMN_DESCRIPTION}
#'   \item{\code{Updated date}}{character COLUMN_DESCRIPTION}
#'   \item{\code{Notes}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "HumCluster"


#' @title ResultType
#' @description This is a Non-Core codelist.
#' @format A data frame with 4 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{double COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{character COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "ResultType"


#' @title TransactionType
#' @description This is a Core codelist.
#' @format A data frame with 13 rows and 6 variables:
#' \describe{
#'   \item{\code{code}}{double COLUMN_DESCRIPTION}
#'   \item{\code{name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{description}}{character COLUMN_DESCRIPTION}
#'   \item{\code{category}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{url}}{logical COLUMN_DESCRIPTION}
#'   \item{\code{status}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://iatistandard.org/en/iati-standard/203/codelists/}
  "TransactionType"

