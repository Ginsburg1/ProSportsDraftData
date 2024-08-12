#' NBA Draft Data
#'
#' @description A dataset of all first-round picks in the NBA, including various draft metrics.
#'
#'
#' @format A \code{tibble} with the following columns:
#' \describe{
#'   \item{\code{source}}{The source of the data.}
#'   \item{\code{name}}{The name of the player.}
#'   \item{\code{year}}{The year of the draft.}
#'   \item{\code{rank}}{The rank of the player in the draft.}
#'   \item{\code{round}}{The round in which the player was drafted.}
#'   \item{\code{height}}{The height of the player.}
#'   \item{\code{weight}}{The weight of the player.}
#'   \item{\code{school}}{The school the player attended.}
#'   \item{\code{college_abbreviation}}{The abbreviation of the college the player attended.}
#'   \item{\code{pros}}{The pros of the player's abilities.}
#'   \item{\code{cons}}{The cons of the player's abilities.}
#'   \item{\code{verdict}}{The overall verdict on the player's potential.}
#'   \item{\code{pre_draft_analysis}}{Analysis of the player before the draft.}
#'   \item{\code{post_draft_analysis}}{Analysis of the player after the draft.}
#'   \item{\code{ranking}}{The player's ranking.}
#'   \item{\code{player_score}}{The score given to the player.}
#'   \item{\code{position}}{The position the player plays.}
#'   \item{\code{grade}}{The grade given to the player.}
#'   \item{\code{pts_total}}{Total points scored by the player.}
#'   \item{\code{pts_per40}}{Points per 40 minutes played.}
#'   \item{\code{reb_total}}{Total rebounds by the player.}
#'   \item{\code{reb_per40}}{Rebounds per 40 minutes played.}
#'   \item{\code{ast_total}}{Total assists by the player.}
#'   \item{\code{ast_per40}}{Assists per 40 minutes played.}
#'   \item{\code{efg}}{Effective field goal percentage.}
#'   \item{\code{fga}}{Field goal attempts.}
#'   \item{\code{stl_total}}{Total steals by the player.}
#'   \item{\code{stl_per40}}{Steals per 40 minutes played.}
#'   \item{\code{blk_total}}{Total blocks by the player.}
#'   \item{\code{blk_per40}}{Blocks per 40 minutes played.}
#'   \item{\code{tpt}}{Three-point shots made.}
#'   \item{\code{tpa}}{Three-point attempts.}
#'   \item{\code{ft}}{Free throws made.}
#'   \item{\code{fta}}{Free throw attempts.}
#'   \item{\code{ts}}{True shooting percentage.}
#'   \item{\code{ts_att}}{True shooting attempts.}
#'   \item{\code{main_selling_point}}{The main selling point of the player.}
#'   \item{\code{age}}{The age of the player at the time of the draft.}
#'   \item{\code{wingspan}}{The wingspan of the player.}
#'   \item{\code{standing_reach}}{The standing reach of the player.}
#'   \item{\code{similar_player}}{A player with a similar profile.}
#'   \item{\code{profile}}{Profile description of the player.}
#'   \item{\code{analysis}}{An analysis of the player's potential and performance.}
#'   \item{\code{projection}}{Projection of the player's future performance.}
#'   \item{\code{date_of_birth}}{The date of birth of the player.}
#'   \item{\code{hometown}}{The hometown of the player.}
#'   \item{\code{high_school}}{The high school the player attended.}
#'   \item{\code{rebounding}}{Evaluation of the player's rebounding skills.}
#'   \item{\code{potential}}{Evaluation of the player's potential.}
#'   \item{\code{post_skills}}{Evaluation of the player's post skills.}
#'   \item{\code{intangibles}}{Evaluation of the player's intangibles.}
#'   \item{\code{international_team}}{The international team the player has been part of.}
#'   \item{\code{athleticism}}{Evaluation of the player's athleticism.}
#'   \item{\code{size}}{Evaluation of the player's size.}
#'   \item{\code{defense}}{Evaluation of the player's defensive skills.}
#'   \item{\code{strength}}{Evaluation of the player's strength.}
#'   \item{\code{quickness}}{Evaluation of the player's quickness.}
#'   \item{\code{leadership}}{Evaluation of the player's leadership skills.}
#'   \item{\code{jumpshot}}{Evaluation of the player's jumpshot.}
#'   \item{\code{nba_ready}}{Evaluation of the player's NBA readiness.}
#'   \item{\code{mock_draft_rank}}{The player's ranking in mock drafts.}
#'   \item{\code{big_board_rank}}{The player's ranking on big boards.}
#'   \item{\code{overall_rank}}{The player's overall ranking.}
#' }
#' @examples
#' # Load the dataset
#' data(nba_data)
#'
#' # View the first few rows
#' head(nba_data)
#'
#' # View players who attended Duke
#' library(dplyr)
#' duke_players <- nba_data |>
#'   filter(college_abbreviation == "DUKE")
#' print(duke_players)
#'
#' # Average score by position
#' avg_score_by_position <- nba_data |>
#'   group_by(position) |>
#'   summarise(avg_score = mean(player_score, na.rm = TRUE))
#' print(avg_score_by_position)
#'
#' # Calculate the average points per 40 minutes
#' avg_pts_per40 <- nba_data |>
#'   summarise(avg_pts = mean(pts_per40, na.rm = TRUE))
#' print(avg_pts_per40)
#'
#' # Count the number of players from each college
#' college_counts <- nba_data |>
#'   group_by(college_abbreviation) |>
#'   summarise(count = n())
#' print(college_counts)
#'
#'
"nba_data"

