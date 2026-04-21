test = list(
  name = "q1_17",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.function(sim_power_slr))
        testthat::expect_true(all(c("n", "beta1", "sigma", "reps") %in% names(formals(sim_power_slr))))

        # beta1 = 0
        set.seed(10)
        rate_null_q117 <- sim_power_slr(n=50, beta1=0, sigma=2, reps=500)
        testthat::expect_true(rate_null_q117 > 0.02 && rate_null_q117 < 0.10)

        # beta1 is large and noise is low
        set.seed(11)
        rate_big_q117 <- sim_power_slr(n=100, beta1=5, sigma=1, reps=200)
        testthat::expect_true(rate_big_q117 > 0.95)
      }
    )
  )
)