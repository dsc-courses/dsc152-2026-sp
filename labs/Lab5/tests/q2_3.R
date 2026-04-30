test = list(
  name = "q2_3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_equal(order_q23, seq_len(nrow(iris)))
        testthat::expect_true(is.logical(independence_violation_q23))
        testthat::expect_equal(independence_violation_q23, TRUE)
      }
    )
  )
)