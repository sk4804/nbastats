#' A Oldest Player Function
#'
#' This function allows you find out the oldest player of the input year.
#' @param year Year of interest
#' @keywords player
#' @export
#' @examples
#' oldest_player()

oldest_player <- function(year){

  oldest <- dplyr::filter(seasonstats, Year == year) %>%
    summarise(oldest_player = Player[Age == max(Age)]) %>%
    arrange(oldest_player)

  return(oldest[1,1])

}
