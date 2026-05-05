test = list(
  name = "q2_5_3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_s3_class(no_cc_null_model, "lm")
        testthat::expect_true("blue_light" %in% all.vars(formula(no_cc_null_model)))
        testthat::expect_false("caffeine_cutoff" %in% all.vars(formula(no_cc_null_model)))

        testthat::expect_type(pval_cc_joint, "double")
        testthat::expect_equal(pval_cc_joint, 3.09013e-07, tolerance = 1e-3) # Joint test for blue_light should be significant
        testthat::expect_equal(as.numeric(anova(no_cc_null_model, sleep_model)$Df[2]), 2)
      }
    )
  )
)