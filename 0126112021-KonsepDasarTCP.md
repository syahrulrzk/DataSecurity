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
Lapisan Aplikasi adalah lapisan yang paling dasar dari sebuah protokol TCP/IP, dan memiliki kontak langsung pengguna. Jika kita analogikan, pada layer ini contohnya adalah aplikasi yang anda gunakan ketika bermain komputer.

Pada tahap yang satu ini, aplikasi yang anda jalankan mempengaruhi jenis protokol lanjutan yang akan digunakan. Misalnya jika anda membuka sebuah web browser, maka komputer akan secara otomatis menjalankan protokol HTTP. Lain halnya jika anda ingin mengirim file, maka protokol yang akan digunakan adalah FTP atau File Transfer Protocol.

### 2. Transport Layer
Selanjutnya, ada lapisan Transport yang berfungsi untuk menjembatani transportasi pemindahan data antar komputer. Lapisan yang satu ini berada setingkat di atas lapisan Application. Pada layer ini, ada dua jenis protokol yang sering digunakan, yaitu UDP ataupun TCP.

Protokol ini memiliki keunggulannya masing-masing. Pada protokol TCP, ibaratnya adalah menaiki sebuah mobil. Walaupun jalannya tidak terlalu cepat serta tidak bisa “membalap”, protokol TCP menjamin keamanan paket data yang dikirim 100%.

Namun paket UDP berbeda, analoginya seperti menaiki sebuah motor. Memang kecepatannya tak terkalahkan. Namun protokol tersebut tidak bisa menjamin bahwa data dalam keadaan seutuhnya penuh ketika sampai di tujuan.  Oleh karena itu, protokol UDP digunakan untuk transfer data yang tidak akan corrupt ketika hilang beberapa persen bagiannya.

### 3. Network Layer
Pada lapisan Network , protokol pada lapisan Transport akan dikonversi menjadi sebuah IP Address yang berguna untuk memasangkan antar komputer pada jaringan.

Pada layer Network terjadi pemecahan data agar bisa sesuai dengan besar media yang akan dilalui. Setelah paket terpecah menjadi bagian-bagian kecil, merkea akan mengalami proses enkapsulasi atau pembungkusan. Setelah itu paket diberikan alamat dan dikirimkan ke komputer tujuan benrdasarkan jalur paket yang akan dikirim.

### 3. Link Layer
Pada lapisan ini protokol TCP/IP, memiliki kontak langsung dengan hardware komputer. Dengan transmisi khusus, komputer memiliki kemmapuan untuk mengirimkan paket data pada lapisan Network melalui media kabel tembaga (fiber optic) ataupun secara nirkabel (wireless).

Itulah beberapa hal mengenai pengertian TCP/IP, kelebihan, fungsi dan lapisan-lapisan pada protokol tersebut. Dengan mengetahui berbagai hal ini, maka sahabat Qwords diharapkan bisa lebih paham bagaimana data dari satu komputer ke komputer lain dalam sebuah jaringan didistribusikan.


### 4. Physical Layer


