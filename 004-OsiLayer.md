<p align="center"><img src="https://drive.google.com/uc?export=view&id=1GWF4OFlDJnP7fRxQlJME6VDpMr7MbNbB"></p>

# Pengenalan 7 Osi Layer
Model OSI (Open System Interconnection) diciptakan oleh International Organization for Standardization (ISO) yang menyediakan kerangka logika terstruktur bagaimana proses komunikasi data berinteraksi melalui jaringan. Dahulu komunikasi data yang melibatkan komputer-komputer dari vendor yang berbeda-beda. Masing-masing vendor menggunakan protocol dan format data yang berbeda-beda. Sehingga ISO membuat suatu arsitektur komunikasi yang dikenal sebagai model OSI yang mendefinisikan standar untuk menghubungkan komputer-komputer dari vendor yang berbeda.
Secara umum, fungsi dan penjelasan masing-masing layer adalah sebagai berikut :

## 1. Physical Layer.
Untuk mendefinisikan media transmisi jaringan, sinkronisasi bit, arsitektur jaringan (seperti Ethernet), topologi jaringan dan pengabelan. Selain itu, level ini juga mendefinisikan bagaimana Network Interface Card (NIC) dapat berinteraksi dengan media kabel atau radio. Data biner dikodekan dalam bentuk yang dapat ditransmisi melalui media jaringan, sebagai contoh kabel, transceiver dan konektor yang berkaitan dengan layer Physical. Peralatan seperti repeater, hub dan network card berada pada layer ini

## 2. Data-link layer
<li>Untuk menentukan bagaimana bit-bit data dikelompokkan menjadi format yang disebut sebagai frame. Selain itu, pada level ini terjadi koreksi kesalahan, flow control, pengalamatan perangkat keras (seperti halnya Media Access Control Address (MAC Address), dan menetukan bagaimana perangkat-perangkat jaringan seperti hub, bridge, repeater, dan switch layer 2 beroperasi. Spesifikasi IEEE 802, membagi level ini menjadi dua level anak, yaitu lapisan Logical Link Control (LLC) dan lapisan Media Access Control (MAC). Fungsi LLC adalah menyiapkan sebuah pentrasmisian kembali dari kegagalan paket ketika terindikasi. Sedangkan fungsi lapisan MAC adalah mengkoordinasikan akses langsung terhadap lapisan fisik dengan tergantung metode media access controlnya, seperti Carrier Sense Multiple Access with Collision Detection (CSMA/CD), Carrier Sense Multiple Access with Collision Avoidance (CSMA/CA).</li>

<li>CSMA/CD = Carrier Sense Multiple Access with Collision Detection atau sering disingkat menjadi CSMA/CD adalah sebuah metode media access control (MAC) yang digunakan oleh teknologi jaringan Ethernet. Dengan metode ini, sebuah node jaringan yang akan mengirim data ke node tujuan pertama-tama akan memastikan bahwa jaringan sedang tidak dipakai untuk transfer dari dan oleh node lainnya. Jika pada tahap pengecekan ditemukan transmisi data lain dan terjadi tabrakan (collision), maka node tersebut diharuskan mengulang permohonan (request) pengiriman pada selang waktu berikutnya yang dilakukan secara acak (random). Dengan demikian maka jaringan efektif bisa digunakan secara bergantian.</li>
<li>CSMA/CA = Carrier Sense Multiple Access/Collision Avoidance, protokol contention pada jaringan yang bisa melakukan analisa kondisi jaringan untuk menghindari collisions, tidak seperti CSMA/CD yang memakai pengaturan transmisi jaringan ketika terjadi collisions. CSMA/CA mengkonsumsi traffic karena sebelum ada data ditransmisikan ia akan mengirim sinyal broadcast pada jaringan untuk mendeteksi skenario atau kemungkinan terjadinya collision dan memerintahkan semua perangkat untuk tidak broadcast.</li>

## 3. Network Layer
Untuk mendefinisikan alamat-alamat IP dan menyediakan fungsi routing sehingga paket dapat dikirim keluar dari segment network lokal ke suatu tujuan yang berada pada suatu network lain. Contoh protocol yang digunakan seperti IP

## 4. Transport Layer
Untuk memecah data ke dalam paket-paket data serta memberikan nomor urut ke paket-paket tersebut sehingga dapat disusun kembali pada sisi tujuan setelah diterima. Selain itu, pada level ini juga membuat sebuah tanda bahwa paket diterima dengan sukses (acknowledgement), dan mentransmisikan ulang terhadap paket-paket yang hilang di tengah jalan.

Layer transport data, menggunakan protocol seperti UDP dan TCP. Layer ini menyediakan transfer yang reliable dan transparan antara kedua titik akhir, layer ini juga menyediakan multiplexing, kendali aliran dan pemeriksaan error serta memperbaikinya.

## 5. Session Layer
Untuk mendefinisikan bagaimana koneksi dapat dimulai, dipelihara, atau diakhiri. Beberapa protocol pada layer ini: NETBIOS: suatu session interface dan protocol, dikembangkan oleh IBM, yang menyediakan layanan ke layer presentation dan layer application. NETBEUI, (NETBIOS Extended User Interface), suatu pengembangan dari NETBIOS yang digunakan pada produk Microsoft networking, seperti Windows NT dan LAN Manager. ADSP (AppleTalk Data Stream Protocol). PAP (Printer Access Protocol), yang terdapat pada printer Postscript untuk akses pada jaringan AppleTalk.

## 6. Presentation Layer
Untuk mentranslasikan data yang hendak ditransmisikan oleh aplikasi ke dalam format yang dapat ditransmisikan melalui jaringan. Protokol yang berada dalam level ini adalah perangkat lunak redirektor (redirector software), seperti layanan Workstation (dalam Windows NT) dan juga Network shell (semacam Virtual Network Computing (VNC) atau Remote Desktop Protocol (RDP)).

## 7. Aplication Layer
Sebagai antarmuka dengan aplikasi dengan fungsionalitas jaringan, mengatur bagaimana aplikasi dapat mengakses jaringan, dan kemudian membuat pesan-pesan kesalahan. Protokol yang berada dalam lapisan ini adalah HTTP, FTP, SMTP, dan NFS.
Meskipun dalam praktiknya kita tidak berhubungan langsung dengan model OSI, dan hanya berhubungan dengan protocol, namun model ini selalu digunakan network engineer dalam melakukan analisis dan troubleshooting jaringan komputer sehingga kita perlu memahami cara kerja model OSI.

<p align="center"><img src="https://drive.google.com/uc?export=view&id=1dDDheuMYCYGqAkS6bdGh9ShlqAayASzA"></p>

## Fungsi OSI secara singkat :

<li><b>Physical</b> : Menentukan tegangan, kecepatan, besaran fisik, dan mengalirkan bit-bit antar device </li>
<li><b>Data Link</b> : Menyediakan akses ke media menggunakan MAC Address dan melakukan error detection </li>
<li><b>Network</b> : Menyediakan logical addressing dan menentukan rute menuju tujuan</li>
<li><b>Transport</b> : Menyediakan reliable atau unreliable delivery dan mengecek error connection sebelum transmisi data </li>
<li><b> Session</b> : Memisahkan data dari berbagai aplikasi</li>
<li><b>Presentation</b> : Menyajikan data dan menangani proses seperti enkripsi data</li>
Application : Menyediakan user interface

