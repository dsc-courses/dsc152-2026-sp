test = list(
  name = "q1_3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(is.data.frame(rates_q13))
        testthat::expect_true(all(c("pair", "cor_x1_x2", "rate_full", "rate_selected") %in% names(rates_q13)))
        testthat::expect_equal(nrow(rates_q13), 3)
        testthat::expect_equal(as.character(rates_q13$pair),
                               c("Years/Hits", "Years/CHmRun", "Years/CAtBat"))
        # Empirical correlations should match the actual Hitters values
        testthat::expect_equal(rates_q13$cor_x1_x2[1], cor(hitters$Years, hitters$Hits),   tolerance = 1e-6)
        testthat::expect_equal(rates_q13$cor_x1_x2[2], cor(hitters$Years, hitters$CHmRun), tolerance = 1e-6)
        testthat::expect_equal(rates_q13$cor_x1_x2[3], cor(hitters$Years, hitters$CAtBat), tolerance = 1e-6)
        # Full-model rates should all be near 0.05
        testthat::expect_true(all(rates_q13$rate_full > 0.02 & rates_q13$rate_full < 0.09))
        # Selected rate should grow with correlation; high-correlation pair should be above nominal
        testthat::expect_true(rates_q13$rate_selected[3] > rates_q13$rate_full[3])
        testthat::expect_true(rates_q13$rate_selected[3] > 0.05)
        testthat::expect_true(rates_q13$rate_selected[3] >= rates_q13$rate_selected[1])
      }
    )
  )
)