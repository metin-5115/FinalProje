library(testthat)

# Veri dosyasını okuma işlemi
dosya_yolu <- "bitcoinHistorical.csv"
myDf <- read.csv(dosya_yolu)

# Test: Matris sütunlarını tersine çevirme
test_that("Matris sütunları başarıyla tersine çevrildi", {
  # Matrisin sütunlarını tersine çevir
  reversedMatrix <- apply(myDf, 2, rev)
  
  # Her bir sütunun tersine çevrilmiş olduğunu kontrol et
  expect_equal(reversedMatrix[, 1], rev(myDf[, 1]))
  expect_equal(reversedMatrix[, 2], rev(myDf[, 2]))
  # Eğer daha fazla sütun varsa bu şablona devam edebilirsiniz.
})
