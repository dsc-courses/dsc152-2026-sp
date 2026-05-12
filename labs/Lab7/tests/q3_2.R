test = list(
  name = "q3_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(is.function(sim_power_logy))
        testthat::expect_true(all(c("reps", "n", "beta1", "sigma") %in% names(formals(sim_power_logy))))

        set.seed(99)
        check_q32 <- sim_power_logy(reps = 50, n = 30, beta1 = 0.05, sigma = 0.75)
        testthat::expect_true(is.list(check_q32))
        testthat::expect_true(all(c("power_untransformed", "power_logged") %in% names(check_q32)))
        testthat::expect_true(is.numeric(check_q32$power_untransformed))
        testthat::expect_true(is.numeric(check_q32$power_logged))
        testthat::expect_true(check_q32$power_untransformed >= 0 && check_q32$power_untransformed <= 1)
        testthat::expect_true(check_q32$power_logged       >= 0 && check_q32$power_logged       <= 1)
      }
    )
  )
)