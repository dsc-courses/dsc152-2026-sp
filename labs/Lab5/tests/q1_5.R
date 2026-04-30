test = list(
  name = "q1_5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_equal(n_q15, 150)
        testthat::expect_equal(k_q15, 4)
        testthat::expect_equal(p_q15, 2)

        expected_F_q15 <- ((RSS_reduced_q14 - RSS_full_q14) / 2) / (RSS_full_q14 / (150 - 4))
        testthat::expect_equal(F_stat_q15, expected_F_q15)
        testthat::expect_true(F_stat_q15 > 40 && F_stat_q15 < 50)

        testthat::expect_true(is.numeric(pval_q15))
        testthat::expect_true(pval_q15 >= 0 && pval_q15 < 1e-10)

      }
    )
  )
)