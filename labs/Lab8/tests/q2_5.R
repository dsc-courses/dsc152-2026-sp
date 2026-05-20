test = list(
  name = "q2_5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 5.0,
      code = {
        testthat::expect_type(pred_prob_q25_35, "double")
        testthat::expect_equal(names(pred_prob_q25_35), c("BMI25", "BMI35"))
        testthat::expect_equal(as.numeric(pred_prob_q25_35), c(0.20617289272809963, 0.39822997596366055), tolerance = 1e-8)
        testthat::expect_true(pred_prob_q25_35["BMI25"] < pred_prob_q25_35["BMI35"])

      }
    )
  )
)