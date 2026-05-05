test = list(
  name = "q1_5_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(beta1_interpretation, 1)
      }
    )
  )
)