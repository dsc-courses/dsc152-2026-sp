test = list(
  name = "q1_12",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(worst_violations))
        testthat::expect_equal(sort(worst_violations), c(3))
      }
    )
  )
)