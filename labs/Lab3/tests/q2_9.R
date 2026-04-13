test = list(
  name = "q2_9",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(combined_power_conclusion, 4)
        testthat::expect_equal(length(power_t_normal), length(n_vals))
        testthat::expect_equal(length(power_perm_normal), length(n_vals))
        testthat::expect_equal(length(power_t_skew), length(n_vals))
        testthat::expect_equal(length(power_perm_skew), length(n_vals))
        testthat::expect_equal(length(power_t_heavy), length(n_vals))
        testthat::expect_equal(length(power_perm_heavy), length(n_vals))
        testthat::expect_true(all(power_t_normal >= 0 & power_t_normal <= 1))
        testthat::expect_true(all(power_perm_normal >= 0 & power_perm_normal <= 1))
        testthat::expect_true(all(power_t_skew >= 0 & power_t_skew <= 1))
        testthat::expect_true(all(power_perm_skew >= 0 & power_perm_skew <= 1))
        testthat::expect_true(all(power_t_heavy >= 0 & power_t_heavy <= 1))
        testthat::expect_true(all(power_perm_heavy >= 0 & power_perm_heavy <= 1))
      }
    )
  )
)