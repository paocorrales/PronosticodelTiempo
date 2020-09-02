# Lectura de la planilla desde drive
library(tidyverse)
library(googlesheets4)

loc1 <- read_sheet("https://docs.google.com/spreadsheets/d/1c5Ms_V3OUdvj8RSULipN5ZmKYsgtd9tDYJxfMy_JHVo/edit#",
           sheet = "Localidad 1",
           skip = 3)

loc2 <- read_sheet("https://docs.google.com/spreadsheets/d/1c5Ms_V3OUdvj8RSULipN5ZmKYsgtd9tDYJxfMy_JHVo/edit#",
                   sheet = "Localidad 2",
                   skip = 3)

loc3 <- read_sheet("https://docs.google.com/spreadsheets/d/1c5Ms_V3OUdvj8RSULipN5ZmKYsgtd9tDYJxfMy_JHVo/edit#",
                   sheet = "Localidad 3",
                   skip = 3)

test <- read_sheet("https://docs.google.com/spreadsheets/d/1CZ608ea9joU7aEeuSztD-Yqm_GAoxecUNt2bjMtLnWk/edit#",
                   sheet = "Localidad 1",
                   skip = 3) %>% 
  janitor::clean_names() %>% 
  mutate(ciudad = "test")
