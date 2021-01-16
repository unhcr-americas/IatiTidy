save(data, file =  "data-raw/fts.RData")

names(data$flows.destination)

table(data$flows.destination$behavior , useNA="ifany")
table(data$flows.destination$organizationTypes , useNA="ifany")

table(data$flows.destination$organizationTypes , useNA="ifany")
table(data$flows.destination$flowType , useNA="ifany")
table(data$flows.destination$newMoney , useNA="ifany")

table(data$flows.destination$flowType , data$flows.destination$newMoney , useNA="ifany")


table(data$flows.destination$method , useNA="ifany")
table(data$flows.destination$status, useNA="ifany")

## to avoid double count - we need to exclude flows with child...
data$flows.destination$hasparent <- ifelse( is.na(data$flows.destination$parentFlowId ), "noparent", "hasparent")
data$flows.destination$haschild <- ifelse( data$flows.destination$childFlowIds == "NULL", "nochild", "haschild")

table(data$flows.destination$hasparent, useNA="ifany")
table(data$flows.destination$haschild, useNA="ifany")
table(data$flows.destination$hasparent,data$flows.destination$haschild, useNA="ifany")


table(data$flows.destination$type, useNA="ifany")

## Ref for Cluster
Cluster <- as.data.frame(unique(data$flows.destination[ data$flows.destination$type == "Cluster", c("name")]))

## Ref for Emergency
Emergency <- as.data.frame(unique(data$flows.destination[ data$flows.destination$type == "Emergency", c("name")]))

## "VENEZUELA Outflow - Regional Refugees and Migrants"

## Ref for GlobalCluster
GlobalCluster <- as.data.frame(unique(data$flows.destination[ data$flows.destination$type == "GlobalCluster", c("name")]))

## Ref for Organization
Organization <- as.data.frame(unique(data$flows.destination[ data$flows.destination$type == "Organization",
                                                             c("name", )]))
## Ref for Plan
Plan <- as.data.frame(unique(data$flows.destination[ data$flows.destination$type == "Plan", c("name")]))

# "Colombia 2020", "Colombia Intersectoral COVID-19 Response Plan 2020","COVID-19 Global Humanitarian Response Plan"
# "Ecuador Intersectoral COVID-19 Response Plan 2020"
# "Haiti 2018", "Haiti 2019", "Haiti 2020"
# "Refugee and Migrant Response Plan 2020 for Refugees and Migrants from Venezuela (RMRP)"
#  "Refugee and Migrant Response Plan for Venezuela 2021 (RMRP)"

# "Venezuela 2019", "Venezuela 2020"


## Ref for Project
Project <- as.data.frame(unique(data$flows.destination[ data$flows.destination$type == "Project", c("name")]))

Projecttable <- as.data.frame(table(data$flows.destination[ data$flows.destination$type == "Project", c("name")], useNA = "ifany"))

## Ref for UsageYear
UsageYear <- as.data.frame(unique(data$flows.destination[ data$flows.destination$type == "UsageYear", c("name")]))
UsageYeartab <- as.data.frame(table(data$flows.destination[ data$flows.destination$type == "UsageYear", c("name")], useNA = "ifany"))

UsageYeartabst <- as.data.frame(table(data$flows.destination[ data$flows.destination$type == "UsageYear", c("name")],
                                      data$flows.destination[ data$flows.destination$type == "UsageYear", c("status")],
                                      useNA = "ifany"))

### Make a reference for country
ctry <- as.data.frame(unique(data$flows.destination[ data$flows.destination$type == "Location", c("name")]))
names(ctry)[1] <- "ctryname"
ctry$ctrynamefts <- ctry$ctryname


