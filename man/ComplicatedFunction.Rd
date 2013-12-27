\name{ComplicatedFunction}
\alias{ComplicatedFunction}
\title{A function that pretends to be complicated}
\usage{
ComplicatedFunction(operationDurationInSeconds = 5)
}
\arguments{
  \item{operationDurationInSeconds}{The number of seconds
  the operations requires to complete.  \code{numeric}.}
}
\value{
Returns a random \code{character} value that is 10
lowercase letters long.
}
\description{
This function's real purpose is to act like a complicated
operation that justifies that the package's vignette not be
run every time the pacakge is built.  The vignette code
should be run only on the developer's computer
}
\examples{
require(RVignetteExample)
ComplicatedFunction(operationDurationInSeconds=2)
}

