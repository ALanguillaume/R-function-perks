library(ggplot2)

france <- read.csv("data/France_production_2020.csv")
spain <- read.csv("data/Spain_production_2020.csv")
italy <- read.csv("data/Italy_production_2020.csv")

ggplot(france, aes(x = product, y = production, fill = product))+
  geom_col()+
  ggtitle(unique(france$country))+
  scale_fill_manual(values = c("darkblue", "darkred"))

ggplot(spain, aes(x = product, y = production, fill = product))+
  geom_col()+
  ggtitle(unique(spain$country))+
  scale_fill_manual(values = c("darkblue", "darkred"))

ggplot(italy, aes(x = product, y = production, fill = product))+
  geom_col()+
  ggtitle(unique(italy$country))

plot_production <- function(production_df) {
  ggplot(production_df, aes(x = product, y = production, fill = product))+
    geom_col()+
    ggtitle(unique(production_df$country))+
    scale_fill_manual(values = c("darkblue", "darkred"))
}

plot_production(italy)
plot_production(france)
plot_production(spain)
# DRY

