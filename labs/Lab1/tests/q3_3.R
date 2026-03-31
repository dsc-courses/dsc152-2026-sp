test = list(
  name = "q3_3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(round(ts, 4), 0.4006)
      }
    )
  )
)