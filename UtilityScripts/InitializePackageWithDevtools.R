require(devtools)
setwd("C:/Users/Will/Documents/GitHub/")

devtools::create(  path=file.path(getwd(), "RVignetteExample"), check=TRUE, description=list(
  "Title"= "Minimal Example of a Package Nonstandard Vignette",
  "Description"="Minimal example of a legal R vignette using devtools and knitr's code-behind",
  "Date"="2013-12-27",
  "License"= "GPL (>= 2)",
  "Authors@R"='c(person("Will", "Beasley", role = c("aut", "cre"), email = "wibeasley@hotmail.com"))'
))
