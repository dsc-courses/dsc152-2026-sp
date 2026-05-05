test = list(
  name = "q1_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_s3_class(group_means, "data.frame")
        testthat::expect_equal(colnames(group_means), c("blue_light", "caffeine_cutoff", "mean_sleep_score"))
        testthat::expect_equal(nrow(group_means), 4)
        testthat::expect_equal(group_means$mean_sleep_score, c(5.11, 5.78, 6.33, 9.50), tolerance = 0.05)

      }
    )
  )
)