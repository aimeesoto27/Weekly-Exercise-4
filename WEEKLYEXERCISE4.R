<<<<<<< HEAD
olympics <- read_csv("Olympics.csv")

#a.Countries with largest delegation in 1992
delegation_1992 <- olympics %>%
  filter(year == 1992) %>%
  select(country, athletes) %>%
  arrange(desc(athletes))

delegation_1992

#b.Gold medals over time for specific countries
target_countries <- c("United States", "France", "Germany", "Russia", "China")

gold_trends <- olympics %>%
  filter(country %in% target_countries)

ggplot(gold_trends, aes(x = year, y = gold, color = country)) +
  geom_line() +
  geom_point() +
  labs(title = "Gold Medals Over Time",
       x = "Year",
       y = "Gold Medals") +
  theme_minimal()
=======
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

>>>>>>> DEV
