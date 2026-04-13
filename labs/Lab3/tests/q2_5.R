test = list(
  name = "q2_5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(abs(p_val_ttest - p_val_perm) < 0.05)
        testthat::expect_equal(p_val_check, 3)
      }
    )
  )
)