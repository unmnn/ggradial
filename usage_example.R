library(ggradial)
library(tidyverse)
mock = create_mockdata(Nf=30,n_treatments = 2,ngroups = 5)
dfs = mock$dfs
grs = mock$grs
dfs
df = dfs[c(".id", ".phase", ".cluster", grs$feature[grs$.gr_id != 1])]

df <- df %>%
  mutate(.cluster = factor(.cluster)) %>%
  filter(.cluster == levels(.cluster)[2L])

data_cluster <- df %>% mutate(.cluster = fct_drop(as.factor(.cluster))) %>% select(-c(.cluster))
group_names = grs$.gr_name[grs$.gr_id != 1]

data_static = data_cluster %>%select(!c(".id",".phase"))

# add artificial missing value
data_static[1, "f_2"] <- NA_real_

radial_barchart_static(data_static, group_names,interactive = F)

data_linechart = df%>%select(!c(".phase"))
radial_line_chart(data_linechart,group_names, interactive = F)

radial_barchart_compare(data_cluster,group_names, interactive = F)
