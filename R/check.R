chk <- function(textko) {
  . <- NULL
  stopifnot(is_utf8(textko))

  textko %>%
    trimws() %>%
    substr(nchar(.), nchar(.)) %>%
    purrr::when(
      is_hangul(.) & !is_number(.) ~ utf8ToInt(.) ,
      !is_hangul(.) & is_number(.) ~ cvt_num2h(.) ,
       ~ stop("Not support character. Please ender hangul or number")
    )
}


#' @importFrom utf8 utf8_valid
is_utf8 <- utf8::utf8_valid

#' @importFrom purrr map_lgl
is_hangul <- function(textko) {
  utf8ToInt_vec(textko) %>%
    purrr::map_lgl(~ all(.x  %in% 44032:55175))
}

## 12593:12686 is jamo

is_number <- function(target){
  target %>%
    quite_as_numeric() %>%
    is.na() %>%
    `!`()
}

is_modone <- function(koint) {
  ((koint - 44032) %% 28) == 0
}





