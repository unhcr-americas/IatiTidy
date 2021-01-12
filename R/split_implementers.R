#' split_implementers
#'
#' Function to split activities by implementers.
#' Thanks to https://github.com/akmiller01/IATI-Covid
#'
#' @param row lines in the query extract
#'
#' @return Parsed content on activities from IATI-compliant datasets.
#'
#' @export
#'

split_implementers <-  function(data) {
  
  ## Initiate frame #####
  dataImplementers <- data.frame(c("init"))
  names(dataImplementers)[1] <- "iati_identifier"
  dataImplementers$participating_org_role <- "trigger"
  dataImplementers$participating_org_narrative <- "trigger"
  dataImplementers$participating_org_type <- "trigger"
  dataImplementers$participating_org_ref <- "trigger"
  dataImplementers$participating_org_roleLabel <- ""
  dataImplementers$participating_org_typeLabel <- ""
  
  
  ## Loop around each rows #####
  for(i in 1:nrow(data)) {
    # View(data[ ,c("iati_identifier", "participating_org_role", "participating_org_narrative", "participating_org_type", "participating_org_ref")])
    # i <- 1
    #cat(paste0("start: ", i, "\n"))
    
    row <- data[i,]
    iatiIdentifier <- as.character(row$iati_identifier)
    org_roles <-  as.character(row$participating_org_role)
    org_narratives <-  as.character(row$participating_org_narrative)
    org_types <-  as.character(row$participating_org_type)
    org_refs <-  as.character(row$participating_org_ref)
  
    role_split <-  stringr::str_split(org_roles,",")[[1]]
    narr_split <-  stringr::str_split(org_narratives,",")[[1]]
    type_split <-  stringr::str_split(org_types,",")[[1]]
    ref_split <-  stringr::str_split(org_refs,",")[[1]]
  
    max_len <-  max(length(role_split),
                    length(narr_split),
                    length(type_split),
                    length(ref_split))
  
  if(length(role_split)<max_len){
    lendiff <-  max_len - length(role_split)
    role_split <-  c(role_split, rep("",lendiff))
  }
  if(length(narr_split) < max_len){
    lendiff <-  max_len - length(narr_split)
    narr_split <-  c(narr_split, rep("",lendiff))
  }
  if(length(type_split) < max_len){
    lendiff <-  max_len - length(type_split)
    type_split <-  c(type_split, rep("",lendiff))
  }
  if(length(ref_split) < max_len){
    lendiff <-  max_len - length(ref_split)
    ref_split <-  c(ref_split, rep("",lendiff))
  }
  row_df <-  data.frame(iati_identifier = iatiIdentifier,
                        participating_org_role=role_split,
                        participating_org_narrative=narr_split,
                        participating_org_type=type_split,
                        participating_org_ref=ref_split)
  
  ## Add label  #####
  row_df$participating_org_roleLabel <- ""
  row_df$participating_org_typeLabel <- ""
  for ( j in 1:nrow(row_df)) {
    # j <- 2
    row_df[ j, c("participating_org_roleLabel")] <-  ifelse( identical(as.character(IatiTidy::OrganisationRole$name[IatiTidy::OrganisationRole$code ==row_df[j, c("participating_org_role")] ]), character(0)),
                                                  paste("No Matching Label"),
                                                  as.character(IatiTidy::OrganisationRole$name[IatiTidy::OrganisationRole$code ==row_df[j, c("participating_org_role")] ]) )
    
    row_df[ j, c("participating_org_typeLabel")] <-  ifelse( identical(as.character(IatiTidy::OrganisationType$name[IatiTidy::OrganisationType$code ==row_df[j, c("participating_org_role")] ]), character(0)),
                                                 paste("No Matching Label"),
                                                 as.character(IatiTidy::OrganisationType$name[IatiTidy::OrganisationType$code ==row_df[j, c("participating_org_role")] ]))
    

  }
  #names(row_df)
  #names(dataImplementers)
  ## Bind
  dataImplementers <- rbind(dataImplementers[ , c("iati_identifier",
                                      "participating_org_role",      
                                      "participating_org_roleLabel",       
                                      "participating_org_narrative" , 
                                      "participating_org_ref",     
                                      "participating_org_type" ,    
                                      "participating_org_typeLabel")], 
                      row_df[ , c("iati_identifier",       
                                  "participating_org_role",      
                                  "participating_org_roleLabel",       
                                  "participating_org_narrative" , 
                                  "participating_org_ref",     
                                  "participating_org_type" ,    
                                  "participating_org_typeLabel")]
  )
  
  #cat(paste0("merged: ", i, "-" , iatiIdentifier, "\n"))
  rm(row_df)
  }
  
  ## Remove first line  
  dataImplementers[1, ] <- NULL
  
  return(dataImplementers)
  #row_df = subset(row_df,role=="4")
}  