#include <Rcpp.h>
using namespace Rcpp;

//' Random Walk
//' 
//' Negative proportion of a Gaussian random walk.
//'
//' @param N Size of the walk.
//'
//' @examples
//' set.seed(1)
//' random_walk_neg_prop(1e6)
//'
//' @export
//'
// [[Rcpp::export]]
double random_walk_neg_prop(double N) {
  
  double x = 0;
  int count = 0;
  for (int i = 0; i < N; i++) {
    x += norm_rand();
    if (x < 0) count++;
  }
  
  return count / N;
}
