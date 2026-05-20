test = list(
  name = "q2_8",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 5.0,
      code = {
        testthat::expect_true(q2_8_ans %in% c(1, 2, 3, 4))
        q2_8_ans_hash <- hash(1)
        testthat::expect_equal(hash(q2_8_ans), q2_8_ans_hash)

      }
    )
  )
)