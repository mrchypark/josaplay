## code to prepare `josa_table` dataset goes here

josa_table <- data.frame(
  js1 = c("을","은","이","과","이나","으로","아","이랑","이며","이다", "이가"),
  js2 = c("를","는","가","와","나","로","야","랑","며","다", "가")
)

usethis::use_data(josa_table, overwrite = TRUE, internal = TRUE)
