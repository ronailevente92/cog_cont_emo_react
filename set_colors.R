library(tidyverse)

# Pick a palette

palette.pals()
(my_palette <- palette.pals()[14])
(my_palette_neg <- palette.pals()[6])


# Set the difference alpha for low cognitive control  

alpha_low <- 0.25


# Put all colors in a list and give it nice names

colors <- 
  list(
    pos_affect = palette.colors(4, palette = my_palette, alpha = .5),
    neg_affect = palette.colors(4, palette = my_palette_neg, alpha = .5),
    low   = palette.colors(4, palette = my_palette, alpha = alpha_low),
    high  = palette.colors(4, palette = my_palette, alpha = 1 - alpha_low)
  ) %>% 
  map(set_names, c("Sadness", "Anger", "Cheerfulness", "Calmness"))