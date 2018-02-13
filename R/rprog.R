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
