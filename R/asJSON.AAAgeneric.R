#' @exportMethod  asJSON
#' @exportPattern asJSON\..*
#' @examples
#' # Create JSON serializing for any class
#' create.bart <- function() {
#'   structure("Bart", class="bart")
#' }
#'
#' oldClass("bart")
#' setMethod("asJSON", signature("bart"),
#'   function(x, ...) asJSON("'eat my shorts'", auto_unbox=TRUE)
#' )
#'
#' bart <- create.bart()
#' asJSON(bart)
#'
#'
#' simpsons <- list(
#'   "homer",
#'   "marge",
#'   children=list("lisa",bart)
#' )
#' toJSON(simpsons)
#'
setGeneric("asJSON", function(x, ...) {
  standardGeneric("asJSON")
})
