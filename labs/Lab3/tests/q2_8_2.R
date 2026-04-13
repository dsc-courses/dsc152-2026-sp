test = list(
  name = "q2_8_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.function(sim_power_t_heavy))
        testthat::expect_true(is.function(sim_power_perm_heavy))
        testthat::expect_equal(abs(test_t_heavy - 0.86) < 0.05, TRUE)
      }
    )
  )
)