test = list(
  name = "q1_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        goal_ans <- hash(4)
        testthat::expect_equal(hash(goal), goal_ans)
      }
    )
  )
)