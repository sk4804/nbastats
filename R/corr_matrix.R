#' A Correlation Matrix Function
#'
#' This function allows you find out correlation among the numeric variables.
#' @param data input data
#' @keywords correlation
#' @export
#' @examples
#' corr_matrix()


corr_matrix <- function(data) {
  num_data <- drop_na(dplyr::select(data, where(is.numeric)))
  cor(num_data)
}
