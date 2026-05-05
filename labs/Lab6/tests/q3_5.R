test = list(
  name = "q3_5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_s3_class(hr_null_model, "lm")
        testthat::expect_type(pval_diet_joint, "double")
        testthat::expect_equal(length(coef(hr_null_model)), 2) # Null model should have 2 coefficients: Intercept and daily_steps
        testthat::expect_equal(anova(hr_null_model, hr_model_with_interaction)$Df[2], 2)
        testthat::expect_lt(pval_diet_joint, 2e-16)

      }
    )
  )
)