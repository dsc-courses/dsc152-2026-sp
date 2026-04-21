test = list(
  name = "q1_15",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(perm_null_obs))
        testthat::expect_equal(sort(perm_null_obs), c(1, 2, 3))

      }
    )
  )
)