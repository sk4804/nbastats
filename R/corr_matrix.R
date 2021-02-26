#' A Correlation Matrix Function
#'
#' This function allows you find out correlation among the numeric variables.
#' @param data input data
#' @keywords correlation
#' @export
#' @examples
#' corr_matrix()


corr_matrix <- function(year) {
  num_data <- dplyr::select(data, where(is.numeric)) %>%
                      filter(Year == year)
  num_data <- drop_na(num_data)
  cor(num_data)
}
