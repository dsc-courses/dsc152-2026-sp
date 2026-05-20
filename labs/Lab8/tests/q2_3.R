test = list(
  name = "q2_3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 5.0,
      code = {
        testthat::expect_type(logit_coeffs_q23, "double")
        testthat::expect_equal(names(logit_coeffs_q23), c("(Intercept)", "BMI"))
        testthat::expect_equal(as.numeric(logit_coeffs_q23), c(-3.68641284, 0.09353049), tolerance = 1e-6)

      }
    )
  )
)