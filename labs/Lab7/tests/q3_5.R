test = list(
  name = "q3_5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(q3_5_ans %in% c(1, 2, 3, 4))
        testthat::expect_equal(q3_5_ans, 2)
      }
    )
  )
)