test = list(
  name = "q2_5_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(ftest_df_num, 2)
      }
    )
  )
)