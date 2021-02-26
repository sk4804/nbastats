#' A Correlation Matrix Function
#'
#' This function allows you find out correlation among the numeric variables.
#' @param data input data
#' @keywords correlation
#' @export
#' @examples
#' corr_matrix()


corr_matrix <- function(year) {
  dplyr::select(seasonstats, where(is.numeric)) %>%
    filter(Year == year) %>%
    drop_na %>%
    cor()
}
