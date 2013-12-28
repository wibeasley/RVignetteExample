rm(list=ls(all=TRUE))
# install_github("Rd2roxygen", "yihui")


devtools::build_github_devtools()
#### Restart R before continuing ####
install.packages("./devtools.zip", repos = NULL)

# Remove the package after installation
unlink("./devtools.zip")
