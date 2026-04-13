test = list(
  name = "q1_5_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(power_tiny_conclusion, 3)
        testthat::expect_true(power_tiny_effect > 0 && power_tiny_effect < 1)
        testthat::expect_equal(abs(power_tiny_effect[1] - 0.120109273) < 1e-6, TRUE)

      }
    )
  )
)