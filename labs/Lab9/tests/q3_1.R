test = list(
  name = "q3_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        inf_test <- hash(c(3, 5))
        testthat::expect_equal(hash(inf_model), inf_test)
      }
    )
  )
)