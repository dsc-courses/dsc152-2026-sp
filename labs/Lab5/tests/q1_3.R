test = list(
  name = "q1_3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(inherits(full_model_q13, "lm"))
        testthat::expect_true(inherits(reduced_model_q13, "lm"))

        expected_full_q13 <- lm(Petal.Length ~ Species + Petal.Width, data = iris)
        expected_reduced_q13 <- lm(Petal.Length ~ Petal.Width, data = iris)

        testthat::expect_equal(unname(coef(full_model_q13)), unname(coef(expected_full_q13)))
        testthat::expect_equal(unname(coef(reduced_model_q13)), unname(coef(expected_reduced_q13)))

      }
    )
  )
)