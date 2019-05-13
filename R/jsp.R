#' gwawa support
#'
#' @param textko target text
#' @importFrom purrr when
#' @export
jsp_gwawa <- function(textko){
  . <- NULL
  textko %>%
    chk() %>%
    purrr::when(
      is_modone(.) ~ wa,
      ~ gwa
    ) %>%
    paste0(textko, .)
}

#' eunneun support
#'
#' @param textko target text
#' @importFrom purrr when
#' @export
jsp_eunneun <- function(textko){
  . <- NULL
  textko %>%
    chk() %>%
    purrr::when(
      is_modone(.) ~ neun,
      ~ eun
    ) %>%
    paste0(textko, .)
}

#' iga support
#'
#' @param textko target text
#' @importFrom purrr when
#' @export
jsp_iga <- function(textko){
  . <- NULL
  textko %>%
    chk() %>%
    purrr::when(
      is_modone(.) ~ ga,
      ~ i
    ) %>%
    paste0(textko, .)
}

#' eulleul support
#'
#' @param textko target text
#' @importFrom purrr when
#' @export
jsp_eulleul <- function(textko){
  . <- NULL
  textko %>%
    chk() %>%
    purrr::when(
      is_modone(.) ~ leul,
      ~ eul
    ) %>%
    paste0(textko, .)
}
