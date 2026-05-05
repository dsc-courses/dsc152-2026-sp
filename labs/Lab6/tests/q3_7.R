test = list(
  name = "q3_7",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.matrix(vcov_matrix))
        testthat::expect_equal(rownames(vcov_matrix), c("(Intercept)", "daily_steps", "on_dietyes", "daily_steps:on_dietyes"))
        testthat::expect_type(se_diff_10k, "double")
        testthat::expect_length(se_diff_10k, 1)
        testthat::expect_equal(se_diff_10k, 0.4547709, tolerance = 0.02) 

      }
    )
  )
)