library(testthat)

dosya_yolu <- "bitcoinHistorical.csv"
myDf <- read.csv(dosya_yolu)

# Grafik oluşturma işlemi
grafik <- ggplot(data = myDf, aes(x = Volume, y = Open)) +
  geom_point() +
  ggtitle("Örnek Grafik") +
  xlab("X Ekseni") +
  ylab("Y Ekseni")

# Test: Grafik özelliklerini kontrol et
test_that("Grafik başarıyla oluşturuldu ve özellikleri doğru", {
  # Başlık kontrolü
  expect_equal(ggtitle(), "Örnek Grafik")
  
  # x ve y eksen etiketleri kontrolü
  expect_equal(xlab(), "X Ekseni")
  expect_equal(ylab(), "Y Ekseni")
  
  # Geometri kontrolü (geom_point)
  expect_true("geom_point" %in% sapply(grafik$layers, function(layer) layer$geom))
})