test = list(
  name = "q3_3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(is.data.frame(power_q33))
        testthat::expect_true(all(c("power_untransformed", "power_logged") %in% names(power_q33)))
        testthat::expect_equal(nrow(power_q33), 1)
        testthat::expect_true(power_q33$power_untransformed >= 0 && power_q33$power_untransformed <= 1)
        testthat::expect_true(power_q33$power_logged >= 0 && power_q33$power_logged <= 1)
        # The (correctly specified) logged model should have higher empirical power
        testthat::expect_true(power_q33$power_logged > power_q33$power_untransformed)
        # Both should be away from 0 and 1 with these settings
        testthat::expect_true(power_q33$power_untransformed > 0.05)
        testthat::expect_true(power_q33$power_logged < 0.95)
      }
    )
  )
)