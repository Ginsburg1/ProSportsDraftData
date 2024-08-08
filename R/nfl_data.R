#' NFL Draft Data
#'
#' @description A dataset of all first-round picks in the NFL, including various draft metrics.
#'
#'
#' @format A \code{tibble} with the following columns:
#' \describe{
#'   \item{\code{source}}{The source of the data.}
#'   \item{\code{name}}{The name of the player.}
#'   \item{\code{year}}{The year of the draft.}
#'   \item{\code{rank}}{The rank of the player.}
#'   \item{\code{round}}{The round in which the player was drafted.}
#'   \item{\code{height}}{The height of the player.}
#'   \item{\code{weight}}{The weight of the player.}
#'   \item{\code{position}}{The position of the player.}
#'   \item{\code{college}}{The college the player attended.}
#'   \item{\code{pros}}{The pros of the player's abilities.}
#'   \item{\code{cons}}{The cons of the player's abilities.}
#'   \item{\code{similar_player}}{A similar player for comparison.}
#'   \item{\code{similar_player_bio}}{Simular player compairson.}
#'   \item{\code{summary}}{A summary of the player's abilities.}
#'   \item{\code{arm_length}}{The arm length of the player.}
#'   \item{\code{hand_length}}{The hand length of the player.}
#'   \item{\code{next_gen_production_score}}{The Next Gen production score.}
#'   \item{\code{next_gen_athleticism_score}}{The Next Gen athleticism score.}
#'   \item{\code{forty_yard_dash}}{The forty-yard dash time.}
#'   \item{\code{vertical_jump}}{The vertical jump height.}
#'   \item{\code{nfl_prospect_grade}}{The NFL prospect grade.}
#'   \item{\code{home_town}}{The hometown of the player.}
#'   \item{\code{broad_jump}}{The broad jump distance.}
#'   \item{\code{three_cone_drill}}{The three-cone drill time.}
#'   \item{\code{twenty_yard_shuttle}}{The twenty-yard shuttle time.}
#'   \item{\code{bench_press}}{The bench press reps.}
#'   \item{\code{college_abbrivation}}{The abbreviation of the college.}
#'   \item{\code{pre_draft}}{Pre-draft information.}
#'   \item{\code{post_draft}}{Post-draft information.}
#'   \item{\code{position_rank}}{The position rank of the player.}
#'   \item{\code{overall_rank}}{The overall rank of the player.}
#'   \item{\code{grade}}{The grade of the player.}
#'   \item{\code{school}}{The school the player attended.}
#'   \item{\code{yds}}{Yards the player ran.}
#'   \item{\code{ypa}}{The yards per attempt.}
#'   \item{\code{ypr}}{The yards per reception.}
#'   \item{\code{tds}}{Number of touchdowns the player performed.}
#'   \item{\code{ints}}{The interceptions.}
#'   \item{\code{rtg}}{The rating of the player.}
#'   \item{\code{tkls}}{The number of taclees of the player.}
#'   \item{\code{tfl}}{The tackles for loss.}
#'   \item{\code{ypc}}{The yards per carry.}
#'   \item{\code{pbu}}{The pass break-ups of the player.}
#'   \item{\code{twenty_plus}}{Plays of twenty or more yards.}
#'   \item{\code{sacks}}{Number of sacks of the player.}
#'   \item{\code{gms}}{The number of games played.}
#'   \item{\code{strts}}{The number of games started.}
#'   \item{\code{sk_all}}{The number of sack allowed.}
#'   \item{\code{age}}{The age of the player.}
#'   \item{\code{main_selling_point}}{The main selling point of the player.}
#'   \item{\code{description}}{The description of the player.}
#'   \item{\code{scouting_report}}{The scouting report.}
#'   \item{\code{score}}{Players score from 1-100.}
#' }
#' @examples
#' # Load the dataset
#' data(nfl_data)
#'
#' # View the first few rows
#' head(nfl_data)
#'
#' # Filter data for NFL.com source
#' nfl_com_data <- nfl_data[nfl_data$source == "NFL.com", ]
#'
#' # Filter data for The Ringer source
#' the_ringer_data <- nfl_data[nfl_data$source == "The Ringer", ]
#'
"nfl_data"

