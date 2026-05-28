test = list(
  name = "q4_5_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        ar1_test <- Arima(y = log(casino$R1_COIN), order = c(1, 0, 0), xreg = X) 
        ar1_test <- hash(round(coeftest(ar1_test), 1))
        testthat::expect_equal(hash(round(coeftest(ar1_arima), 1)), ar1_test)
      }
    )
  )
)