
library(utils) # when sourcing from .Rprofile only base is attached on path

generate_country_production_file <- function(country_name) {
  df <- data.frame(country = country_name,
                   country_code = 10,
                   product = c("Raspberry", "Blueberry"),
                   product_code = c("B2", "B3"),
                   production = ceiling(stats::runif(2, 5e3, 2e4)),
                   unit = "ton")
  file_name <- paste0(country_name, "_production_2020.csv")
  write.csv(df, file.path("data/", file_name), row.names = FALSE)
}

set.seed(19)
countries <- c("Spain", "France", "Italy")
# invisible(lapply(countries, generate_country_production_file))


question_factory <- function(nb){

  template_file <- glue::glue(".setup/template_question_{nb}.R")
  question_file <- glue::glue("question_{nb}.R")

  safety_check_loop <- function(nb) {
    answer <- ""
    while (!(answer %in% c("y", "n"))) {
      user_warning <- glue::glue(
        "Are you sure you want to reset the question_{nb} file ? (y/n)"
      )
      cat(crayon::bgRed(user_warning))
      answer <- readline()
      if (answer == "y") {
        move_question_file(nb)
      }
    }
  }

  move_question_file <- function(nb) {
    file.copy(template_file, question_file, overwrite = TRUE)
    file.edit(question_file)
  }

  question_function <- function() {
    if (file.exists(question_file)) {
      safety_check_loop(nb)
    } else {
      move_question_file(nb)
    }
  }
  return(question_function)
}

question_1 <- question_factory(1)
question_2 <- question_factory(2)
