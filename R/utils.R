cvt_num2h <- function(number) {
  switch(
    as.character(number),
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

#' @importFrom utf8 as_utf8
as_utf8 <- utf8::as_utf8

utf8ToInt_as <- function(textko) {
  utf8ToInt(as_utf8(textko))
}

quite_as_numeric <- function(x, ...) {
  suppressWarnings(as.numeric(x, ...))
}
