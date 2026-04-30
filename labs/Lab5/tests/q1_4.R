test = list(
  name = "q1_4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(is.numeric(RSS_full_q14))
        testthat::expect_true(is.numeric(RSS_reduced_q14))

        expected_RSS_full_q14 <- sum(residuals(lm(Petal.Length ~ Species + Petal.Width, data = iris))^2)
        expected_RSS_reduced_q14 <- sum(residuals(lm(Petal.Length ~ Petal.Width, data = iris))^2)

        testthat::expect_equal(RSS_full_q14, expected_RSS_full_q14)
        testthat::expect_equal(RSS_reduced_q14, expected_RSS_reduced_q14)
        testthat::expect_true(RSS_full_q14 < RSS_reduced_q14)

      }
    )
  )
)