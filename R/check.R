chk <- function(textko) {
  tk <- trimws(textko)
  last <- substr(tk, nchar(tk), nchar(tk))

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

is_number <- function(textnum) {
  !is.na(quite_as_numeric(textnum))
}

is_modone <- function(koint) {
  ((koint - 44032) %% 28) == 0
}
