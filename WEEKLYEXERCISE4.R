olympics <- read_csv("Olympics.csv")

#a.Countries with largest delegation in 1992
delegation_1992 <- olympics %>%
  filter(year == 1992) %>%
  select(country, athletes) %>%
  arrange(desc(athletes))

delegation_1992