test = list(
  name = "q2_3_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 5.0,
      code = {
        testthat::expect_true(q2_3_2_ans %in% c(1, 2, 3, 4))
        q2_3_2_ans_hash <- hash(2)
        testthat::expect_equal(hash(q2_3_2_ans), q2_3_2_ans_hash)

      }
    )
  )
)