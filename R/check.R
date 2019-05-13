chk_utf8 <- utf8::utf8_valid

#' @importFrom purrr map
utf8ToInt_vec <- function(textko) {
  purrr::map(textko, utf8ToInt)
}

#' @importFrom purrr map_lgl
chk_hangul <- function(textko) {
  utf8ToInt_vec(textko) %>%
    purrr::map_lgl(~ all(.x  %in% c(12593:12686,44032:55175)))
}


chk_ja_done <- function(textko) {
  stopifnot(chk_utf8(textko))
  stopifnot(chk_hangul(textko))
  return(textko)
}