load("data/nba_data.rda")

#' Filter NBA Data by Source (Base)
#'
#' Filters and selects NBA data from the Base (ESPN.com) source.
#'
#' @format A \code{tibble} with the following columns:
#' \describe{
#'   \item{\code{name}}{The name of the player.}
#'   \item{\code{year}}{The year of the draft.}
#'   \item{\code{round}}{The round in which the player was drafted.}
#' }

#'
#' @return A filtered and selected tibble of NBA data from Base.
#' @export
#' @name nba_data_base
#' @title NBA Data Base
#' @examples
#' # Filter NBA data for base source
#' base_data <- nba_data_base()
#'
#' # View the first few rows
#' head(base_data)
#'
nba_data_base <- function() {
  nba_data |>
    dplyr::filter(source == "Base") |>
    dplyr::select(name, year, round)
}

#' Filter NBA Data by Source (ESPN)
#'
#' Filters and selects NBA data from ESPN for the given source value.
#'
#' @format A \code{tibble} with the following columns:
#' \describe{
#'   \item{\code{name}}{The name of the player.}
#'   \item{\code{year}}{The year of the draft.}
#'   \item{\code{height}}{The height of the player.}
#'   \item{\code{weight}}{The weight of the player.}
#'   \item{\code{school}}{The school the player attended.}
#'   \item{\code{college_abbreviation}}{The abbreviation of the college the player attended.}
#'   \item{\code{pros}}{The pros of the player's abilities.}
#'   \item{\code{cons}}{The cons of the player's abilities.}
#'   \item{\code{verdict}}{The overall verdict on the player's potential.}
#'   \item{\code{pre_draft_analysis}}{Analysis of the player before the draft.}
#'   \item{\code{post_draft_analysis}}{Analysis of the player after the draft.}
#'   \item{\code{ranking}}{The player's ranking.}
#'   \item{\code{player_score}}{The score given to the player.}
#' }

#'
#' @return A filtered and selected tibble of NBA data from ESPN.
#' @export
#' @name nba_data_espn
#' @title NBA Data ESPN
#' @examples
#' # Filter NBA data for ESPN
#' espn_data <- nba_data_espn()
#'
#' # View the first few rows
#' head(espn_data)
#'
nba_data_espn <- function() {
  nba_data |>
    dplyr::filter(source == "ESPN") |>
    dplyr::select(name, year, height, weight, school, college_abbreviation, pros, cons, verdict,
                  pre_draft_analysis, post_draft_analysis, ranking, player_score)
}

