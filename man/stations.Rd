% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{stations}
\alias{stations}
\title{stations}
\format{
A tibble with 2,322 rows and 9 variables:
\describe{
    \item{station_id}{The station's ID from the domain's database}
    \item{name}{The station's name}
    \item{water_basin}{The station's Water Basin}
    \item{water_division}{The station's Water Division}
    \item{owner}{The station's owner}
    \item{longitude}{The station's longitude in decimal degrees, ETRS89}
    \item{latitude}{The station's latitude in decimal degrees, ETRS89}
    \item{altitude}{The station's altitude, meters above sea level}
    \item{subdomain}{The corresponding Hydroscope's database}
}
}
\usage{
stations
}
\description{
Stations' data from the Greek National Data Bank for
Hydrological and Meteorological Information. This dataset is a comprehensive
look-up table with geographical and ownership information of the available
stations in all Hydroscope's databases.
}
\keyword{datasets}
