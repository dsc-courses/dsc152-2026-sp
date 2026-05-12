test = list(
  name = "q3_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(inherits(fit_untransformed, "lm"))
        testthat::expect_true(inherits(fit_logged, "lm"))
        testthat::expect_true(is.numeric(pval_untransformed))
        testthat::expect_true(is.numeric(pval_logged))

        expected_unt <- lm(Salary ~ Years, data = hitters)
        expected_log <- lm(log(Salary) ~ Years, data = hitters)
        testthat::expect_equal(unname(pval_untransformed),
                               unname(summary(expected_unt)$coefficients["Years", "Pr(>|t|)"]))
        testthat::expect_equal(unname(pval_logged),
                               unname(summary(expected_log)$coefficients["Years", "Pr(>|t|)"]))
      }
    )
  )
)