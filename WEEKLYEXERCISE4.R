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
