test = list(
  name = "q2_7",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(q2_7_ans %in% c(1, 2, 3, 4))
        testthat::expect_equal(q2_7_ans, 3)

      }
    )
  )
)