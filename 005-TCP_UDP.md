# TCP & UDP
TCP dan UDP adalah dua protokol komunikasi yang digunakan dalam jaringan komputer untuk mengatur pengiriman data antar perangkat. Berikut penjelasan konsep dasarnya:

## TCP/IP (Transmission Control Protocol/Internet Protocol)
TCP/IP adalah protokol komunikasi utama yang menjadi dasar bagi internet dan jaringan komputer. Protokol ini memastikan data dikirim, diterima, dan disusun ulang dengan benar.

### Fungsi Utama:
1. TCP (Transmission Control Protocol):
- Membagi data menjadi segmen kecil sebelum dikirim.
- Menjamin data sampai ke tujuan dengan urutan yang benar.
- Memastikan pengiriman ulang jika ada data yang hilang.

2. IP (Internet Protocol):
- Mengatur alamat IP sebagai identitas perangkat.
- Mengarahkan paket data dari pengirim ke penerima melalui jaringan.

### Karakteristik TCP/IP:
- Berbasis koneksi (Connection-Oriented): Memerlukan koneksi aktif antara pengirim dan penerima.
- Reliabel: Data yang hilang atau rusak akan dikirim ulang.
- Lambat: Karena adanya proses pengecekan dan pengelolaan data.

### Contoh Penggunaan TCP/IP:
- Web browsing (HTTP/HTTPS)
- Email (SMTP, IMAP, POP3)
- Transfer file (FTP)

## UDP (User Datagram Protocol)
UDP adalah protokol komunikasi yang lebih ringan dan cepat dibandingkan TCP. UDP tidak menjamin reliabilitas data yang dikirim, sehingga lebih cocok untuk aplikasi yang membutuhkan kecepatan.

### Fungsi Utama:
- Mengirimkan data tanpa membuat koneksi terlebih dahulu.
- Tidak memeriksa apakah data berhasil diterima.

###Karakteristik UDP:
- Tanpa koneksi (Connectionless): Data dikirim langsung ke tujuan tanpa memerlukan sesi komunikasi.
- Cepat: Tidak ada proses verifikasi atau pengelolaan ulang.
- Tidak reliabel: Data yang hilang tidak akan dikirim ulang.

### Contoh Penggunaan UDP:
- Streaming video dan audio (Netflix, YouTube)
- Game online
- Resolusi DNS (Domain Name System)



| Fitur | TCP/IP | UDP |
|---|---|---|
| Koneksi | Memerlukan koneksi | Tidak memerlukan koneksi |
| Reliabilitas | Andal (dengan pengecekan data) | Tidak andal (tanpa verifikasi) |
| Kecepatan | Relatif lambat | Cepat |
| Aplikasi | Browsing, email, transfer file | Streaming, game online |
