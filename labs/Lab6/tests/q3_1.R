test = list(
  name = "q3_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_s3_class(hr_model_no_interaction, "lm")
        testthat::expect_type(diet_coef_no_interaction, "double")
        testthat::expect_true(length(coef(hr_model_no_interaction)) == 3) # Should only have 3 coefficients: Intercept, daily_steps, on_dietyes
        testthat::expect_equal(names(coef(hr_model_no_interaction)), c("(Intercept)", "daily_steps", "on_dietyes"))
        testthat::expect_lt(coef(hr_model_no_interaction)["daily_steps"], 0) # daily_steps should have a negative coefficient
        testthat::expect_equal(unname(diet_coef_no_interaction), -30.87, tolerance = 0.1) # The diet coefficient should be around -31bpm
      }
    )
  )
)