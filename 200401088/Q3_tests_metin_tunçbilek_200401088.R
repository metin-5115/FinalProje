library(testthat)

# Test myDf okuma işlemi
test_that("Veri dosyasını doğru okuma", {
  dosya_yolu <- "bitcoinHistorical.csv"
  myDf <- read_csv(dosya_yolu)
  expect_is(myDf, "data.frame")
})

# Test Open sütunu sınıf kontrolü
test_that("Open sütunu sayısal veri tipine dönüştürüldü", {
  dosya_yolu <- "C:/R_programing/bitcoinHistorical.csv"
  myDf <- read_csv(dosya_yolu)
  expect_is(myDf$Open, "numeric")
})

# Test histogram oluşturma
test_that("Histogram oluşturuldu", {
  dosya_yolu <- "bitcoinHistorical.csv"
  myDf <- read_csv(dosya_yolu)
  histogram <- hist(myDf$Open, breaks = 20, plot = FALSE)
  expect_is(histogram, "hist")
})





