test = list(
  name = "q2_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(ttest_conditions, c(1,4))
      }
    )
  )
)