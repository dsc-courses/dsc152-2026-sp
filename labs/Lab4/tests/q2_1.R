test = list(
  name = "q2_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(inherits(fit_unadj_q21, "lm"))
        testthat::expect_true(inherits(fit_adj_q21, "lm"))

        testthat::expect_true(is.numeric(solar_coef_unadj_q21))
        testthat::expect_true(is.numeric(solar_coef_adj_q21))

        testthat::expect_true(solar_coef_unadj_q21 > 0)
        testthat::expect_true(solar_coef_adj_q21 > 0 && solar_coef_adj_q21 < solar_coef_unadj_q21)

        testthat::expect_equal(unname(solar_coef_unadj_q21), unname(coef(lm(Ozone ~ Solar.R, data=aq_p2))["Solar.R"]))
        testthat::expect_equal(unname(solar_coef_adj_q21), unname(coef(lm(Ozone ~ Solar.R + Temp, data=aq_p2))["Solar.R"]))
      }
    )
  )
)