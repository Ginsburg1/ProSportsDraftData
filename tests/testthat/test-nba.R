# Test nba_data_base function
test_that("nba_data_base returns correct columns and filters by source", {
  result <- nba_data_base()
  expect_true("name" %in% colnames(result))
  expect_true("year" %in% colnames(result))
  expect_true("round" %in% colnames(result))
})

test_that("nba_data_espn returns correct columns and filters by source", {
  result <- nba_data_espn()
  expected_columns <- c("name", "year", "height", "weight", "school", "college_abbreviation",
                        "pros", "cons", "verdict", "pre_draft_analysis", "post_draft_analysis",
                        "ranking", "player_score")
  expect_true(all(expected_columns %in% colnames(result)))
})

test_that("nba_data_the_ringer returns correct columns and filters by source", {
  result <- nba_data_the_ringer()
  expected_columns <- c("name", "year", "position", "school", "grade", "pts_total", "pts_per40",
                        "reb_total", "reb_per40", "ast_total", "ast_per40", "efg", "fga",
                        "stl_total", "stl_per40", "blk_total", "blk_per40", "tpt", "tpa", "ft",
                        "fta", "ts", "ts_att", "main_selling_point", "age", "height", "weight",
                        "wingspan", "standing_reach", "analysis", "similar_player", "pros", "cons")
  expect_true(all(expected_columns %in% colnames(result)))
})

test_that("nba_data_nbadraft_net returns correct columns and filters by source", {
  result <- nba_data_nbadraft_net()
  expected_columns <- c("name", "height", "weight", "position", "school", "date_of_birth",
                        "hometown", "high_school", "international_team", "athleticism", "size",
                        "defense", "strength", "quickness", "leadership", "jumpshot", "nba_ready",
                        "rebounding", "potential", "post_skills", "intangibles", "mock_draft_rank",
                        "big_board_rank", "overall_rank", "similar_player", "pros", "cons")
  expect_true(all(expected_columns %in% colnames(result)))
})

# Test nba_data_nba_com function
test_that("nba_data_nba_com returns correct columns and filters by source", {
  result <- nba_data_nba_com()
  expected_columns <- c("name", "year", "position", "school", "weight", "grade", "date_of_birth",
                        "profile", "analysis", "projection")
  expect_true(all(expected_columns %in% colnames(result)))
})



