#' josa support (legacy)
#'
#' `r lifecycle::badge("deprecated")`
#' prefix jsp_ functions work support gwawa, eunneun, iga, eulleul
#'
#' @param textko target text in Korean encoding UTF-8
#' @rdname jsp
#' @name extract
#' @export
#' @examples
#'  jsp_gwawa("134")
#'  jsp_eulleul(15)
jsp_gwawa <- function(textko) {
  lifecycle::deprecate_warn("0.2.0", "jsp_gwawa()", "josa(select = 'must be a josa character')")
  josa(textko, intToUtf8(44284))
}

#' @rdname jsp
#' @export
jsp_eunneun <- function(textko) {
  lifecycle::deprecate_warn("0.2.0", "jsp_eunneun()",  "josa(select = 'must be a josa character')")
  josa(textko, intToUtf8(51008))
}

#' @rdname jsp
#' @export
jsp_iga <- function(textko) {
  lifecycle::deprecate_warn("0.2.0", "jsp_iga()",  "josa(select = 'must be a josa character')")
  josa(textko, intToUtf8(51060))
}

#' @rdname jsp
#' @export
jsp_eulleul <- function(textko) {
  lifecycle::deprecate_warn("0.2.0", "jsp_eulleul()",  "josa(select = 'must be a josa character')")
  josa(textko, intToUtf8(51012))
}
