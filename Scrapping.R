message('Loading Packages')

library(rvest)
library(tidyverse)
library(mongolite)

message('Scrapping Data')

# Jumlah halaman yang ingin di-scrap
num_pages <- 5

# Inisialisasi vektor untuk menyimpan data
top_seller <- c()
harga <- c()

for(i in 1:num_pages){
  # Membuat URL untuk halaman yang sesuai
  url <- paste0("https://store.steampowered.com/search/?filter=topsellers", i)
  
  # Membaca halaman web
  link <- read_html(url)
  
  # Melakukan scrapping data
  titles <- link %>% html_nodes(".title") %>% html_text()
  prices <- link %>% html_elements(".discount_final_price") %>% html_text()
  
  # Menambahkan data ke vektor
  top_seller <- c(top_seller, titles)
  harga <- c(harga, rep(NA, length(titles)))
  
  # Mengisi harga jika ada
  for(j in 1:length(prices)){
    harga[(i-1)*length(titles) + j] <- prices[j]
  }
  
  # Memberikan jeda antara permintaan untuk menghindari pemblokiran
  Sys.sleep(1)
}

# Membuat dataframe
item <- data.frame(top_seller, harga)

# Menghapus baris dengan harga NA
item <- item[!is.na(item$harga), ]



MONGODB
message('Input Data to MongoDB Atlas')
atlas_conn <- mongo(
  collection = Sys.getenv("ATLAS_COLLECTION"),
  db         = Sys.getenv("ATLAS_DB"),
  url        = Sys.getenv("ATLAS_URL")
)

atlas_conn$insert(item)
rm(atlas_conn)







