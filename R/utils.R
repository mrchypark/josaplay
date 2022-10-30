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

#' @importFrom utf8 as_utf8
as_utf8 <- utf8::as_utf8

utf8ToInt_as <- function(textko) {
  utf8ToInt(as_utf8(textko))
}

quite_as_numeric <- function(x, ...) {
  suppressWarnings(as.numeric(x, ...))
}

gwa <- intToUtf8(44284)
wa <- intToUtf8(50752)

eun <- intToUtf8(51008)
neun <- intToUtf8(45716)

i <- intToUtf8(51060)
ga <- intToUtf8(44032)

eul <- intToUtf8(51012)
leul <- intToUtf8(47484)

a <- intToUtf8(50500)
ya <- intToUtf8(50556)

ena <- intToUtf8(c(51060, 45208))
na <- intToUtf8(45208)
