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


#' Title
#'
#' @param x
#' @param y
#'
#' @return
#' @export
#'
#' @examples
output <- function(x,y) {
  print(paste("x ==", x, "y ==", y))
}
