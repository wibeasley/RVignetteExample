rm(list=ls(all=TRUE)) #Clear memory from previous runs.
require(devtools)
base::options(device = "windows") #http://support.rstudio.org/help/discussions/problems/80-error-in-function-only-one-rstudio-graphics-device-is-permitted

devtools::document()
devtools::check_doc() #Should return NULL
#  system("R CMD Rd2pdf --force --output=./RVignetteExampleDocumentationPeek.pdf ." )

devtools::run_examples(); dev.off() #This overwrites the NAMESPACE file too

# test_results <- devtools::test()
devtools::clean_vignettes()
devtools::build_vignettes() #Recover the codebehind file when it is deleted.

# devtools::build_win(version="R-devel") #CRAN submission policies encourage the development version