# Define the nfl_data tibble
#' @export
nfl_data <- tibble::tibble(
  source = character(),
  name = character(),
  year = integer(),
  rank = integer(),
  round = integer(),
  height = character(),
  weight = character(),
  position = character(),
  college = character(),
  pros = character(),
  cons = character(),
  similar_player = character(),
  similar_player_bio = character(),
  summary = character(),
  arm_length = character(),
  hand_length = character(),
  next_gen_production_score = character(),
  next_gen_athleticism_score = character(),
  forty_yard_dash = character(),
  vertical_jump = character(),
  nfl_prospect_grade = character(),
  home_town = character(),
  broad_jump = character(),
  three_cone_drill = character(),
  twenty_yard_shuttle = character(),
  bench_press = character(),
  college_abbrivation = character(),
  pre_draft = character(),
  post_draft = character(),
  position_rank = character(),
  overall_rank = character(),
  grade = character(),
  school = character(),
  yds = character(),
  ypa = character(),
  ypr = character(),
  tds = character(),
  ints = character(),
  rtg = character(),
  tkls = character(),
  tfl = character(),
  ypc = character(),
  pbu = character(),
  twenty_plus = character(),
  sacks = character(),
  gms = character(),
  strts = character(),
  sk_all = character(),
  age = character(),
  main_selling_point = character(),
  description = character(),
  scouting_report = character(),
  score = character()
)

# Load the data
load("data/nfl_data.rda")

#' Filter NFL Data by Source (Base)
#'
#' Filters and selects NFL data from the base source for the given source value.
#'
#' @return A filtered and selected tibble of NFL data.
#' @export
#' @name nfl_data_base
#' @title NFL Data Base
nfl_data_base <- function() {
  nfl_data |>
    dplyr::filter(source == "base") |>
    dplyr::select(name, round, rank)
}

#' Filter NFL Data by Source (ESPN)
#'
#' Filters and selects NFL data from ESPN for the given source value.
#'
#' @return A filtered and selected tibble of NFL data from ESPN.
#' @export
#' @name nfl_data_espn
#' @title NFL Data ESPN
nfl_data_espn <- function() {
  nfl_data |>
    dplyr::filter(source == "ESPN") |>
    dplyr::select(source,
                  name,
                  year,
                  height,
                  weight,
                  college,
                  college_abbrivation,
                  pre_draft,
                  post_draft,
                  position_rank,
                  overall_rank,
                  score)
}

#' Filter NFL Data by Source (Walter Football)
#'
#' Filters and selects NFL data from Walter Football for the given source value.
#'
#' @return A filtered and selected tibble of NFL data from Walter Football.
#' @export
#' @name nfl_data_walter_football
#' @title NFL Data Walter Football
nfl_data_walter_football <- function() {
  nfl_data |>
    dplyr::filter(source == "walterfootball.com") |>
    dplyr::select(name,
                  year,
                  height,
                  weight,
                  arm_length,
                  hand_length,
                  next_gen_production_score,
                  next_gen_athleticism_score,
                  forty_yard_dash,
                  vertical_jump,
                  nfl_prospect_grade,
                  home_town,
                  broad_jump,
                  three_cone_drill,
                  twenty_yard_shuttle,
                  bench_press,
                  similar_player,
                  summary,
                  pros,
                  cons)
}

#' Filter NFL Data by Source (The Ringer)
#'
#' Filters and selects NFL data from The Ringer for the given source value.
#'
#' @return A filtered and selected tibble of NFL data from The Ringer.
#' @export
#' @name nfl_data_the_ringer
#' @title NFL Data The Ringer
nfl_data_the_ringer <- function() {
  nfl_data |>
    dplyr::filter(source == "The Ringer") |>
    dplyr::select(name,
                  rank,
                  year,
                  position,
                  school,
                  grade,
                  yds,
                  ypa,
                  ypr,
                  tds,
                  ints,
                  rtg,
                  tkls,
                  tfl,
                  ypc,
                  pbu,
                  twenty_plus,
                  sacks,
                  gms,
                  strts,
                  sk_all,
                  height,
                  weight,
                  age,
                  main_selling_point,
                  description,
                  similar_player,
                  scouting_report,
                  pros,
                  cons
                  #,
               #   similar_player_bio

               )
}
#' Filter NFL Data by Source (NFL.com)
#'
#' Filters and selects NFL data from NFL.com for the given source value.
#'
#' @return A filtered and selected tibble of NFL data from NFL.com.
#' @export
#' @name nfl_data_nfl_com
#' @title NFL Data NFL.com
nfl_data_nfl_com <- function() {
  nfl_data |>
    dplyr::filter(source == "NFL.com") |>
    dplyr::select(name,
                  year,
                  height,
                  weight,
                  position,
                  college,
                  pros,
                  cons,
                  similar_player,
                  summary
    )
}
