test = list(
  name = "q2_3_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_s3_class(lm_scen_B, "lm")
        testthat::expect_type(pval_x1_B, "double")
        testthat::expect_equal(pval_x1_B, 0.93852, tolerance = 0.01)
        testthat::expect_gt(pval_x1_B, 0.05)                                               # Main effect of x1 should NOT be significant in Scenario B
        testthat::expect_lt(summary(lm_scen_B)$coefficients["x11:x21", "Pr(>|t|)"], 0.05)  # Interaction should be significant in Scenario B
      }
    )
  )
)