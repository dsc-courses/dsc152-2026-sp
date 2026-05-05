test = list(
  name = "q2_6_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_type(pval_no_interaction, "double")
        testthat::expect_equal(pval_no_interaction, 6.53726e-05, tolerance = 1e-3) # Joint test for blue_light should be significant
        testthat::expect_equal(as.numeric(anova(lm(sleep_score ~ blue_light + caffeine_cutoff, data = sleep_df), sleep_model)$Df[2]), 1) # Only the interaction term is being tested in this comparison
      }
    )
  )
)