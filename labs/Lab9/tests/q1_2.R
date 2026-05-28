test = list(
  name = "q1_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        short_ans <- hash(2)
        testthat::expect_equal(hash(shortcoming), short_ans)
      }
    )
  )
)