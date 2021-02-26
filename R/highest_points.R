#' A Highest Points Function
#'
#' This function allows you find out the player with the highest points of the input year.
#' @param year Year of interest
#' @keywords points
#' @export
#' @examples
#' highest_points()

highest_points <- function(year) {
  dplyr::filter(seasonstats, Year == year) %>%
    summarise(highest_player = Player[PTS == max(PTS)])
}
