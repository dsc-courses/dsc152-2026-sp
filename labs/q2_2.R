test = list(
  name = "q2_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        expected_resid_q22 <- residuals(lm(Petal.Length ~ Species + Petal.Width + Sepal.Width, data = iris))
        expected_fitted_q22 <- fitted(lm(Petal.Length ~ Species + Petal.Width + Sepal.Width, data = iris))
        testthat::expect_equal(unname(resid_q22), unname(expected_resid_q22))
        testthat::expect_equal(unname(fitted_q22), unname(expected_fitted_q22))
        testthat::expect_true(is.logical(linearity_violation_q22))
        testthat::expect_equal(linearity_violation_q22, FALSE)
      }
    )
  )
)