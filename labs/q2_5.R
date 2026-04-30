test = list(
  name = "q2_5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        expected_resid <- residuals(lm(Petal.Length ~ Species + Petal.Width + Sepal.Width, data = iris))
        expected_sds <- tapply(expected_resid, iris$Species, sd)

        testthat::expect_equal(resid_sd_setosa_q25,     unname(expected_sds["setosa"]))
        testthat::expect_equal(resid_sd_versicolor_q25, unname(expected_sds["versicolor"]))
        testthat::expect_equal(resid_sd_virginica_q25,  unname(expected_sds["virginica"]))

        expected_ratio <- max(expected_sds) / min(expected_sds)
        testthat::expect_equal(sd_ratio_q25, expected_ratio)

        testthat::expect_true(is.logical(equal_var_violation_q25))
        testthat::expect_equal(equal_var_violation_q25, expected_ratio > 2)
      }
    )
  )
)