test = list(
  name = "q2_3_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_s3_class(lm_scen_A, "lm")
        testthat::expect_type(pval_x1_A, "double")
        testthat::expect_equal(pval_x1_A, 8.8355e-08, tolerance = 1e-3)
        testthat::expect_lt(pval_x1_A, 0.05)                                               # Main effect of x1 should be significant in Scenario A
        testthat::expect_gt(summary(lm_scen_A)$coefficients["x11:x21", "Pr(>|t|)"], 0.05)  # Interaction should not be significant in Scenario A

      }
    )
  )
)