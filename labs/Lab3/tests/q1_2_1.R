test = list(
  name = "q1_2_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(abs(p_val_large_n - 1.878665876e-5) < 1e-6, TRUE)
      }
    )
  )
)