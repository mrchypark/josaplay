#' @importFrom purrr when
chk <- function(textko) {
  . <- NULL
  stopifnot(is_utf8(textko))

  textko %>%
    trimws() %>%
    substr(nchar(.), nchar(.)) %>%
    purrr::when(
      is_hangul(.) & !is_number(.) ~ utf8ToInt_as(.) ,
      !is_hangul(.) & is_number(.) ~ cvt_num2h(.) ,
       ~ stop("Not support character. Please ender hangul or number")
    )
}


#' @importFrom utf8 utf8_valid
is_utf8 <- utf8::utf8_valid

is_hangul <- function(textko) {
  utf8ToInt_as(textko) %in% 44032:55175
}

is_number <- function(textnum){
  textnum %>%
    quite_as_numeric() %>%
    is.na() %>%
    `!`()
}

is_modone <- function(koint) {
  ((koint - 44032) %% 28) == 0
}
