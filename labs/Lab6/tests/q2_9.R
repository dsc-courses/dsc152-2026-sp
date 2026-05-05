test = list(
  name = "q2_9",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(power_comparison, 3)
      }
    )
  )
)