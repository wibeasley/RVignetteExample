##' @name ComplicatedFunction
##' @export
##' 
##' @title A function that pretends to be complicated
##' 
##' @description This function's real purpose is to act like a complicated operation that justifies
##' that the package's vignette not be run every time the pacakge is built.  The vignette code
##' should be run only on the developer's computer
##' 
##' @param operationDurationInSeconds The number of seconds the operations requires to complete.  \code{numeric}.
##' 
##' @return Returns a random  \code{character}  value that is 10 lowercase letters long.
##' @examples
##' require(graphics)
##' require(RVignetteExample)
##' (randomLetters <- ComplicatedFunction(operationDurationInSeconds=2))
##' plot(x=1:10, y=10:1)
##' text(x=1:10, y=1:10, labels=randomLetters)

ComplicatedFunction <- function( operationDurationInSeconds = 5.0 ) {  
  testit::assert("The `operationDurationInSeconds` must be a positive numeric value.", operationDurationInSeconds >= 0)
 
  base::Sys.sleep(operationDurationInSeconds)
  
  randomString <- paste0(letters[sample(x=seq_len(26), size=10L)], collapse="")
  
  return( randomString )
}
