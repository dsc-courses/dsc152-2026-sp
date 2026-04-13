test = list(
  name = "q2_7",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.function(sim_power_perm))
        testthat::expect_equal(abs(perm_power_estimate - 0.826) < 0.01, TRUE)
        testthat::expect_true(abs(perm_power_estimate - t_power_estimate) < 0.1)
      }
    )
  )
)