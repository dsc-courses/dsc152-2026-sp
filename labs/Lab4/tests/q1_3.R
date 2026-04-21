test = list(
  name = "q1_3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(fit_observations))
        testthat::expect_equal(sort(fit_observations), c(1, 2, 3))

      }
    )
  )
)