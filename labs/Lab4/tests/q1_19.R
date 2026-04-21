test = list(
  name = "q1_19",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(power_b10_q119))
        testthat::expect_true(is.numeric(power_b20_q119))
        testthat::expect_true(is.numeric(power_b40_q119))

        testthat::expect_equal(length(power_b10_q119), length(n_grid_q119))
        testthat::expect_equal(length(power_b20_q119), length(n_grid_q119))
        testthat::expect_equal(length(power_b40_q119), length(n_grid_q119))

        testthat::expect_true(tail(power_b40_q119, 1) >= tail(power_b20_q119, 1))
        testthat::expect_true(tail(power_b20_q119, 1) >= tail(power_b10_q119, 1))
        testthat::expect_true(tail(power_b40_q119, 1) > 0.95)
      }
    )
  )
)