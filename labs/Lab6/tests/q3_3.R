test = list(
  name = "q3_3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_s3_class(hr_model_with_interaction, "lm")
        testthat::expect_type(hr_interaction_coef, "double")
        testthat::expect_true(length(coef(hr_model_with_interaction)) == 4) # Should have 4 coefficients: Intercept, daily_steps, on_dietyes, and interaction
        testthat::expect_equal(names(coef(hr_model_with_interaction)), c("(Intercept)", "daily_steps", "on_dietyes", "daily_steps:on_dietyes"))
        testthat::expect_true(all(unname(coef(hr_model_with_interaction)[c("daily_steps", "on_dietyes", "daily_steps:on_dietyes")]) < 0)) # All coefficients should be negative
        testthat::expect_equal(unname(hr_interaction_coef), -0.00198, tolerance = 1e-05) # The interaction coefficient should be around -0.002

      }
    )
  )
)