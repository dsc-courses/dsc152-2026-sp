test = list(
  name = "q1_6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(qq_violations))
        testthat::expect_equal(sort(qq_violations), c(3))

      }
    )
  )
)