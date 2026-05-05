test = list(
  name = "q1_6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(unname(bl_effect_with_cc), 3.72, tolerance = 0.05)
      }
    )
  )
)