test = list(
  name = "q2_6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(is.function(sim_linearity_q26))
        testthat::expect_true(all(c("n", "beta1", "beta2", "sigma", "reps") %in% names(formals(sim_linearity_q26))))

        testthat::expect_true(is.list(linear_violation_q26))
        testthat::expect_true(all(c("linear_power", "quad_power") %in% names(linear_violation_q26)))

        testthat::expect_true(is.numeric(linear_power_q26))
        testthat::expect_true(is.numeric(quad_power_q26))

        # Linear test should be near nominal alpha (around 0.05); allow [0.02, 0.15]
        testthat::expect_true(linear_power_q26 > 0.02 && linear_power_q26 < 0.15)
        # Quadratic test should be near 1
        testthat::expect_true(quad_power_q26 > 0.95)
        # And quadratic test should beat linear test by a wide margin
        testthat::expect_true(quad_power_q26 - linear_power_q26 > 0.5)

      }
    )
  )
)