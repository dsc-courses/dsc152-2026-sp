test = list(
  name = "q2_4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(is.numeric(shapiro_pval_q24))
        expected_sw_q24 <- shapiro.test(
            residuals(lm(Petal.Length ~ Species + Petal.Width + Sepal.Width, data = iris))
        )$p.value
        testthat::expect_equal(shapiro_pval_q24, expected_sw_q24)

        testthat::expect_true(is.logical(histogram_violation_q24))
        testthat::expect_true(is.logical(qq_violation_q24))
        testthat::expect_true(is.logical(shapiro_violation_q24))
        testthat::expect_true(is.logical(normality_violation_q24))

        testthat::expect_equal(histogram_violation_q24, FALSE)
        testthat::expect_equal(qq_violation_q24, TRUE)
        testthat::expect_equal(shapiro_violation_q24, TRUE)
        testthat::expect_equal(normality_violation_q24, TRUE)
      }
    )
  )
)