#' @details This function requires having a character vector with one or more valid Report Suites specified.
#'
#' @description Get IP Obfuscation status for the requested report suites. 
#' 
#' @title Get IP Obfuscation Status for a Report Suite(s)
#' 
#' @param reportsuite.ids Report suite id (or list of report suite ids)
#'
#' @importFrom jsonlite toJSON
#' @importFrom plyr rbind.fill
#'
#' @return Data frame
#'
#' @export
#'
#' @examples
#' \dontrun{
#' ipobf <- GetIPObfuscation("your_report_suite")
#' 
#' ipobf2 <- GetIPObfuscation(report_suites$rsid)
#' }

GetIPObfuscation <- function(reportsuite.ids) {
  
  request.body <- c()
  request.body$rsid_list <- reportsuite.ids
  
  response <- ApiRequest(body=toJSON(request.body),func.name="ReportSuite.GetIPObfuscation")
  
  #Don't even know if this is possible, holdover from GetSegments code
  if(length(response$ip_obfuscation[[1]]) == 0) {
      return(print("IP Obfuscation Not Enabled For This Report Suite"))
    }

  return(response)

}