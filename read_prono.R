# Lectura de la planilla desde drive
library(tidyverse)
library(googlesheets4)

loc1 <- read_sheet("https://docs.google.com/spreadsheets/d/1c5Ms_V3OUdvj8RSULipN5ZmKYsgtd9tDYJxfMy_JHVo/edit#",
           sheet = "CABA",
           skip = 3) %>% 
  janitor::clean_names() %>% 
  mutate(ciudad = "Ciudad de Buenos Aires")

loc2 <- read_sheet("https://docs.google.com/spreadsheets/d/1c5Ms_V3OUdvj8RSULipN5ZmKYsgtd9tDYJxfMy_JHVo/edit#",
                   sheet = "Salta",
                   skip = 3) %>% 
  janitor::clean_names() %>% 
  mutate(ciudad = "Salta")

loc3 <- read_sheet("https://docs.google.com/spreadsheets/d/1c5Ms_V3OUdvj8RSULipN5ZmKYsgtd9tDYJxfMy_JHVo/edit#",
                   sheet = "Cordoba",
                   skip = 3) %>% 
  janitor::clean_names() %>% 
  mutate(ciudad = "Córdoba Aero")

test <- read_sheet("https://docs.google.com/spreadsheets/d/1CZ608ea9joU7aEeuSztD-Yqm_GAoxecUNt2bjMtLnWk/edit#",
                   sheet = "Localidad 1",
                   skip = 3) %>% 
  janitor::clean_names() %>% 
  mutate(ciudad = "test")