#' Filter NBA Data by Source (The Ringer)
#'
#' Filters and selects NBA data from The Ringer for the given source value.
#'
#' @format A \code{tibble} with the following columns:
#' \describe{
#'   \item{\code{name}}{The name of the player.}
#'   \item{\code{year}}{The year of the draft.}
#'   \item{\code{position}}{The position the player plays.}
#'   \item{\code{school}}{The school the player attended.}
#'   \item{\code{grade}}{The grade given to the player.}
#'   \item{\code{pts_total}}{Total points scored by the player.}
#'   \item{\code{pts_per40}}{Points per 40 minutes played.}
#'   \item{\code{reb_total}}{Total rebounds by the player.}
#'   \item{\code{reb_per40}}{Rebounds per 40 minutes played.}
#'   \item{\code{ast_total}}{Total assists by the player.}
#'   \item{\code{ast_per40}}{Assists per 40 minutes played.}
#'   \item{\code{efg}}{Effective field goal percentage.}
#'   \item{\code{fga}}{Field goal attempts.}
#'   \item{\code{stl_total}}{Total steals by the player.}
#'   \item{\code{stl_per40}}{Steals per 40 minutes played.}
#'   \item{\code{blk_total}}{Total blocks by the player.}
#'   \item{\code{blk_per40}}{Blocks per 40 minutes played.}
#'   \item{\code{tpt}}{Three-point shots made.}
#'   \item{\code{tpa}}{Three-point attempts.}
#'   \item{\code{ft}}{Free throws made.}
#'   \item{\code{fta}}{Free throw attempts.}
#'   \item{\code{ts}}{True shooting percentage.}
#'   \item{\code{ts_att}}{True shooting attempts.}
#'   \item{\code{main_selling_point}}{The main selling point of the player.}
#'   \item{\code{age}}{The age of the player at the time of the draft.}
#'   \item{\code{height}}{The height of the player.}
#'   \item{\code{weight}}{The weight of the player.}
#'   \item{\code{wingspan}}{The wingspan of the player.}
#'   \item{\code{standing_reach}}{The standing reach of the player.}
#'   \item{\code{analysis}}{An analysis of the player's potential and performance.}
#'   \item{\code{similar_player}}{A player with a similar profile.}
#'   \item{\code{pros}}{The pros of the player's abilities.}
#'   \item{\code{cons}}{The cons of the player's abilities.}
#' }

#'
#' @return A filtered and selected tibble of NBA data from The Ringer.
#' @export
#' @name nba_data_the_ringer
#' @title NBA Data The Ringer
#' @examples
#' # Filter NFL data for The Ringer
#' ringer_data <- nba_data_the_ringer()
#'
#' # View the first few rows
#' head(ringer_data)
#'
nba_data_the_ringer <- function() {
  nba_data |>
    dplyr::filter(source == "The Ringer") |>
    dplyr::select(name, year, position, school, grade, pts_total, pts_per40, reb_total, reb_per40,
                  ast_total, ast_per40, efg, fga, stl_total, stl_per40, blk_total, blk_per40,
                  tpt, tpa, ft, fta, ts, ts_att, main_selling_point, age, height, weight,
                  wingspan, standing_reach, analysis, similar_player, pros, cons)
}

