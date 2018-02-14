################################################################################

#' Split indices in K groups
#'
#' @param ind Vector of indices to split.
#' @param K Number of groups to make.
#'
#' @return A list of `K` groups of indices.
#' @export
#'
#' @examples
#' advr38pkg::split_ind(1:12, 5)
#' advr38pkg::split_ind(1:40, 3)
#' advr38pkg::split_ind(10, 5)
split_ind <- function(ind, K) {
  ind.group <- sample(rep_len(1:K, length(ind)))
  split(ind, ind.group)
}

################################################################################

#' Get the sums of blocks
#' 
#' Get the sums of blocks of `n` elements of a vector `x`.
#'
#' @param x Numeric vector.
#' @param n Positive number as the size of the blocks.
#'
#' @return The sums of each block.
#' @export
#'
#' @examples
#' sum_every(1:10, 2)
#' sum_every(1:10, 5)
sum_every <- function(x, n) {
  if (mod <- length(x) %% n) x <- c(x, rep(0, n - mod))
  dim(x) <- c(n, length(x) / n)
  colSums(x)
}

################################################################################