test = list(
  name = "q3_6_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(diff_slopes_interp, 2)
      }
    )
  )
)