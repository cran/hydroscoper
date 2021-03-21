## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

chk_online <- FALSE

library(pingr)

# helper function to check if a sub-domain is online
online <- function(h_url){
  !is.na(pingr::ping(h_url, count = 1))
}

# check if sub-domains are online
chk_online   <- online("kyy.hydroscope.gr")


## ----load_libraries-----------------------------------------------------------
library(hydroscoper)
library(ggplot2)
library(tibble)


## ----subset_data--------------------------------------------------------------
# load data
data("stations")

# subset stations data
kyy_stations <- subset(stations, subdomain == "kyy")

# view kyy stations
kyy_stations

## ----kyy_stations_map---------------------------------------------------------
ggplot() + 
  geom_polygon(data = greece_borders,
               aes(long, lat, group = group),
               fill = "grey",
               color = NA) +
  geom_point(data = kyy_stations,
             aes(x = longitude, y = latitude),
             color = "#E64B35FF") +
  coord_fixed(ratio=1) +
  theme_bw()

## ----subset_timeseries, eval = chk_online-------------------------------------
#  station_ts <- subset(timeseries, station_id == 200200)
#  station_ts

## ----get_timeseries, eval = chk_online----------------------------------------
#  ts_raw <- get_data(subdomain = "kyy", time_id = 56)
#  ts_raw

## ----plot_time_series, eval = chk_online--------------------------------------
#  ggplot(data = ts_raw, aes(x = date, y = value))+
#    geom_line()+
#    labs(title= "30 min precipitation",
#         subtitle = "station 200200",
#         x="Date", y = "Rain height (mm)")+
#    theme_classic()

