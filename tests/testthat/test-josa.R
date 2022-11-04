test_that("josa works", {
  expect_equal(josa("상품", "과"), "상품과")
  expect_equal(josa("텀블러", "과"), "텀블러와")
  expect_equal(josa("상품", "와"), "상품과")
  expect_equal(josa("텀블러", "와"), "텀블러와")

  expect_equal(josa("사랑", "은"), "사랑은")
  expect_equal(josa("탁자", "은"), "탁자는")
  expect_equal(josa("사랑", "는"), "사랑은")
  expect_equal(josa("탁자", "는"), "탁자는")

  expect_equal(josa("고객", "이"), "고객이")
  expect_equal(josa("모니터", "이"), "모니터가")
  expect_equal(josa("고객", "가"), "고객이")
  expect_equal(josa("모니터", "가"), "모니터가")

  expect_equal(josa("패키지", "나"), "패키지나")
  expect_equal(josa("컵", "나"), "컵이나")
  expect_equal(josa("패키지", "이나"), "패키지나")
  expect_equal(josa("컵", "이나"), "컵이나")

  expect_equal(josa("패키지", "로"), "패키지로")
  expect_equal(josa("컵", "로"), "컵으로")
  expect_equal(josa("패키지", "으로"), "패키지로")
  expect_equal(josa("컵", "으로"), "컵으로")

  expect_equal(josa("패키지", "랑"), "패키지랑")
  expect_equal(josa("컵", "랑"), "컵이랑")
  expect_equal(josa("패키지", "이랑"), "패키지랑")
  expect_equal(josa("컵", "이랑"), "컵이랑")

  expect_equal(josa("패키지", "아"), "패키지야")
  expect_equal(josa("컵", "아"), "컵아")
  expect_equal(josa("패키지", "야"), "패키지야")
  expect_equal(josa("컵", "야"), "컵아")

  expect_equal(josa("패키지", "며"), "패키지며")
  expect_equal(josa("컵", "며"), "컵이며")
  expect_equal(josa("패키지", "이며"), "패키지며")
  expect_equal(josa("컵", "이며"), "컵이며")

  expect_equal(josa("패키지", "이다"), "패키지다")
  expect_equal(josa("컵", "이다"), "컵이다")
  expect_equal(josa("패키지", "다"), "패키지다")
  expect_equal(josa("컵", "다"), "컵이다")

  expect_equal(josa("패키지", "이가"), "패키지가")
  expect_equal(josa("컵", "이가"), "컵이가")
})


test_that("josa not works", {
  expect_error(josa("패키지", "캉"))
})
