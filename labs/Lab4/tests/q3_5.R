test = list(
  name = "q3_5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.list(power_uncor_q35))
        testthat::expect_true(is.list(power_cor_q35))

        testthat::expect_true(all(c("unadj", "adj") %in% names(power_uncor_q35)))
        testthat::expect_true(all(c("unadj", "adj") %in% names(power_cor_q35)))

        testthat::expect_true(is.numeric(power_uncor_adj_q35))
        testthat::expect_true(is.numeric(power_cor_adj_q35))

        testthat::expect_true(power_uncor_adj_q35 >= 0 && power_uncor_adj_q35 <= 1)
        testthat::expect_true(power_cor_adj_q35 >= 0 && power_cor_adj_q35 <= 1)

        testthat::expect_true(power_cor_adj_q35 < power_uncor_adj_q35)
      }
    )
  )
)