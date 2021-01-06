# getiaiticode
#


getiaiticode <- function() {

  ActivityDateType <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/ActivityDateType.csv")
  sinew::makeOxygen(ActivityDateType, add_fields = "source")
  save(ActivityDateType, file =  "data/ActivityDateType.RData")


  ActivityScope <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/ActivityScope.csv")
  sinew::makeOxygen(ActivityScope, add_fields = "source")
  save(ActivityScope, file =  "data/ActivityScope.RData")

  ActivityStatus <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/ActivityStatus.csv")
  sinew::makeOxygen(ActivityStatus, add_fields = "source")
  save(ActivityStatus, file =  "data/ActivityStatus.RData")


  AidType <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/AidType.csv")
  sinew::makeOxygen(AidType, add_fields = "source")
  save(AidType, file =  "data/AidType.RData")

  AidTypeCategory <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/AidType-category.csv")
  sinew::makeOxygen(AidTypeCategory, add_fields = "source")
  save(AidTypeCategory, file =  "data/AidTypeCategory.RData")

  AidTypeVocabulary <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/AidTypeVocabulary.csv")
  sinew::makeOxygen(AidTypeVocabulary, add_fields = "source")
  save(AidTypeVocabulary, file =  "data/AidTypeVocabulary.RData")

  BudgetIdentifier <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/BudgetIdentifier.csv")
  sinew::makeOxygen(BudgetIdentifier, add_fields = "source")
  save(BudgetIdentifier, file =  "data/BudgetIdentifier.RData")

  BudgetIdentifierSector <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/BudgetIdentifierSector.csv")
  sinew::makeOxygen(BudgetIdentifierSector, add_fields = "source")
  save(BudgetIdentifierSector, file =  "data/BudgetIdentifierSector.RData")


  DescriptionType <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/DescriptionType.csv")
  sinew::makeOxygen(DescriptionType, add_fields = "source")
  save(DescriptionType, file =  "data/DescriptionType.RData")

  SectorCategory <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/SectorCategory.csv")
  sinew::makeOxygen(SectorCategory, add_fields = "source")
  save(SectorCategory, file =  "data/SectorCategory.RData")


  Sector <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/Sector.csv")
  sinew::makeOxygen(Sector, add_fields = "source")
  save(Sector, file =  "data/Sector.RData")

  CashandVoucherModalities <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/CashandVoucherModalities.csv")
  sinew::makeOxygen(CashandVoucherModalities, add_fields = "source")
  save(CashandVoucherModalities, file =  "data/CashandVoucherModalities.RData")


  Country <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/Country.csv")
  sinew::makeOxygen(Country, add_fields = "source")
  save(Country, file =  "data/Country.RData")


  Region <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/Region.csv")
  sinew::makeOxygen(Region, add_fields = "source")
  save(Region, file =  "data/Region.RData")


  Country <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/Country.csv")
  sinew::makeOxygen(Country, add_fields = "source")
  save(Country, file =  "data/Country.RData")

  Currency <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/Currency.csv")
  sinew::makeOxygen(Currency, add_fields = "source")
  save(Currency, file =  "data/Currency.RData")

  EarmarkingCategory <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/EarmarkingCategory.csv")
  sinew::makeOxygen(EarmarkingCategory, add_fields = "source")
  save(EarmarkingCategory, file =  "data/EarmarkingCategory.RData")

  FlowType <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/FlowType.csv")
  sinew::makeOxygen(FlowType, add_fields = "source")
  save(FlowType, file =  "data/FlowType.RData")

  GeographicLocationClass <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/GeographicLocationClass.csv")
  sinew::makeOxygen(GeographicLocationClass, add_fields = "source")
  save(GeographicLocationClass, file =  "data/GeographicLocationClass.RData")

  HumanitarianScopeType <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/HumanitarianScopeType.csv")
  sinew::makeOxygen(HumanitarianScopeType, add_fields = "source")
  save(HumanitarianScopeType, file =  "data/HumanitarianScopeType.RData")

  HumanitarianScopeVocabulary <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/HumanitarianScopeVocabulary.csv")
  sinew::makeOxygen(HumanitarianScopeVocabulary, add_fields = "source")
  save(HumanitarianScopeVocabulary, file =  "data/HumanitarianScopeVocabulary.RData")


  IndicatorMeasure <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/IndicatorMeasure.csv")
  sinew::makeOxygen(IndicatorMeasure, add_fields = "source")
  save(IndicatorMeasure, file =  "data/IndicatorMeasure.RData")

  IndicatorVocabulary <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/IndicatorVocabulary.csv")
  sinew::makeOxygen(IndicatorVocabulary, add_fields = "source")
  save(IndicatorVocabulary, file =  "data/IndicatorVocabulary.RData")

  
  IATIOrganisationIdentifier <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/IATIOrganisationIdentifier.csv")
  sinew::makeOxygen(IATIOrganisationIdentifier, add_fields = "source")
  save(IATIOrganisationIdentifier, file =  "data/IATIOrganisationIdentifier.RData")  
  
  OrganisationIdentifier <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/OrganisationIdentifier.csv")
  sinew::makeOxygen(OrganisationIdentifier, add_fields = "source")
  save(OrganisationIdentifier, file =  "data/OrganisationIdentifier.RData")

  OrganisationRegistrationAgency <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/OrganisationRegistrationAgency.csv")
  sinew::makeOxygen(OrganisationRegistrationAgency, add_fields = "source")
  save(OrganisationRegistrationAgency, file =  "data/OrganisationRegistrationAgency.RData")

  OrganisationRole <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/OrganisationRole.csv")
  sinew::makeOxygen(OrganisationRole, add_fields = "source")
  save(OrganisationRole, file =  "data/OrganisationRole.RData")

  OrganisationType <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/OrganisationType.csv")
  sinew::makeOxygen(OrganisationType, add_fields = "source")
  save(OrganisationType, file =  "data/OrganisationType.RData")
  
  
  
  
  PolicyMarker <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/PolicyMarker.csv")
  sinew::makeOxygen(PolicyMarker, add_fields = "source")
  save(PolicyMarker, file =  "data/PolicyMarker.RData")

  UNSDGGoals <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/UNSDG-Goals.csv")
  sinew::makeOxygen(UNSDGGoals, add_fields = "source")
  save(UNSDGGoals, file =  "data/UNSDGGoals.RData")

  UNSDGTargets <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/UNSDG-Targets.csv")
  sinew::makeOxygen(UNSDGTargets, add_fields = "source")
  save(UNSDGTargets, file =  "data/UNSDGTargets.RData")

  TransactionType <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/TransactionType.csv")
  sinew::makeOxygen(TransactionType, add_fields = "source")
  save(TransactionType, file =  "data/TransactionType.RData")

  SectorVocabulary <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/SectorVocabulary.csv")
  sinew::makeOxygen(SectorVocabulary, add_fields = "source")
  save(SectorVocabulary, file =  "data/SectorVocabulary.RData")

  ## https://data.humdata.org/dataset/global-coordination-groups-beta

  #install.packages('gsheet')
  #library(gsheet)
  HumCluster  <- gsheet::gsheet2tbl('docs.google.com/spreadsheets/d/1SxSircxhXMZCe0PWafCht-whjBdI9UqoeFeSUbiLGc4')
  # Rename column to have proper Variable names
  HumCluster <- plyr::rename(HumCluster, c("Country of Origin Code"="CountryOriginCode",
                                                                           "Country of Asylum Code"="CountryAsylumCode",
                                                                           "Country of Origin Name"="CountryOriginName",
                                                                           "Country of Asylum Name"="CountryAsylumName",
                                                                           "Refugees"="REF",
                                                                           "Internally Displaced Persons"="IDP",
                                                                           "Asylum-seekers"="ASY",
                                                                           "Others of Concern to UNHCR"="OOC",
                                                                           "Stateless persons"="STA",
                                                                           "Venezuelans Displaced Abroad"="VDA" ))
  sinew::makeOxygen(HumCluster, add_fields = "source")
  save(HumCluster, file =  "data/HumCluster.RData")



  ResultType <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/ResultType.csv")
  sinew::makeOxygen(ResultType, add_fields = "source")
  save(ResultType, file =  "data/ResultType.RData")

  TransactionType <- readr::read_csv("https://iatistandard.org/reference_downloads/203/codelists/downloads/clv3/csv/en/TransactionType.csv")
  sinew::makeOxygen(TransactionType, add_fields = "source")
  save(TransactionType, file =  "data/TransactionType.RData")

}
