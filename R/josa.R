#' josa support
#'
#' @param textko target text in Korean encoding UTF-8
#' @param select Joso that need to select.
#' @export
josa <- function(textko, select) {
  js <- josa_table[(josa_table$js1 == select | josa_table$js2 == select), ]
  if (nrow(js) == 0) {
    stop(paste0("Not support josa. input:", select))
  }
  paste0(textko, ifelse(is_modone(chk(textko)), js$js2, js$js1))
}

