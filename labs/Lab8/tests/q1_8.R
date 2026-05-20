test = list(
  name = "q1_8",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 5.0,
      code = {
        testthat::expect_true(q1_8_ans %in% c(1, 2, 3, 4))
        q1_8_ans_hash <- hash(2)
        testthat::expect_equal(hash(q1_8_ans), q1_8_ans_hash)
        

      }
    )
  )
)