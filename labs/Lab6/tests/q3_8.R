test = list(
  name = "q3_8",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_type(boot_dist, "double")
        testthat::expect_length(boot_dist, 1000)
        testthat::expect_true(all(boot_dist < 0)) # All bootstrapped interaction coefficients should be negative
        testthat::expect_type(interaction_boot_ci, "double")
        testthat::expect_length(interaction_boot_ci, 2)
        testthat::expect_equal(unname(interaction_boot_ci), c(-0.00221057, -0.0017399), tolerance = 0.001)

      }
    )
  )
)