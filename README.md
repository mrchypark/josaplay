
<!-- README.md is generated from README.Rmd. Please edit that file -->

# josaplay

<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/mrchypark/josaplay.svg?branch=master)](https://travis-ci.org/mrchypark/josaplay)
[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/mrchypark/josaplay?branch=master&svg=true)](https://ci.appveyor.com/project/mrchypark/josaplay)
[![Codecov test
coverage](https://codecov.io/gh/mrchypark/josaplay/branch/master/graph/badge.svg)](https://codecov.io/gh/mrchypark/josaplay?branch=master)
<!-- badges: end -->

The goal of josaplay is to …

## Installation

### NOT YET ON CRAN

You can install the released version of josaplay from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("josaplay")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("mrchypark/josaplay")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(josaplay)
jsp_gwawa("상품")
#> [1] "상품과"
jsp_gwawa("텀블러")
#> [1] "텀블러와"
jsp_eunneun("사랑")
#> [1] "사랑은"
jsp_eunneun("탁자")
#> [1] "탁자는"
jsp_iga("고객")
#> [1] "고객이"
jsp_iga("모니터")
#> [1] "모니터가"
jsp_eulleul("패키지")
#> [1] "패키지를"
jsp_eulleul("컵")
#> [1] "컵을"
```

## Todo

  - Support jamo text  
  - Support number text  
  - Support special characters text
