library(showtext)

font_add_google('Gugi', 'gugi')
showtext_auto()

library(ggplot2)
library(hexSticker)

p <- ggplot(NULL, aes(x = 1, y = 1)) + xlim(-1,1) + ylim(0.8, 1.2) +
  annotate(
    geom = 'text',
    x = -0.5,
    y = 1,
    size = 50,
    family = 'gugi',
    label = '을',
    colour = "#C70D3A"
  ) +
  annotate(
    geom = 'text',
    x = 0,
    y = 1,
    size = 50,
    family = 'gugi',
    label = '/',
    colour = "#F45905"
  ) +
  annotate(
    geom = 'text',
    x = 0.45,
    y = 1,
    size = 50,
    family = 'gugi',
    label = '를',
    colour = "#45969B"
  ) +
  theme_void()
p
# for windows
sticker(
  p,
  s_x = 1,
  s_y = 1.2,
  s_width = 1.9,
  s_height = 1,
  package = "josaplay",
  p_size = 25,
  p_y = 0.65,
  filename = "man/figures/logo.png",
  h_fill = "#ffe4d6",
  p_color = "#283C63",
  h_color = "#512C62",
  url = "mrchypark.github.io/josaplay",
  u_size = 5,
  u_color = "#c3b4c8"
)
