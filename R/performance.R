################################################################################

#' @importFrom primefactr AllPrimesUpTo
#' @export
primefactr::AllPrimesUpTo

################################################################################

#' Count number of values between breaks
#'
#' @param x A vector.
#' @param breaks A vector of breaks (should be sorted).
#'
#' @return A vector of counts corresponding of the number of values of x that
#'   are between each breaks.
#' @export
#'
#' @examples
#' count_by_breaks(x = 1:10, breaks = c(0.5, 1, 3, 9, 9.5, 10))
count_by_breaks <- function(x, breaks) {
  -diff(colSums(outer(x, breaks, '>')))
}

################################################################################

#' @inherit count_by_breaks title description params return
#'
#' @export
#'
#' @examples
#' count_by_breaks_fast(x = 1:10, breaks = c(0.5, 1, 3, 9, 9.5, 10))
count_by_breaks_fast <- function(x, breaks) {
  count_between(sort(x), breaks)[-1]
}

################################################################################