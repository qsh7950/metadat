source("hashTable.R")

context("Checking data: nielweise2008")

library(digest)


test_that("checks data md5 hash", {
  expect_match(digest(metadat::dat.nielweise2008, algo = "md5"), hashTable$nielweise2008)
})