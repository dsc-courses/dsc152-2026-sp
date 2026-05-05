test = list(
  name = "q2_8",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_type(ttest_rej_scen1, "double")
        testthat::expect_true(abs(ttest_rej_scen1 - ftest_rej_scen1) < 0.05) # In Scenario 1, both tests should have similar power
        testthat::expect_false(abs(ttest_rej_scen3 - ftest_rej_scen3) < 0.5) # In Scenario 3, F-test should have much higher power than t-test
        testthat::expect_equal(unname(ttest_rej_scen1), 0.978, tolerance = 0.02)
        testthat::expect_equal(unname(ftest_rej_scen1), 0.990, tolerance = 0.02)
        testthat::expect_equal(unname(ttest_rej_scen3), 0.054, tolerance = 0.02)
        testthat::expect_equal(unname(ftest_rej_scen3), 0.990, tolerance = 0.02)
      }
    )
  )
)