#' gwawa support
#'
#' @param textko target text
#' @importFrom purrr when
#' @export
jsp_gwawa <- function(textko){
  textko %>%
    chk() %>%
    purrr::when(
      is_modone(.) ~ add_gwa(.),
      ~ add_wa(.)
    )
}

#' eunneun support
#'
#' @param textko target text
#' @importFrom purrr when
#' @export
jsp_eunneun <- function(textko){
  textko %>%
    chk() %>%
    purrr::when(
      is_modone(.) ~ add_neum(.),
      ~ add_eum(.)
    )
}

#' iga support
#'
#' @param textko target text
#' @importFrom purrr when
#' @export
jsp_iga <- function(textko){
  textko %>%
    chk() %>%
    purrr::when(
      is_modone(.) ~ add_ga(.),
      ~ add_i(.)
    )
}

#' eulleul support
#'
#' @param textko target text
#' @importFrom purrr when
#' @export
jsp_eulleul <- function(textko){
  textko %>%
    chk() %>%
    purrr::when(
      is_modone(.) ~ add_leul(.),
      ~ add_eul(.)
    )
}
