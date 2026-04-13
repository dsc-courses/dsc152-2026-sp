test = list(
  name = "q2_8_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.function(sim_power_t_skew))
        testthat::expect_true(is.function(sim_power_perm_skew))
        testthat::expect_equal(abs(test_t_skew - 0.84) < 0.02, TRUE)
      }
    )
  )
)