test = list(
  name = "q2_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 5.0,
      code = {
        testthat::expect_true(q2_1_ans %in% c(1, 2, 3, 4))
        q2_1_ans_hash <- hash(2)
        testthat::expect_equal(hash(q2_1_ans), q2_1_ans_hash)

      }
    )
  )
)