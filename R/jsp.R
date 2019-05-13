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
      is_modone(.) ~ add_wa(.),
      ~ add_gwa(.)
    ) ->
    end
  textko %>%
    substr(1, nchar(.) - 1) %>%
    paste0(end)
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
      is_modone(.) ~ add_neun(.),
      ~ add_eun(.)
    ) ->
    end
  textko %>%
    substr(1, nchar(.) - 1) %>%
    paste0(end)
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
      is_modone(.) ~ add_ga(.),
      ~ add_i(.)
    ) ->
    end
  textko %>%
    substr(1, nchar(.) - 1) %>%
    paste0(end)
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
      is_modone(.) ~ add_leul(.),
      ~ add_eul(.)
    ) ->
    end
  textko %>%
    substr(1, nchar(.) - 1) %>%
    paste0(end)
}
