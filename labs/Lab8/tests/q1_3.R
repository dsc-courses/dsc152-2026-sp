test = list(
  name = "q1_3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 5.0,
      code = {
        testthat::expect_true(q1_3_ans %in% c(1, 2, 3, 4))
        q1_3_ans_hash <- hash(2)
        testthat::expect_equal(hash(q1_3_ans), q1_3_ans_hash)

      }
    )
  )
)