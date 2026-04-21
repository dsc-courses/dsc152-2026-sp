test = list(
  name = "q1_20",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(n_for_80_power))
        testthat::expect_equal(length(n_for_80_power), 1)
        testthat::expect_true(n_for_80_power %in% n_grid_q119)
        testthat::expect_true(n_for_80_power >= 40 && n_for_80_power <= 140)
      }
    )
  )
)