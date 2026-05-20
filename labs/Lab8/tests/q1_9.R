test = list(
  name = "q1_9",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 5.0,
      code = {
        testthat::expect_type(sweetener_summary_q19, "double")
        testthat::expect_equal(
            names(sweetener_summary_q19),
            c("cases_odds", "controls_odds", "odds_ratio", "cross_product_or")
        )
        testthat::expect_equal(
            as.numeric(sweetener_summary_q19),
            c(0.492537313432836, 0.333333333333333, 1.47761194029851, 1.47761194029851),
            tolerance = 1e-8
        )
        

      }
    )
  )
)