## Match name
ctry$ctryname[ctry$ctrynamefts == "Bolivia, Plurinational State of"] <- "Bolivia (Plurinational State of)"
ctry$ctryname[ctry$ctrynamefts == "Anguilla (United Kingdom)"] <- "Anguilla"
ctry$ctryname[ctry$ctrynamefts == "Bonaire, Saint Eustatius and Saba (The Netherlands)"] <- "Bonaire, Saint Eustatius and Saba"
ctry$ctryname[ctry$ctrynamefts == "Cape Verde"] <- "Cabo Verde"
ctry$ctryname[ctry$ctrynamefts == "Central African Republic"] <- "Central African Rep."
ctry$ctryname[ctry$ctrynamefts == "Congo, The Democratic Republic of the"] <- "Bonaire, Saint Eustatius and Saba"
ctry$ctryname[ctry$ctrynamefts == "Côte d'Ivoire"] <- "Cote d'Ivoire"
ctry$ctryname[ctry$ctrynamefts == "Curaçao"] <- "Curacao"
ctry$ctryname[ctry$ctrynamefts == "Dominican Republic"] <- "Dominican Rep."
ctry$ctryname[ctry$ctrynamefts == "Eswatini"] <- "Swaziland"
ctry$ctryname[ctry$ctrynamefts == "Guadeloupe (France)"] <- "Guadeloupe"
ctry$ctryname[ctry$ctrynamefts == "Iran, Islamic Republic of"] <- "Iran (Islamic Rep. of)"
ctry$ctryname[ctry$ctrynamefts == "Korea, Democratic People's Republic of"] <- "Dem. People's Rep. of Korea"
ctry$ctryname[ctry$ctrynamefts == "Korea, Republic of"] <- "Rep. of Korea"
ctry$ctryname[ctry$ctrynamefts == "Lao People's Democratic Republic"] <- "Lao People's Dem. Rep."
ctry$ctryname[ctry$ctrynamefts == "Martinique (France)"] <- "Martinique"
ctry$ctryname[ctry$ctrynamefts == "Micronesia, Federated States of"] <- "Micronesia (Federated States of)"
ctry$ctryname[ctry$ctrynamefts == "Moldova, Republic of"] <- "Rep. of Moldova"
ctry$ctryname[ctry$ctrynamefts == "North Macedonia, Republic of"] <- "The former Yugoslav Rep. of Macedonia"
ctry$ctryname[ctry$ctrynamefts == "occupied Palestinian territory"] <- "State of Palestine"
ctry$ctryname[ctry$ctrynamefts == "Puerto Rico (United States)"] <- "Puerto Rico"
ctry$ctryname[ctry$ctrynamefts == "Saint Barthélemy (France)"] <- "Saint-Barthelemy"
ctry$ctryname[ctry$ctrynamefts == "Saint Martin (France)"] <- "Saint-Martin (French part)"
ctry$ctryname[ctry$ctrynamefts == "São Tomé and Príncipe"] <- "Sao Tome and Principe"
ctry$ctryname[ctry$ctrynamefts == "Serbia"] <- "Serbia and Kosovo: S/RES/1244 (1999)"
ctry$ctryname[ctry$ctrynamefts == "Syrian Arab Republic"] <- "Syrian Arab Rep."
ctry$ctryname[ctry$ctrynamefts == "Taiwan, Province of China"] <- "Taiwan"
ctry$ctryname[ctry$ctrynamefts == "Tanzania, United Republic of"] <- "United Rep. of Tanzania"
ctry$ctryname[ctry$ctrynamefts == "United Kingdom"] <- "United Kingdom of Great Britain and Northern Ireland"
ctry$ctryname[ctry$ctrynamefts == "United States"] <- "United States of America"
ctry$ctryname[ctry$ctrynamefts == "Venezuela, Bolivarian Republic of"] <- "Venezuela (Bolivarian Republic of)"
ctry$ctryname[ctry$ctrynamefts == "Virgin Islands, British" ] <- "British Virgin Islands"
 
reference <- unhcrdatapackage::reference

ctry <- merge( x= ctry, y = reference, by = "ctryname", all.x = TRUE)

as.character(ctry[ ctry$UNHCRBureau == "Americas", c("ctrynamefts")])
as.character(ctry[ ctry$SUBREGION == "South America", c("ctrynamefts")])

South_America <- c("Argentina", "Bolivia, Plurinational State of" , "Brazil", "Chile" , "Colombia" ,
  "Ecuador" , "Falkland Islands (Malvinas)" , "Guyana" , "Paraguay" , "Peru" ,
  "Suriname", "Uruguay"  , "Venezuela, Bolivarian Republic of")


## list of flowid linked to southamerica

flowidsouthamerica <- as.character(data$flows.destination[data$flows.destination$name %in% South_America, c("flowid") ])

#Now subset the resulting
flow2SoutAhmerica <- data$flows.destination[data$flows.destination$flowid %in% flowidsouthamerica,  ]



dataplot <- flow2SoutAhmerica %>%
  ## Filter flow id that were paid in 2020  
  filter(flowid %in% as.character(flow2SoutAhmerica[flow2SoutAhmerica$name %in% c("2020"), c("flowid") ])) %>% 
  # Also to avoid double count, we need to filter out the flows with Children   
  filter(status %in% "paid") %>%
  # Also to avoid double count, we need to filter out the flows with Children
  filter(haschild %in% "nochild") %>%
  # Also to avoid double count, we need to filter only rows representing countries
  filter(type %in% "Location") %>%
  select(name,   amountUSD) %>%
  group_by(name) %>%
  summarise(amountUSD = sum(amountUSD))%>%
  # Redefine the levels of the `relig` factor variable
  mutate(name = fct_reorder(name, amountUSD))  

levels(dataplot$name)

ggplot(dataplot ) +
  aes(x = fct_reorder(name, amountUSD),  weight = amountUSD) +
  geom_bar() +
 # facet_wrap(vars(method)) +
  scale_fill_brewer(palette = "Accent") +
  labs(x = "Country", y = "Amount in USD", 
       title = "Total Amount per Country", 
       fill = "Delivery Method") +
  theme_minimal() +
  theme(legend.position = "top") +
  coord_flip()+ 
  scale_y_continuous(labels = scales::unit_format(unit = "M"))
                                   