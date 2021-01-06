#' single_vocabulary
#'
#' Function to split sectors by activities.
#' Thanks to https://github.com/akmiller01/IATI-Covid
#'
#' @param row lines in the query extract
#'
#' @return Parsed content on activities from IATI-compliant datasets.
#'
#' @export
#'

single_vocabulary <-  function(row){
  codes = as.character(row$transaction.sector.code)
  percentages = as.character(row$transaction.sector.percentage)
  vocabularies = as.character(row$transaction.sector.vocabulary)
  
  code_split = stringr::str_split(codes,",")[[1]]
  if(length(code_split)==1 & length(percentages)==0){
    percentages = "100"
  }
  perc_split = stringr::str_split(percentages,",")[[1]]
  vocab_split = stringr::str_split(vocabularies,",")[[1]]
  if(length(code_split)!=length(perc_split) |
     length(perc_split)!=length(vocab_split) |
     length(vocab_split)!=length(code_split)
  ){
    row$transaction.sector.code = ""
    row$transaction.sector.percentage = ""
    row$transaction.sector.vocabulary = ""
    return(row)
  }
  row_df = data.frame(code = code_split,
                      percent = perc_split,
                      vocab = vocab_split)
  
  if("1" %in% vocab_split){
    row_df = subset(row_df,vocab=="1")
  } else if("2" %in% vocab_split){
    row_df = subset(row_df,vocab=="2")
  } else if("DAC" %in% vocab_split){
    row_df = subset(row_df,vocab=="DAC")
  } else {
    row_df = subset(row_df,is.na(vocab))
  }
  row$transaction.sector.code = paste0(row_df$code,collapse=",")
  row$transaction.sector.percentage = paste0(row_df$percent,collapse=",")
  row$transaction.sector.vocabulary = paste0(row_df$vocab,collapse=",")
  return(row)
}