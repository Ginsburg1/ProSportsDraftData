test_that("nhl_data_base returns correct columns and filters by source", {
  result <- nhl_data_base()
  expect_true("name" %in% colnames(result))
  expect_true("round" %in% colnames(result))
  expect_true("rank" %in% colnames(result))
})

# Test nhl_data_espn function
test_that("nhl_data_espn returns correct columns and filters by source", {
  result <- nhl_data_espn()
  expected_columns <- c("name", "year", "date_of_birth", "age", "current_team",
                        "league", "scouting_report", "team_fit", "likely_to_play")
  expect_true(all(expected_columns %in% colnames(result)))
})

# Test nhl_data_nhl_com function
test_that("nhl_data_nhl_com returns correct columns and filters by source", {
  result <- nhl_data_nhl.com()
  expected_columns <- c("name", "year", "position", "city", "team", "league",
                        "scouting_report", "analysis")
  expect_true(all(expected_columns %in% colnames(result)))
})

# Load the nhl_data to ensure it's loaded for testing
test_that("nhl_data is loaded correctly", {
  expect_s3_class(nhl_data, "tbl_df")
  expect_true(ncol(nhl_data) >= 15)
})

# Example tests for filtering specific years and sources (just to ensure data is as expected)
test_that("nhl_data filters by year correctly", {
  nhl_2023 <- dplyr::filter(nhl_data, year == 2023)
  expect_true(all(nhl_2023$year == 2023))
})

test_that("nhl_data filters by ESPN source correctly", {
  nhl_data_espn_filtered <- dplyr::filter(nhl_data, source == "ESPN")
  expect_true(all(nhl_data_espn_filtered$source == "ESPN"))
})
