# Scapping-Steam

<p align="center">
  <img width="300" height="200" src="Doc/download.jpeg">
</p>

 [![General badge](https://img.shields.io/badge/Scrapping-passing-<COLOR>.svg)](https://shields.io/)


## 🚂 : Apa itu steam?
Steam adalah layanan distribusi digital untuk video game yang dikelola oleh Valve Corporation. Diluncurkan sebagai klien perangkat lunak pada September 2003, Steam awalnya dibuat untuk menyederhanakan proses pembaruan game Valve seperti Counter-Strike. Sejak itu, Steam telah berkembang menjadi  pengembang dan penerbit, menjadikannya salah satu platform terpenting dalam industri video game modern.


## 📘 : Deskripsi Projek
Projek ini melakukan scrapping dari halaman steam yakni https://store.steampowered.com bagian top selling games. Hal ini dilakukan agar dapat mengetahui game apa saja yang menjadi tren saat ini sehingga dapat dilakukan analisa terhadap pemain-pemain yang ada di steam saat ini.

Sehingga, data yang terlibat dalam melakukan scrapping yakni;
1. Top seller
2. Harga

Tools yang digunakan dalam melakukan scrapping yakni; RStudio sebagai GUI, MongoDB sebagai database, dan Github sebagai kontainer data.

## 🏠 : Warehouse
Berikut merupakan contoh sintaks di MongoDB
```
{"
_id":{"$oid":"666be7c6b1b5e5d7e208d0d1"},
"top_seller":"Counter-Strike 2",
"harga":"Free"
}
```


