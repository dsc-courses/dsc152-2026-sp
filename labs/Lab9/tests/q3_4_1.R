test = list(
  name = "q3_4_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        mod_test <- lm(R1_COIN_pf ~ R1_RAKE + dow, data=casino)
        testthat::expect_equal(coef(model1), coef(mod_test))
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        mod_test <- lm(R1_COIN_pf ~ R1_RAKE + dow, data=casino)
        coef_test <- summary(model1)$coefficients[2,1]
        coef_test <- hash(coef_test)
        testthat::expect_equal(hash(primary_coef), coef_test)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        mod_test <- lm(R1_COIN_pf ~ R1_RAKE + dow, data=casino)
        pval_test <- summary(model1)$coefficients[2,4]
        pval_test <- hash(pval_test)
        testthat::expect_equal(hash(pval), pval_test)
      }
    )
  )
)