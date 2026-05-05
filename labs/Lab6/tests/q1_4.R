test = list(
  name = "q1_4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_s3_class(sleep_model, "lm")
        testthat::expect_type(sleep_coeffs, "double")
        testthat::expect_equal(length(sleep_coeffs), 4)
        testthat::expect_equal(names(sleep_coeffs), c("(Intercept)", "blue_lightyes", "caffeine_cutoffyes", "blue_lightyes:caffeine_cutoffyes"))
        testthat::expect_equal(unname(sleep_coeffs), c(5.11, 1.22, 0.67, 2.50), tolerance = 0.05)
        testthat::expect_equal(as.numeric(sleep_coeffs["(Intercept)"]), mean(sleep_df$sleep_score[sleep_df$blue_light == "no" & sleep_df$caffeine_cutoff == "no"]))


      }
    )
  )
)