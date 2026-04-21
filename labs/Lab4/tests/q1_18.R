test = list(
  name = "q1_18",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(power_lecture_scenario))
        testthat::expect_equal(length(power_lecture_scenario), 1)
        testthat::expect_true(power_lecture_scenario > 0.50 && power_lecture_scenario < 0.95)
      }
    )
  )
)