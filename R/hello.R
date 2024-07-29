#' My Hello World Function
#'
#' @param x The Name of the person
#'
#' @return The output of \code{\link{print}}
#' @export
#'
#' @examples
#' hello("John")
#' \dontrun{
#' hello("Steve")
#' }
#'
hello <- function(x) {
  print(paste("Hello, world!", x))
}


