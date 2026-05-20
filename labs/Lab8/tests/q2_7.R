test = list(
  name = "q2_7",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 5.0,
      code = {
        testthat::expect_equal(as.numeric(or_bmi_35_vs_25_q27), 2.5479902257288356, tolerance = 1e-8)
        testthat::expect_equal(as.numeric(or_bmi_35_vs_25_q27), as.numeric(bmi_odds_mult_q24)^10, tolerance = 1e-8)

      }
    )
  )
)