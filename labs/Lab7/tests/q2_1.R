test = list(
  name = "q2_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(inherits(primary_fit, "lm"))
        testthat::expect_true(is.numeric(pval_primary))
        testthat::expect_equal(length(unname(pval_primary)), 1)
        testthat::expect_true(is.logical(reject_primary))
        testthat::expect_equal(length(unname(reject_primary)), 1)

        expected_fit <- lm(Salary ~ Years + Hits + HmRun + Runs + RBI + Walks + PutOuts + League + Division,
                           data = hitters)
        testthat::expect_equal(unname(pval_primary),
                               unname(summary(expected_fit)$coefficients["Years", "Pr(>|t|)"]))
        testthat::expect_equal(unname(reject_primary), unname(pval_primary < 0.05))
        # Should be very small (~ 4.7e-12), so reject_primary should be TRUE
        testthat::expect_true(unname(pval_primary) < 1e-6)
        testthat::expect_true(unname(reject_primary))
      }
    )
  )
)