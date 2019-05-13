chk <- function(textko) {
  . <- NULL
  textko %>%
    trimws() %>%
    substr(nchar(.), nchar(.)) ->
    last

  if (!is_number(last)) {
    stopifnot(is_utf8(textko))
  }

  if (is_hangul(last) & !is_number(last)) {
    return(utf8ToInt_as(last))
  } else if (!is_hangul(last) & is_number(last)) {
    return(cvt_num2h(last))
  } else {
    stop("Not support character. Please ender hangul or number")
  }
  invisible(last)
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
