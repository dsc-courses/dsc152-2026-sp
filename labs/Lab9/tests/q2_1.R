test = list(
  name = "q2_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        vdesc_ans <- hash(c(15, 13, 4, 11, 9))
        testthat::expect_identical(hash(var_desc), vdesc_ans)
      }
    )
  )
)