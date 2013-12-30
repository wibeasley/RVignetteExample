RVignetteExample
================

Minimal example of a legal R vignette using devtools and knitr's code-behind

# Goals of this Package
This vignette is a minimal example of an R package that has a nonstandard vignette.  I would like to have a working example of a vignette with these features: 
 1. Is built with `knitr` instead of `Sweave`.  
 1. Uses `knitr`'s [code externalization](http://yihui.name/knitr/demo/externalization/) feature, where almost all the R code lives in a dedicated *.R file.  I've added `vignettes/CodeBehindVignette.R` to .Rbuildignore, but I don't know if that's necessary.
 1. Is **not** rebuilt every time the package is checked.  I am pretending this vignette takes a long time to run and compile, and should not be run on CRAN or win-builder computer (or even run on the developer's computer is they don't want to take 5+ minutes)
 1. Saves images to a dedicated directory to make it easier to track changes in GitHub.  Presumably this directory is `./vignettes/FigureRmd`, but the location doesn't really matter to me.  I've added this folder to .Rbuildignore, but I'm not sure that's necessary.

I chose an Rmd file instead of a Rnw, so that it could be more portable and run on more development boxes, and increase the chance of getting a more helpful response.  If these two types of files handles things differently, I'll add an Rnw example.  I am intentionally not using knitr's caching mechanism, in case it makes package development and portability trickier.

I know there were a few tricks to keep the vignettes from being rebuilt automatically, such as [placing a stub Rnw file in the `inst/doc` directory](https://github.com/LiveOak/NlsyLinksStaging/blob/70456b0cd99c77627f338daf977a9fa78cef85b9/NlsyLinks/inst/doc/NlsyAce.Rnw).  But I'm not sure that's legal since R changed the file structure of vignettes (like splitting up the files in the `./vignettes/` and `./inst/doc/`).  Besides, I'd like to construct them in a consistent way with devtools, to reduce the chance for complications later.  I wondering if devtools is planning to do this a different way than the [Makefile approach described in R-exts](http://cran.r-project.org/doc/manuals/R-exts.html#Writing-package-vignettes).

Can someone specify a structure that would work naturally with devtools?   If there's an existing resource that describes this, I'd like to know about it.  The "Package level documentation" chapter in [Advanced R Programming](http://adv-r.had.co.nz/Documenting-packages.html) looks like it was last updated before R 3.0 was released (because it doesn't mention knitr).  I've also looked at [R-exts](http://cran.r-project.org/doc/manuals/R-exts.html#Writing-package-vignettes), [knitr's vignette demo](http://yihui.name/knitr/demo/vignette/), and older sources like [Leisch's 2009 tutorial](http://cran.r-project.org/doc/contrib/Leisch-CreatingPackages.pdf).

Thank you, Will Beasley

The source for this vignette is on [GitHub](https://github.com/wibeasley/RVignetteExample/blob/master/vignettes/), and can be [previewed](http://htmlpreview.github.io/?https://github.com/wibeasley/RVignetteExample/blob/master/inst/doc/CodeBehindVignette.html).
