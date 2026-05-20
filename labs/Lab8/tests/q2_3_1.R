test = list(
  name = "q2_3_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 5.0,
      code = {
        testthat::expect_type(bmi_inference_q231, "double")
        testthat::expect_equal(names(bmi_inference_q231), c("se", "p_value"))
        testthat::expect_equal(as.numeric(bmi_inference_q231), c(0.01205189, 8.449577e-15), tolerance = 1e-8)

      }
    )
  )
)