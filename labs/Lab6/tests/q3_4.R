test = list(
  name = "q3_4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_type(thousand_step_effects, "double")
        testthat::expect_equal(length(thousand_step_effects), 2)
        testthat::expect_equal(unname(thousand_step_effects[1]), -2.93809, tolerance = 0.05) # The effect of 1000 steps for no diet should be around -3 bpm
        testthat::expect_equal(unname(thousand_step_effects[2]), -4.92152, tolerance = 0.05) # The effect of 1000 steps for on diet should be around -4.9 bpm
      }
    )
  )
)