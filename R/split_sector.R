#' split_sector
#'
#' Function to split sectors by activities.
#' Thanks to https://github.com/akmiller01/IATI-Covid
#'
#' @param data query extract
#'
#' @return Parsed content on activities from IATI-compliant datasets.
#'
#' @export
#'

split_sector <-  function(data) {
  
  ## initiate
  dataSector <- data.frame(c("init"))
  names(dataSector)[1] <- "iati_identifier"
  dataSector$sector_code <- "trigger"
  dataSector$sector_codeLabel <- "trigger"
  dataSector$sector_category <- "trigger"
  dataSector$sector_categoryLabel <- "trigger"
  dataSector$sector_percentage <- 0.1
  dataSector$sector_vocabulary <- "trigger"
  dataSector$sector_vocabularyLabel <- "trigger"
  
  for(i in 1:nrow(data)) {
    # View(data[ ,c("iati_identifier", "sector_code", "sector_percentage", "sector_vocabulary")])
    # i <- 1253
    #cat(paste0("start: ", i, "\n"))
    
    row <- data[i,]
    iatiIdentifier <- as.character(row$iati_identifier)
    codes <- as.character(row$sector_code)
    percentages <- as.character(row$sector_percentage)
    vocabularies <- as.character(row$sector_vocabulary)
    
    
    code_split <- stringr::str_split(codes,",")[[1]]
    if(length(code_split)==1 & length(percentages)==0){
      percentages = "100"
    }
    perc_split <-  stringr::str_split(percentages,",")[[1]]
    vocab_split <-  stringr::str_split(vocabularies,",")[[1]]
    
    # if(length(code_split)!=length(perc_split) |
    #    length(perc_split)!=length(vocab_split) |
    #    length(vocab_split)!=length(code_split)
    # ){
    #   row$sector_code = ""
    #   row$sector_percentage = ""
    #   row$sector_vocabulary = ""
    #   return(row)
    # }
    row_df = data.frame(iati_identifier = iatiIdentifier,
                        sector_code = code_split,
                        sector_percentage = perc_split,
                        sector_vocabulary = vocab_split)
    
    # if("1" %in% vocab_split){
    #   row_df = subset(row_df,sector_vocabulary=="1")
    # } else if("2" %in% vocab_split){
    #   row_df = subset(row_df,sector_vocabulary=="2")
    # } else if("DAC" %in% vocab_split){
    #   row_df = subset(row_df,sector_vocabulary=="DAC")
    # } else {
    #   row_df = subset(row_df,is.na(sector_vocabulary))
    # }
    #cat(paste0("add label: ",i, "\n"))
    ## Add label
    row_df$sector_codeLabel <- ""
    row_df$sector_category <- ""
    row_df$sector_categoryLabel <- ""
    row_df$sector_vocabularyLabel <- ""
    for ( j in 1:nrow(row_df)) {
      # j <- 2
      row_df[ j, c("sector_codeLabel")] <-  ifelse( identical(as.character(IatiTidy::Sector$name[IatiTidy::Sector$code ==row_df[j, c("sector_code")] ]), character(0)),
                                                              paste("No Matching Label"),
                                                              as.character(IatiTidy::Sector$name[IatiTidy::Sector$code ==row_df[j, c("sector_code")] ]) )
                                                    
     row_df[ j, c("sector_category")] <-  ifelse( identical(as.character(IatiTidy::Sector$category[IatiTidy::Sector$code ==row_df[j, c("sector_code")] ]), character(0)),
                                                            paste("No Matching Label"),
                                                            as.character(IatiTidy::Sector$category[IatiTidy::Sector$code ==row_df[j, c("sector_code")] ]))
                                                                                                 
     row_df[ j, c("sector_categoryLabel")] <-  ifelse( identical(as.character(IatiTidy::SectorCategory$name[IatiTidy::SectorCategory$code ==row_df[j, c("sector_category")] ]), character(0)),
                                                       paste("No Matching Label"),
                                                       as.character(IatiTidy::SectorCategory$name[IatiTidy::SectorCategory$code ==row_df[j, c("sector_category")] ]))
                                                                                                                                                   
    row_df[ j, c("sector_vocabularyLabel")] <-  ifelse( identical(as.character(IatiTidy::SectorVocabulary$name[IatiTidy::SectorVocabulary$code ==row_df[j, c("sector_vocabulary")] ]), character(0)),
                                                                  paste("No Matching Label"),
                                                                  as.character(IatiTidy::SectorVocabulary$name[IatiTidy::SectorVocabulary$code ==row_df[j, c("sector_vocabulary")] ]))
    }
    #names(row_df)
    #names(dataSector)
    ## Bind
    dataSector <- rbind(dataSector[ , c("iati_identifier",       
                                        "sector_code" ,          
                                        "sector_codeLabel",      
                                        "sector_category",       
                                        "sector_categoryLabel" , 
                                        "sector_percentage",     
                                        "sector_vocabulary" ,    
                                        "sector_vocabularyLabel")], 
                        row_df[ , c("iati_identifier",       
                                    "sector_code" ,          
                                    "sector_codeLabel",      
                                    "sector_category",       
                                    "sector_categoryLabel" , 
                                    "sector_percentage",     
                                    "sector_vocabulary" ,    
                                    "sector_vocabularyLabel")]
    )
    
    #cat(paste0("merged: ", i, "-" , iatiIdentifier, "\n"))
    rm(row_df)
  }
  
  ## Remove first line  
  dataSector[1, ] <- NULL
  
  # row$sector_code = paste0(row_df$code,collapse=",")
  # row$sector_percentage = paste0(row_df$percent,collapse=",")
  # row$sector_vocabulary = paste0(row_df$vocab,collapse=",")
  return(dataSector)
}