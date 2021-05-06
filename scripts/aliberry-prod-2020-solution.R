
library(ggplot2)

france <- read.csv("data/France_production_2020.csv")
spain <- read.csv("data/Spain_production_2020.csv")
italy <- read.csv("data/Italy_production_2020.csv")

#' Produce barplot for production data
#'
#' Produce a barplot for yearly production data.... unit 
#'
#' @param production_df A data.frame with at least column product and production 
plot_production <- function(production_df) {
  ggplot(production_df, aes(x = product, y = production, fill = product))+
    geom_col()+
    scale_fill_manual(values = c("darkblue", "darkred"))
}

plot_production(italy)
plot_production(france)
plot_production(spain)

