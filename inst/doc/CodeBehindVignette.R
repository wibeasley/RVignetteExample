
## ----set_root_directory, echo=FALSE, results='hide'----------------------
#It works better if the root directory is set in its own chunk.
library(knitr)
# stop(getwd())
# knitr::opts_knit$set(root.dir = "../")


## ----set_options, echo=FALSE, results='hide'-----------------------------
knitr::opts_chunk$set(
    comment = NA, 
    tidy = FALSE,
    fig.width = 4.5, 
    fig.height = 3, 
    out.width = "300px", #This affects only the markdown, not the png.  Height will scale appropriately.
    fig.path = 'FigureRmd/',
    dpi = 200
)

base::options(width=120) #So the output is 50% wider than the default.

#read_chunk("vignettes/CodeBehindVignette.R")
read_chunk("CodeBehindVignette.R")


## ----Definitions---------------------------------------------------------


## ----Analysis1-----------------------------------------------------------


## ----Analysis2-----------------------------------------------------------


## ----Graph1--------------------------------------------------------------


## ----Graph2--------------------------------------------------------------


## ----SessionInfo, echo=FALSE---------------------------------------------
base::cat("Report created by", base::Sys.info()["user"], "at", base::strftime(base::Sys.time(), "%c, %z"))
utils::sessionInfo()


