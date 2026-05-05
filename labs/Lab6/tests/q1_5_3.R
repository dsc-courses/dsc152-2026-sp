test = list(
  name = "q1_5_3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(beta0_interpretation, 2)
      }
    )
  )
)