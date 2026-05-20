test = list(
  name = "q1_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 5.0,
      code = {
        testthat::expect_type(meat_risks_q11, "double")
        testthat::expect_equal(names(meat_risks_q11), c("exposed", "unexposed"))
        testthat::expect_equal(as.numeric(meat_risks_q11), c(0.118, 0.100), tolerance = 1e-8)

      }
    )
  )
)