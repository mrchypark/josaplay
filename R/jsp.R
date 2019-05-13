#' josa support
#'
#' prefix jsp_ functions work support gwawa, eunneun, iga, eulleul
#'
#' @param textko target text in Korean encoding UTF-8
#' @rdname jsp
#' @name extract
#' @export
#' @examples
#'  jsp_gwawa("134")
#'  jsp_eulleul(15)
jsp_gwawa <- function(textko){
  . <- NULL
  textko %>%
    chk() %>%
    is_modone() %>%
    ifelse(wa, gwa) %>%
    paste0(textko, .)
}

#' @rdname jsp
#' @export
jsp_eunneun <- function(textko){
  . <- NULL
  textko %>%
    chk() %>%
    is_modone() %>%
    ifelse(neun, eun) %>%
    paste0(textko, .)
}

#' @rdname jsp
#' @export
jsp_iga <- function(textko){
  . <- NULL
  textko %>%
    chk() %>%
    is_modone() %>%
    ifelse(ga, i) %>%
    paste0(textko, .)
}

#' @rdname jsp
#' @export
jsp_eulleul <- function(textko){
  . <- NULL
  textko %>%
    chk() %>%
    is_modone() %>%
    ifelse(leul, eul) %>%
    paste0(textko, .)
}
