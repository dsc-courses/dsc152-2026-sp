test = list(
  name = "q2_6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(obs_median_stat, 6)
        testthat::expect_equal(length(perm_median_stats), 5000)
        testthat::expect_true(all(perm_median_stats >= 0))
        testthat::expect_equal(abs(p_val_medians - 0.1788) < 1e-6, TRUE)
        testthat::expect_true(abs(p_val_medians - p_val_ttest) < 0.05, TRUE)
      }
    )
  )
)