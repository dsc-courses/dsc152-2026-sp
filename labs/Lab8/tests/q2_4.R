test = list(
  name = "q2_4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 5.0,
      code = {
        testthat::expect_equal(as.numeric(bmi_odds_mult_q24), 1.098044082375757, tolerance = 1e-8)

      }
    )
  )
)