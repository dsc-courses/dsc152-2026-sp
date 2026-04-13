test = list(
  name = "q1_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(sig_eff_size, c(1,4,5))
      }
    )
  )
)