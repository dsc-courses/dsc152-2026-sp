test = list(
  name = "q1_6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(inherits(anova_out_q16, "anova"))
        testthat::expect_true(is.numeric(anova_F_q16))
        testthat::expect_true(is.numeric(anova_pval_q16))
        testthat::expect_equal(anova_F_q16, F_stat_q15)
        testthat::expect_equal(anova_pval_q16, pval_q15)
      }
    )
  )
)