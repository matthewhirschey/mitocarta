
# mitocarta

<!-- badges: start -->
<!-- badges: end -->

This package contains the `mitocarta` dataset. It accompanies a workshop-style class that provides an
introduction to the emerging field of Data Science in R, including data
analysis and visualization, with a particular focus on its utility for
biological insight. This package also contains some utility functions for simple analyses.

## Installation

You **cannot** yet install the released version of tidybiology from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("mitocarta")
```

So in the meantime, use the development version from
[GitHub](https://github.com/hirscheylab/mitocarta) with:

``` r
# install.packages("devtools")
devtools::install_github("hirscheylab/mitocarta")
```


## Example

This is how to take a `glimpse` into the mitocarta dataset:

``` r
library(mitocarta)
glimpse(mitocarta)
```
