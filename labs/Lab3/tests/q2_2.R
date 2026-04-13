test = list(
  name = "q2_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(abs(p_val_ttest - 0.178685585) < 1e-6, TRUE)
      }
    )
  )
)