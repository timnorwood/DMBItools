#' Adjusted Pascal's
#'
#' Output a row from an adjusted pascals triangle
#' @param r The row from pascals triangle to output
#' @param odds_ratio The odds ratio to use. Default is 1:1 but for events with probability of 25 percent, for example, use odds ratio 1:3
#' @return A row from Pascals triangle
#' @examples
#' pascal_row(10);
#' pascal_row(10,3);
#' @export

# Package to output a row from (adjusted) pascal triangle
# Includes option to change the odds ratio from 1:1
# For example, for events with probability of 25% use odds ratio 1:3
# for events with probability of 5% use odds:ratio of 1:19
#
# You can learn more about package authoring with RStudio at:
#
#   https://r-pkgs.org
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

pascal_row <- function(r, odds_ratio = 1) {
  row <- 1
  for (i in 1:r-1) { row <- c(0, row * (odds_ratio)) + c(row, 0)}
  row
}
