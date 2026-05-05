test = list(
  name = "q2_4_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(main_effect_pval, 4)
      }
    )
  )
)