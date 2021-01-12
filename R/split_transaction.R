#' split_transaction
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

split_transaction <-  function(row){
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
  row_df <-  data.frame(role=role_split,
                        narr=narr_split,
                        type=type_split,
                        ref=ref_split)
  
  row_df = subset(row_df,role=="4")
  row$implementing_narrative = paste0(row_df$narr,collapse=",")
  row$implementing_type = paste0(row_df$type,collapse=",")
  row$implementing_ref = paste0(row_df$ref,collapse=",")
  
  return(row)
}