## ----------------------------------------------------------------------------------------------------------------------------------------
load(file='dataset/my_tidy.Rdata')
library(tidyverse)


## ----------------------------------------------------------------------------------------------------------------------------------------
df1 %>% 
  filter(age_classbylength == 'yearling')


## ----------------------------------------------------------------------------------------------------------------------------------------
df1 %>% 
  filter(age_classbylength == 'yearling') %>%
  group_by(common_name)


## ----------------------------------------------------------------------------------------------------------------------------------------
df1 %>% 
  filter(age_classbylength == 'yearling') %>%
  group_by(common_name) %>% 
  mutate(length_zscore = scale(length_mm))


## ----------------------------------------------------------------------------------------------------------------------------------------
df1 %>% 
  filter(age_classbylength == 'yearling') %>%
  group_by(common_name) %>% 
  mutate(length_zscore = scale(length_mm)) %>%
  ggplot(aes(x = common_name, y = length_zscore)) +
  geom_boxplot(fill=c('gold','darkorange'))

