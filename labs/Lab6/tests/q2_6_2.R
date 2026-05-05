test = list(
  name = "q2_6_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(ftest_vs_ttest, 4) 
      }
    )
  )
)