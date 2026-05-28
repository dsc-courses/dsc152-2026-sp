test = list(
  name = "q3_5_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        linc_test <- hash(2)
        testthat::expect_equal(hash(lin_cond), linc_test)
      }
    )
  )
)