 movies<-read.csv("Project-Data.csv")

 library(ggplot2)
 library(dbplyr)
 library(readxl)
 library(dplyr)
 library(tidyr)
 library(tidyselect)
 library(hrbrthemes)
 library(tidyverse)
 library(ggExtra)

 filtering_Genre<-(filter(movies,
                             Genre %in% c("action","adventure","animation","comedy","dr
ama")))
 
 filtering_studios<-(filter(filtering_Genre,
                               Studio %in% c("Buena Vista Studios","Sony","WB","Fox","Paramount
Pictures","Universal")))