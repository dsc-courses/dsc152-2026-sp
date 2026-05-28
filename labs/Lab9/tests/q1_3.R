test = list(
  name = "q1_3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        dlog_ans <- hash(2)
        testthat::expect_equal(hash(d_log), dlog_ans)
      }
    )
  )
)