#' Filter NBA Data by Source (NBADraft.net)
#'
#' Filters and selects NBA data from NBADraft.net for the given source value.
#'
#' @format A \code{tibble} with the following columns:
#' \describe{
#'   \item{\code{name}}{The name of the player.}
#'   \item{\code{height}}{The height of the player.}
#'   \item{\code{weight}}{The weight of the player.}
#'   \item{\code{position}}{The position the player plays.}
#'   \item{\code{school}}{The school the player attended.}
#'   \item{\code{date_of_birth}}{The date of birth of the player.}
#'   \item{\code{hometown}}{The hometown of the player.}
#'   \item{\code{high_school}}{The high school the player attended.}
#'   \item{\code{international_team}}{The international team the player has been part of.}
#'   \item{\code{athleticism}}{Evaluation of the player's athleticism.}
#'   \item{\code{size}}{Evaluation of the player's size.}
#'   \item{\code{defense}}{Evaluation of the player's defensive skills.}
#'   \item{\code{strength}}{Evaluation of the player's strength.}
#'   \item{\code{quickness}}{Evaluation of the player's quickness.}
#'   \item{\code{leadership}}{Evaluation of the player's leadership skills.}
#'   \item{\code{jumpshot}}{Evaluation of the player's jumpshot.}
#'   \item{\code{nba_ready}}{Evaluation of the player's NBA readiness.}
#'   \item{\code{rebounding}}{Evaluation of the player's rebounding skills.}
#'   \item{\code{potential}}{Evaluation of the player's potential.}
#'   \item{\code{post_skills}}{Evaluation of the player's post skills.}
#'   \item{\code{intangibles}}{Evaluation of the player's intangibles.}
#'   \item{\code{mock_draft_rank}}{The player's ranking in mock drafts.}
#'   \item{\code{big_board_rank}}{The player's ranking on big boards.}
#'   \item{\code{overall_rank}}{The player's overall ranking.}
#'   \item{\code{similar_player}}{A player with a similar profile.}
#'   \item{\code{pros}}{The pros of the player's abilities.}
#'   \item{\code{cons}}{The cons of the player's abilities.}
#' }

#'
#' @return A filtered and selected tibble of NBA data from NBADraft.net.
#' @export
#' @name nba_data_nbadraft_net
#' @title NBA Data NBADraft.net
#' @examples
#' # Filter NFL data for NBADraft.net
#' nbadraft <- nba_data_nbadraft_net()
#'
#' # View the first few rows
#' head(nbadraft)
#'
nba_data_nbadraft_net <- function() {
  nba_data |>
    dplyr::filter(source == "NBADraft.net") |>
    dplyr::select(name, height, weight, position, school, date_of_birth, hometown, high_school,
                  international_team, athleticism, size, defense, strength, quickness, leadership,
                  jumpshot, nba_ready, rebounding, potential, post_skills, intangibles,
                  mock_draft_rank, big_board_rank, overall_rank, similar_player, pros, cons)
}

#' Filter NBA Data by Source (NBA.com)
#'
#' Filters and selects NBA data from NBA.com for the given source value.
#'
#' @format A \code{tibble} with the following columns:
#' \describe{
#'   \item{\code{name}}{The name of the player.}
#'   \item{\code{year}}{The year of the draft.}
#'   \item{\code{position}}{The position the player plays.}
#'   \item{\code{school}}{The school the player attended.}
#'   \item{\code{weight}}{The weight of the player.}
#'   \item{\code{grade}}{The grade given to the player.}
#'   \item{\code{date_of_birth}}{The date of birth of the player.}
#'   \item{\code{profile}}{Profile description of the player.}
#'   \item{\code{analysis}}{An analysis of the player's potential and performance.}
#'   \item{\code{projection}}{Projection of the player's future performance.}
#' }

#'
#' @return A filtered and selected tibble of NBA data from NBA.com.
#' @export
#' @name nba_data_nba_com
#' @title NBA Data NBA.com
#' @examples
#' # Filter NFL data for NBA.com
#' nba_com <- nba_data_nba_com()
#'
#' # View the first few rows
#' head(nba_com)
#'
nba_data_nba_com <- function() {
  nba_data |>
    dplyr::filter(source == "NBA.com") |>
    dplyr::select(name, year, position, school, weight, grade, date_of_birth, profile,
                  analysis, projection)
}
