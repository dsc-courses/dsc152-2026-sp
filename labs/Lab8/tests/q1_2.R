test = list(
  name = "q1_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 5.0,
      code = {
        testthat::expect_equal(as.numeric(meat_rr_q12), 1.18, tolerance = 1e-8)

      }
    )
  )
)