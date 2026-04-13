test = list(
  name = "q2_3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.function(diff_in_means))
        testthat::expect_equal(obs_test_stat, 4.6)
      }
    )
  )
)