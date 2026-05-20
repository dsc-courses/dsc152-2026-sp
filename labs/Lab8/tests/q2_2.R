test = list(
  name = "q2_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 5.0,
      code = {
        testthat::expect_true(inherits(diabetes_glm_q22, "glm"))
        testthat::expect_equal(diabetes_glm_q22$family$family, "binomial")
        testthat::expect_equal(names(coef(diabetes_glm_q22)), c("(Intercept)", "BMI"))

      }
    )
  )
)