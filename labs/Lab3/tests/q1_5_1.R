test = list(
  name = "q1_5_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(n_required, 1768)
      }
    )
  )
)