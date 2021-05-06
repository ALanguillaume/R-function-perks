library(ggplot2)

france <- read.csv("data/France_production_2020.csv")
spain <- read.csv("data/Spain_production_2020.csv")
italy <- read.csv("data/Italy_production_2020.csv")

ggplot(france, aes(x = product, y = production, fill = product))+
  geom_col()+
  ggtitle(unique(france$country))

ggplot(spain, aes(x = product, y = production, fill = product))+
  geom_col()+
  ggtitle(unique(spain$country))

ggplot(italy, aes(x = product, y = production, fill = product))+
  geom_col()+
  ggtitle(unique(italy$country))
