test = list(
  name = "q1_4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 5.0,
      code = {
        testthat::expect_true(is.function(calc_rr_lab8))

        alt_df_q14 <- data.frame(
            eat_meats = c(1, 1, 1, 1, 0, 0, 0, 0),
            colon_cancer = c(1, 1, 0, 0, 1, 0, 0, 0)
        )

        testthat::expect_equal(calc_rr_lab8(alt_df_q14), 2, tolerance = 1e-8)
        testthat::expect_equal(calc_rr_lab8(meat_df_lab8), 1.18, tolerance = 1e-8)

      }
    )
  )
)