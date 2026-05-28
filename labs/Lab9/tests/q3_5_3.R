test = list(
  name = "q3_5_3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        st_test <- shapiro.test(casino$residuals)
        st_test <- hash(st_test)
        testthat::expect_equal(st_test, hash(st))
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        norm_test <- hash(0)
        testthat::expect_equal(hash(norm_cond), norm_test)
      }
    )
  )
)