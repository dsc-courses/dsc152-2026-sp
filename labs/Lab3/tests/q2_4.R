test = list(
  name = "q2_4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(length(perm_stats), 5000)
        testthat::expect_true(all(perm_stats >= 0))
        testthat::expect_equal(abs(p_val_perm - 0.1870) < 1e-6, TRUE)
      }
    )
  )
)