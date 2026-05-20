test = list(
  name = "q2_6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 5.0,
      code = {
        testthat::expect_equal(as.numeric(bmi_half_prob_q26), 39.41402246754831, tolerance = 1e-8)

      }
    )
  )
)