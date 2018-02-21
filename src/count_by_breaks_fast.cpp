#include <Rcpp.h>
using namespace Rcpp;

// x and breaks must be sorted
// [[Rcpp::export]]
IntegerVector count_between(const NumericVector& x, 
                            const NumericVector& breaks) {
  
  int K = breaks.length();
  IntegerVector counts(K);
  int c;
  
  NumericVector::const_iterator it = x.begin();
  double b = breaks[0];
  while (*it <= b) it++;  // values before the first break
  
  for (int k = 1; k < K; k++) {
    b = breaks[k];
    c = 0;
    while (*it <= b && it != x.end()) {
      c++;
      it++;
    } 
    counts[k] = c;
  }
  
  return counts;
}
