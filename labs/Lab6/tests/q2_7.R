test = list(
  name = "q2_7",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_type(sanity_check_ftest, "double")
        testthat::expect_equal(length(sanity_check_ftest), 2)
        testthat::expect_true("ttest_rej" %in% names(sanity_check_ftest))
        testthat::expect_true("ftest_rej" %in% names(sanity_check_ftest))
        testthat::expect_equal(unname(sanity_check_ftest["ttest_rej"]), 0.05, tolerance = 0.02) # Type I error rate for t-test should be near alpha
        testthat::expect_equal(unname(sanity_check_ftest["ftest_rej"]), 0.05, tolerance = 0.02) # Type I error rate for f-test should be near alpha
      }
    )
  )
)