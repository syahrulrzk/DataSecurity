 ## Konsep Dasar TCP/IP

TCP/IP biasanya ada di sistem operasi Unix atau turunannya. Walaupun sebetulnya pengembangannya terpisah tapi sejarah keduanya saling terikat erat, terutama sejak 4.2BSD Unix mulai memasukan protokol TCP/IP ke dalamnya. Pada hari ini, protokol TCP/IP tersedia di banyak sistem operasi dan termasuk bagian integral dari sistem operasi OS/2, OS/400, dan Windows 9x/NT/2000/XP, maupun berbagai varian Unix.

### Dasar Arsitektur TCP/IP
Komunikasi data merupakan proses mengirimkan data dari satu komputer ke komputer yang lain. Melalui peralatan Network Interface Card (NIC) atau LAN card, komunikasi data antar komputer biasanya dilakukan. NIC / LAN card yang digunakan sangat bervarisasi tergantung jenis saluran fisik yang digunakan.

Ada beberapa masalah yang harus dipecahkan dalam mengiriman data. Pertama, data harus dapat dikirimkan ke komputer yang tepat, sesuai tujuannya. Hal ini akan menjadi rumit jika komputer tujuan transfer data ini tidak berada pada jaringan lokal, melainkan di tempat yang jauh. Jika lokasi komputer yang saling berkomunikasi "jauh" (secara jaringan) maka terdapat kemungkinan data rusak atau hilang. Karenanya, perlu ada mekanisme yang mencegah rusaknya data ini.

Cara alamiah untuk menghadapi setiap masalah yang rumit ialah memecah masalah tersebut menjadi bagian yang lebih kecil. Dalam memecahkan masalah transfer data diatas, para ahli jaringan komputer pun melakukan hal yang sama. Untuk setiap problem komunikasi data, diciptakan solusi khusus berupa aturan-aturan untuk menangani problem tersebut. Untuk menangani semua masalah komunikasi data, keseluruhan aturan ini harus bekerja sama satu dengan lainnya. Sekumpulan aturan untuk mengatur proses pengiriman data ini disebut sebagai protokol komunikasi data. Protokol ini diimplementasikan dalam bentuk program komputer (software) yang terdapat pada komputer dan peralatan komunikasi data lainnya.

TCP/IP adalah sekumpulan protokol yang didesain untuk melakukan fungsi-fungi komunikasi data pada Wide Area Network (WAN). TCP/IP terdiri dari sekumpulan protokol yang masing-masing bertanggung jawab atas bagian-bagian tertentu dari komunikasi data. Dalam bahasa yang lebih formal-nya, disain protokol TCP/IP sifatnya modular. Berkat prinsip ini, tugas masing-masing protokol menjadi jelas dan sederhana. Protokol yang satu tidak perlu mengetahui cara kerja protokol yang lain, sepanjang ia masih bisa saling mengirim dan menerima data.

Berkat penggunaan prinsip modular ini, TCP/IP menjadi protokol komunikasi data yang fleksibel. Protokol TCP/IP dapat diterapkan dengan mudah di setiap jenis komputer dan interface jaringan, karena sebagian besar isi kumpulan protokol ini tidak spesifik terhadap satu komputer atau peralatan jaringan tertentu. Agar TCP/IP dapat berjalan diatas interface jaringan tertentu, hanya perlu dilakukan perubahan pada protokol yang berhubungan dengan interface jaringan saja.


Arsitektur jaringan menggunakan protokol TCP/IP pada dasarnya terdiri dari 4 lapis kumpulan protokol yang bertingkat. Peralatan fisik, radio, kabel, modem, card LAN seringkali disebut sebagai lapisan terakhir, lapisan ke lima (5). Jadi ke lima (5) lapis/layer tersebut adalah:

### 1. Application Layer
### 2. Transport Layer
### 3. Network Layer
### 3. Link Layer
### 4. Physical Layer


