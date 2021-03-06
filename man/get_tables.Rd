% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_tables.R
\name{get_tables}
\alias{get_tables}
\alias{get_stations}
\alias{get_timeseries}
\alias{get_instruments}
\alias{get_water_basins}
\alias{get_water_divisions}
\alias{get_political_divisions}
\alias{get_variables}
\alias{get_units_of_measurement}
\alias{get_time_steps}
\alias{get_owners}
\alias{get_instruments_type}
\alias{get_station_type}
\alias{get_database}
\title{Get tibbles from Hydroscope}
\usage{
get_stations(subdomain = c("kyy", "ypaat", "emy", "deh"), translit = TRUE)

get_timeseries(subdomain = c("kyy", "ypaat", "emy", "deh"), translit = TRUE)

get_instruments(subdomain = c("kyy", "ypaat", "emy", "deh"), translit = TRUE)

get_water_basins(subdomain = c("kyy", "ypaat", "emy", "deh"), translit = TRUE)

get_water_divisions(
  subdomain = c("kyy", "ypaat", "emy", "deh"),
  translit = TRUE
)

get_political_divisions(
  subdomain = c("kyy", "ypaat", "emy", "deh"),
  translit = TRUE
)

get_variables(subdomain = c("kyy", "ypaat", "emy", "deh"), translit = TRUE)

get_units_of_measurement(
  subdomain = c("kyy", "ypaat", "emy", "deh"),
  translit = TRUE
)

get_time_steps(subdomain = c("kyy", "ypaat", "emy", "deh"), translit = TRUE)

get_owners(subdomain = c("kyy", "ypaat", "emy", "deh"), translit = TRUE)

get_instruments_type(
  subdomain = c("kyy", "ypaat", "emy", "deh"),
  translit = TRUE
)

get_station_type(subdomain = c("kyy", "ypaat", "emy", "deh"), translit = TRUE)

get_database(subdomain = c("kyy", "ypaat", "emy", "deh"), translit = TRUE)
}
\arguments{
\item{subdomain}{One of the subdomains of Hydroscope in the vector
\code{c("kyy", "ypaat", "emy", "deh")}.}

\item{translit}{Automatically transliterate Greek to Latin.}
}
\value{
If \code{subdomain} is one of:
\itemize{
\item{\code{kyy}, Ministry of Environment and Energy.}
\item{\code{ypaat}, Ministry of Rural Development and Food.}
\item{\code{deh}, Greek Public Power Corporation.}
\item{\code{emy}, National Meteorological Service.}
}
returns a tibble or a named list with tibbles from the corresponding
database. Otherwise returns an error message.
}
\description{
A family of functions that return a tibble from a specific
 database from Hydroscope using the Enhydris API. \code{get_database} returns
 a named list of tibbles using all the family's functions.
}
\note{
Objects' IDs are not unique among the different Hydroscope databases.
For example, time series' IDs from http://kyy.hydroscope.gr have same values
with time series' from http://ypaat.hydroscope.gr.

The coordinates of the stations are based on the European Terrestrial
Reference System 1989 (ETRS89).
}
\examples{

\dontrun{

# data will be downloaded from Ministry of Environment and Energy (kyy):
subdomain <- "kyy"

# stations
kyy_stations <- get_stations(subdomain)

# time series
kyy_ts <- get_timeseries(subdomain)

# instruments
kyy_inst <- get_instruments(subdomain)

# water basins
kyy_wbas <- get_water_basins(subdomain)

# water divisions
kyy_wdiv <- get_water_divisions(subdomain)

# political divisions
kyy_pol <- get_political_divisions(subdomain)

# variables
kyy_vars <- get_variables(subdomain)

# units of measurement
kyy_units <- get_units_of_measurement(subdomain)

# time steps
kyy_time_steps <- get_time_steps(subdomain)

# owners
kyy_owners <- get_owners(subdomain)

# instruments type
kyy_instr_type <- get_instruments_type(subdomain)

# stations' type
kyy_st_type <- get_station_type(subdomain)

# use all the get_ functions above to create a named list with tibbles
kyy_db <- get_database(subdomain)
}

}
\references{
The data are retrieved from the Hydroscope's site databases:
\itemize{
\item Ministry of Environment, Energy and Climate Change.
\item Ministry of Rural Development and Food.
\item National Meteorological Service.
\item Greek Public Power Corporation.
}
}
\author{
Konstantinos Vantas, \email{kon.vantas@gmail.com}
}
