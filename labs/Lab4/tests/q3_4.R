test = list(
  name = "q3_4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.function(sim_power_mlr))
        testthat::expect_true(all(c("n", "beta1", "beta2", "rho_x", "sigma", "reps") %in% names(formals(sim_power_mlr))))

        set.seed(99)
        out_q34 <- sim_power_mlr(n=30, beta1=1, beta2=1, rho_x=0, sigma=1, reps=50)

        testthat::expect_true(is.list(out_q34))
        testthat::expect_true(all(c("unadj", "adj") %in% names(out_q34)))

        testthat::expect_true(is.numeric(out_q34$unadj))
        testthat::expect_true(is.numeric(out_q34$adj))

        testthat::expect_true(out_q34$unadj >= 0 && out_q34$unadj <= 1)
        testthat::expect_true(out_q34$adj >= 0 && out_q34$adj <= 1)
      }
    )
  )
)