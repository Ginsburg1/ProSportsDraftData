#' NHL Draft Data
#'
#' @description A dataset of all first-round picks in the NHL, including various draft metrics.
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
#' head(nhl_data)
#'
#'
#' # Filter the data to include only ESPN as the source
#' nhl_data_espn <- nhl_data %>%
#'   dplyr::filter(source == "ESPN")
#'
#' # Plot the number of players drafted from each league (ESPN source only)
#' library(ggplot2)
#' ggplot(nhl_data_espn, aes(x = league)) +
#'   geom_bar() +
#'   theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
#'   labs(title = "Number of Players Drafted from Each League (ESPN)",
#'        x = "League",
#'        y = "Number of Players")
#'
#'
"nhl_data"







#'
"nhl_data"
