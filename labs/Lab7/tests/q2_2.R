test = list(
  name = "q2_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(inherits(final_fit, "lm"))
        testthat::expect_true(is.numeric(pval_sensitivity))
        testthat::expect_true(is.character(final_model_vars))

        # The final model is the one obtained from backward elimination by p-value (alpha=0.05)
        expected_final <- lm(Salary ~ Years + Hits + Walks + PutOuts + Division, data = hitters)
        testthat::expect_equal(unname(pval_sensitivity),
                               unname(summary(expected_final)$coefficients["Years", "Pr(>|t|)"]))

        testthat::expect_true(setequal(final_model_vars,
                                       c("Years", "Hits", "Walks", "PutOuts", "Division")))
        testthat::expect_true("Years" %in% final_model_vars)
      }
    )
  )
)