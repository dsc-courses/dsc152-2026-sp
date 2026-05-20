test = list(
  name = "q1_10",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 5.0,
      code = {
        testthat::expect_true(q1_10_ans %in% c(1, 2, 3, 4))
        q1_10_ans_hash <- hash(1)
        testthat::expect_equal(hash(q1_10_ans), q1_10_ans_hash)

      }
    )
  )
)