test = list(
  name = "q1_5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(is.numeric(inflation_factor_q15))
        testthat::expect_equal(length(unname(inflation_factor_q15)), 1)
        # At cor~0.92 with reps=2000, the selected-model rate is ~0.07-0.09; inflation factor ~1.4-1.8
        testthat::expect_true(unname(inflation_factor_q15) > 1.1)
        testthat::expect_true(unname(inflation_factor_q15) < 2.5)
        # It should equal the selected rate for Years/CAtBat divided by 0.05
        testthat::expect_equal(unname(inflation_factor_q15),
                               unname(rates_q13$rate_selected[rates_q13$pair == "Years/CAtBat"] / 0.05))
      }
    )
  )
)