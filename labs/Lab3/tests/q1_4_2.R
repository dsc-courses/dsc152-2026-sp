test = list(
  name = "q1_4_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(p_val_comparison, 3)
      }
    )
  )
)