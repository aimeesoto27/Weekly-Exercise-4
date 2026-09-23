install.packages("usethis")
library(usethis)
git_default_branch()

system("git checkout -b DEV")
system("git push -u origin DEV")
