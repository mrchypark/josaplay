cvt_num2h <- function(number) {
  . <- NULL
  number %>%
    as.character() %>%
    switch(.,
      "1" = 51068,
      "2" = 51060,
      "3" = 49340,
      "4" = 49324,
      "5" = 50724,
      "6" = 50977,
      "7" = 52832,
      "8" = 54036,
      "9" = 44396,
      "0" = 49901
    )
}

#' @importFrom purrr map
utf8ToInt_vec <- function(textko) {
  purrr::map(textko, utf8ToInt)
}

quite_as_numeric <- function(x, ...) {
  suppressWarnings(as.numeric(x, ...))
}

add_josa <- function(josa) {
  function(koint) {
    paste0(intToUtf8(koint), intToUtf8(josa))
  }
}

add_gwa <- add_josa(44284)
add_wa <- add_josa(50752)

add_eun <- add_josa(51008)
add_neun <- add_josa(45716)

add_i <- add_josa(51060)
add_ga <- add_josa(44032)

add_eul <- add_josa(51012)
add_leul <- add_josa(47484)
