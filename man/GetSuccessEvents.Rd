% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/GetSuccessEvents.R
\name{GetSuccessEvents}
\alias{GetSuccessEvents}
\title{Get Success Events Associated with a Report Suite}
\usage{
GetSuccessEvents(reportsuite.ids)
}
\arguments{
\item{reportsuite.ids}{report suite id (or list of report suite ids)}
}
\value{
Data frame
}
\description{
Gets success event definitions for the specified report suite(s).
Useful to audit or document a report suite or company in Adobe Analytics.
}
\details{
This function requires having a character vector with one or more valid Report Suites specified.
}
\examples{
\dontrun{
events <- GetSuccessEvents("your_report_suite")

events2 <- GetSuccessEvents(report_suites$rsid)
}
}

