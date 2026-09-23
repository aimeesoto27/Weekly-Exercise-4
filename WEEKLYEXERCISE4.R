install.packages("usethis")
library(usethis)
git_default_branch()

system("git checkout -b DEV")
system("git push -u origin DEV")

library(readr)
library(tidyverse)
library(ggplot2)

olympics <- read_csv("olympics.csv")

#Calculate new variable
olympics <- olympics %>%
  mutate(total.medals = gold + silver + bronze)

#How many gold medals has each country won?
gold_by_country <- olympics %>%
  group_by(country) %>%
  summarise(total_gold = sum(gold, na.rm = TRUE)) %>%
  arrange(desc(total_gold))

gold_by_country

#How many total medals were given out each year?
medals_by_year <- olympics %>%
  group_by(year) %>%
  summarise(total_medals = sum(total.medals, na.rm = TRUE)) %>%
  arrange(year)

medals_by_year

