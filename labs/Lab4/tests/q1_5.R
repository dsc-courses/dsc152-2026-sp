test = list(
  name = "q1_5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(resid_fitted_violations))
        testthat::expect_equal(sort(resid_fitted_violations), c(1, 4))

      }
    )
  )
)