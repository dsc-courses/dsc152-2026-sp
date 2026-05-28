test = list(
  name = "q4_5_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        finalm_test <- hash(c(1,4,6))
        testthat::expect_equal(hash(final_model), finalm_test)
      }
    )
  )
)