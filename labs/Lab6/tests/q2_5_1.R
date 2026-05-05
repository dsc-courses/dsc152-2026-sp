test = list(
  name = "q2_5_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_s3_class(no_bl_null_model, "lm")
        testthat::expect_false("blue_light" %in% all.vars(formula(no_bl_null_model)))
        testthat::expect_true("caffeine_cutoff" %in% all.vars(formula(no_bl_null_model)))

        testthat::expect_type(pval_bl_joint, "double")
        testthat::expect_equal(pval_bl_joint, 4.82473e-09, tolerance = 1e-3) # Joint test for blue_light should be significant
        testthat::expect_equal(as.numeric(anova(no_bl_null_model, sleep_model)$Df[2]), 2)
      }
    )
  )
)