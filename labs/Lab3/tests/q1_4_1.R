test = list(
  name = "q1_4_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(abs(p_val_small_n - 0.9137784226) < 1e-6, TRUE)
      }
    )
  )
)