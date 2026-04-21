test = list(
  name = "q1_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(beta1_hat_q12))
        testthat::expect_true(is.numeric(se_beta1_hat_q12))
        testthat::expect_true(is.numeric(p_value_beta1_q12))

        expected_model <- summary(lm(y ~ x, data = slr_data_q12))$coefficients
        testthat::expect_equal(beta1_hat_q12, expected_model[2, 1])
        testthat::expect_equal(se_beta1_hat_q12, expected_model[2, 2])
        testthat::expect_equal(p_value_beta1_q12, expected_model[2, 4])
      }
    )
  )
)