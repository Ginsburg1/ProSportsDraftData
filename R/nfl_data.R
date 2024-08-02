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
#' # Filter data for a specific year
#' nfl_2023 <- dplyr::filter(nfl_data, year == 2023)
#'
#'
"nfl_data"
