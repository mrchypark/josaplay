
<!-- README.md is generated from README.Rmd. Please edit that file -->

# josaplay [<img src="man/figures/logo.png" align="right" height=140/>](https://mrchypark.github.io/josaplay/index.html)

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/mrchypark/josaplay/workflows/R-CMD-check/badge.svg)](https://github.com/mrchypark/josaplay/actions)
[![CRAN
status](https://www.r-pkg.org/badges/version/josaplay)](https://CRAN.R-project.org/package=josaplay)
[![runiverse-name](https://mrchypark.r-universe.dev/badges/:name)](https://mrchypark.r-universe.dev/)
[![runiverse-package](https://mrchypark.r-universe.dev/badges/josaplay)](https://mrchypark.r-universe.dev/ui#packages)
[![metacran
downloads](https://cranlogs.r-pkg.org/badges/josaplay)](https://cran.r-project.org/package=josaplay)
[![Downloads](https://cranlogs.r-pkg.org/badges/grand-total/josaplay)](https://cran.rstudio.com/package=josaplay)
[![Codecov test
coverage](https://codecov.io/gh/mrchypark/josaplay/branch/main/graph/badge.svg)](https://app.codecov.io/gh/mrchypark/josaplay?branch=main)
<!-- badges: end -->

The goal of josaplay is to provide functions to add josa in Korean text.
It is useful with Rmarkdown.

## Installation

``` r
# CRAN version
install.packages("josaplay")

# Dev version
install.packages("josaplay", repos = "https://mrchypark.r-universe.dev")
```

## Example

This is a basic example which shows you how to solve a common problem:

### v0.2.0

Breaking change from v0.1.3

``` r
library(josaplay)
# 과/와
josa("상품", "과")
#> [1] "상품과"
josa("상품", "와")
#> [1] "상품과"
josa("텀블러", "과")
#> [1] "텀블러와"
josa("텀블러", "와")
#> [1] "텀블러와"

# number
josa("145", "이")
#> [1] "145가"
josa("k146", "이")
#> [1] "k146이"
```

### support josa

을 / 를  
은 / 는  
이 / 가  
과 / 와  
이나 / 나  
으로 / 로  
아 / 야  
이랑 / 랑  
이며 / 며  
이다 / 다  
이가 / 가

-   All josa can use `select` param on `josa()` but `가` is work as only
    `이/가` not `이가/가`.

### v0.1.3

``` r
library(josaplay)

# 가/와
jsp_gwawa("상품")
#> Warning: `jsp_gwawa()` was deprecated in josaplay 0.2.0.
#> ℹ Please use the `select` argument of `josa()` instead.
#> [1] "상품과"
jsp_gwawa("텀블러")
#> [1] "텀블러와"

# 은/는
jsp_eunneun("사랑")
#> Warning: `jsp_eunneun()` was deprecated in josaplay 0.2.0.
#> ℹ Please use the `select` argument of `josa()` instead.
#> [1] "사랑은"
jsp_eunneun("탁자")
#> [1] "탁자는"

# 이/가
jsp_iga("고객")
#> Warning: `jsp_iga()` was deprecated in josaplay 0.2.0.
#> ℹ Please use the `select` argument of `josa()` instead.
#> [1] "고객이"
jsp_iga("모니터")
#> [1] "모니터가"

# 을/를
jsp_eulleul("패키지")
#> Warning: `jsp_eulleul()` was deprecated in josaplay 0.2.0.
#> ℹ Please use the `select` argument of `josa()` instead.
#> [1] "패키지를"
jsp_eulleul("컵")
#> [1] "컵을"

# number
jsp_iga("145")
#> [1] "145가"
jsp_iga("k146")
#> [1] "k146이"

# with pipe
"상품" %>% jsp_gwawa()
#> [1] "상품과"
```

## Todo

-   support only jamo character
-   support English letters
-   support special character
