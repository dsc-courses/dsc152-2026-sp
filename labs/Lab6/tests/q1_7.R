test = list(
  name = "q1_7",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(residual_sum_interp, 3)
        testthat::expect_equal(as.numeric(tapply(residuals(sleep_model), list(sleep_df$blue_light, sleep_df$caffeine_cutoff), sum)), rep(0, 4), tolerance = 0.1)
      }
    )
  )
)