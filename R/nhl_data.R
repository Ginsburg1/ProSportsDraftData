#' NHL Draft Data
#'
#' @description A dataset of all first-round picks in the NHL, including various draft metrics.
#'
#' @format A \code{tibble} with the following columns:
#' \describe{
#'   \item{\code{source}}{The source of the data.}
#'   \item{\code{name}}{The name of the player.}
#'   \item{\code{year}}{The year of the draft.}
#'   \item{\code{rank}}{The rank of the player in the draft.}
#'   \item{\code{round}}{The round in which the player was drafted.}
#'   \item{\code{date_of_birth}}{The date of birth of the player.}
#'   \item{\code{age}}{The age of the player at the time of the draft.}
#'   \item{\code{current_team}}{The current team of the player.}
#'   \item{\code{league}}{The league the player was playing in before the draft.}
#'   \item{\code{scouting_report}}{A scouting report of the player.}
#'   \item{\code{team_fit}}{How well the player fits with the drafting team.}
#'   \item{\code{likely_to_play}}{The likelihood of the player playing in the NHL.}
#'   \item{\code{position}}{The position the player plays.}
#'   \item{\code{city}}{The city associated with the player or team.}
#'   \item{\code{team}}{The team that selected the player.}
#'   \item{\code{analysis}}{An analysis of the player's potential and performance.}
#' }
#' @examples
#' # Load the dataset
#' data(nhl_data)
#'
#' # View the first few rows
#' head(nhl_data)
#'
#' # Filter the data for players drafted in a specific year, e.g., 2023
#' nhl_2023 <- dplyr::filter(nhl_data, year == 2023)
#'
#' # View the first few rows
#' head(nhl_2023)
#'
#' # Filter the data to include only ESPN as the source
#' nhl_data |>
#'   dplyr::filter(source == "ESPN")
#'
#' @export
"nhl_data"

#' @export
nhl_data <- tibble::tibble(
  source = character(),
  name = character(),
  year = integer(),
  rank = integer(),
  round = integer(),
  date_of_birth = character(),
  age = integer(),
  current_team = character(),
  league = character(),
  scouting_report = character(),
  team_fit = character(),
  likely_to_play = character(),
  position = character(),
  city = character(),
  team = character(),
  analysis = character()
)
load("data/nhl_data.rda")
#' Filter NHL Data by Source (Base)
#'
#' Filters and selects NHL data from the base source for the given source value.
#'
#' @return A filtered and selected tibble of NHL data.
#' @export
#' @name nhl_data_base
#' @title NHL Data Base
nhl_data_base <- function() {
  nhl_data |>
    dplyr::filter(source == "Base") |>
    dplyr::select(name, round, rank)
}

#' Filter NHL Data by Source (ESPN)
#'
#' Filters and selects NHL data from ESPN for the given source value.
#'
#' @return A filtered and selected tibble of NHL data from ESPN.
#' @export
#' @name nhl_data_espn
#' @title NHL Data ESPN
nhl_data_espn <- function() {
  nhl_data |>
    dplyr::filter(source == "ESPN") |>
    dplyr::select(name,
                  year,
                  date_of_birth,
                  age,
                  current_team,
                  league,
                  scouting_report,
                  team_fit,
                  likely_to_play)
}

#' Filter NHL Data by Source (NHL.com)
#'
#' Filters and selects NHL data from NHL.com for the given source value.
#'
#' @return A filtered and selected tibble of NHL data from NHL.com.
#' @export
#' @name nhl_data_nhl_com
#' @title NHL Data NHL.com
nhl_data_nhl.com <- function() {
  nhl_data |>
    dplyr::filter(source == "NHL.com") |>
    dplyr::select(name,
                  year,
                  position,
                  city,
                  team,
                  league,
                  scouting_report,
                  analysis)
}
