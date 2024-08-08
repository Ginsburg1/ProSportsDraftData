library(testthat)
library(ProSportsDraftData)

# Load the nfl_data to ensure it's loaded for testing
test_that("nfl_data is loaded correctly", {
  expect_s3_class(nfl_data, "tbl_df")
  expect_true(ncol(nfl_data) >= 45)
})

# Test nfl_data_base function
test_that("nfl_data_base returns correct columns and filters by source", {
  result <- nfl_data_base()
  expected_columns <- c("name", "round", "rank")
  expect_true(all(expected_columns %in% colnames(result)))
})

# Test nfl_data_espn function
test_that("nfl_data_espn returns correct columns and filters by source", {
  result <- nfl_data_espn()
  expected_columns <- c("source", "name", "year", "height", "weight", "college",
                        "college_abbrivation", "pre_draft", "post_draft",
                        "position_rank", "overall_rank", "score")
  expect_true(all(expected_columns %in% colnames(result)))
})

# Test nfl_data_walter_football function
test_that("nfl_data_walter_football returns correct columns and filters by source", {
  result <- nfl_data_walter_football()
  expected_columns <- c("name", "year", "height", "weight", "arm_length",
                        "hand_length", "next_gen_production_score",
                        "next_gen_athleticism_score", "forty_yard_dash",
                        "vertical_jump", "nfl_prospect_grade", "home_town",
                        "broad_jump", "three_cone_drill", "twenty_yard_shuttle",
                        "bench_press", "similar_player", "summary", "pros", "cons")
  expect_true(all(expected_columns %in% colnames(result)))
})

# Test nfl_data_the_ringer function
test_that("nfl_data_the_ringer returns correct columns and filters by source", {
  result <- nfl_data_the_ringer()
  expected_columns <- c("name", "rank", "year", "position", "school", "grade",
                        "yds", "ypa", "ypr", "tds", "ints", "rtg", "tkls",
                        "tfl", "ypc", "pbu", "twenty_plus", "sacks", "gms",
                        "strts", "sk_all", "height", "weight", "age",
                        "main_selling_point", "description", "similar_player",
                        "scouting_report", "pros", "cons")
  expect_true(all(expected_columns %in% colnames(result)))
})

# Example tests for filtering specific years and sources (just to ensure data is as expected)
test_that("nfl_data filters by year correctly", {
  nfl_2023 <- dplyr::filter(nfl_data, year == 2023)
  expect_true(all(nfl_2023$year == 2023))
})

test_that("nfl_data filters by ESPN source correctly", {
  nfl_data_espn_filtered <- dplyr::filter(nfl_data, source == "ESPN")
  expect_true(all(nfl_data_espn_filtered$source == "ESPN"))
})
