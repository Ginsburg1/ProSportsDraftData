#' Silly Printer function
#'
#' @param x what you want in second column
#' @param y what you want in first  column
#'
#' @return A tibble
#' @export
#'
#' @importFrom tibble data_frame
#' @importFrom utils head adist
#' @examples
#' output(x = rnorm(5), y = rnorm(5))
output <- function(x,y) {
  x = data_frame(x = x, y = y)
  print(head(x))
  return(x)
}

