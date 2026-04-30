test = list(
  name = "q2_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(inherits(mlr_model_q21, "lm"))
        testthat::expect_true(inherits(mlr_reduced_q21, "lm"))

        expected_full_q21 <- lm(Petal.Length ~ Species + Petal.Width + Sepal.Width, data = iris)
        expected_reduced_q21 <- lm(Petal.Length ~ Petal.Width + Sepal.Width, data = iris)

        testthat::expect_equal(unname(coef(mlr_model_q21)), unname(coef(expected_full_q21)))
        testthat::expect_equal(unname(coef(mlr_reduced_q21)), unname(coef(expected_reduced_q21)))

        testthat::expect_true(is.numeric(mlr_partialF_pval_q21))
        testthat::expect_true(mlr_partialF_pval_q21 >= 0 && mlr_partialF_pval_q21 < 1e-10)

        testthat::expect_true(is.logical(species_significant_q21))
        testthat::expect_equal(species_significant_q21, TRUE)
      }
    )
  )
)