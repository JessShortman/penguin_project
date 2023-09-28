install.packages('tidyverse')
library(tidyverse)

penguin <- read.table('data/penguin_data.txt', header=T)
head(penguin)

# Run a linear regression 
model1 <- lm(body_mass_g ~ flipper_length_mm, data=penguin)
summary(model1)

# create a plot 
library(ggplot2)

ggplot(penguin, aes(x=flipper_length_mm, y=body_mass_g, colour = species)) +
  geom_point() +
  stat_smooth(method='lm')

ggsave("figs/1_flipper_bodymass_regression.png") 

# subset for female penguins
penguins_female <- subset(penguin, sex=='female')

# create tab delimited file 
library(readr)
write_tsv(penguins_female,"results/1_penguin_female_only.txt")

# branch comment

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

# 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

