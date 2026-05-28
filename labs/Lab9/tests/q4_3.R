test = list(
  name = "q4_3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        tp_test <- hash(2)
        testthat::expect_equal(hash(time_plot), tp_test)
      }
    )
  )
)