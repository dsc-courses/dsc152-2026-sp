test = list(
  name = "q2_11",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(is.numeric(q2_11_ans))
        testthat::expect_equal(sort(q2_11_ans), c(3, 4))

      }
    )
  )
)