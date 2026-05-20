test = list(
  name = "q1_5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 5.0,
      code = {
        testthat::expect_equal(as.numeric(meat_rr_q15), 1.18, tolerance = 1e-8)
        testthat::expect_equal(as.numeric(meat_rr_q15), as.numeric(meat_rr_q12), tolerance = 1e-8)

      }
    )
  )
)