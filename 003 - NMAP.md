# NMAP
Nmap adalah singkatan dari Network Mapper. Ini merupakan sebuah aplikasi atau tool yang berguna untuk audit dan eksplorasi keamanan suatu jaringan, Tools ini dibuat oleh Gordon Lyon atau yang lebih dikenal dengan nama Fyodor Vaskovich. Nmap pertama kali dirilis pada bulan September 1997.

Tools ini memiliki license Open Source, jadi siapa saja bebas mengembangkannya. Meski pada awalnya Nmap hanya bisa digunakan di sistem operasi Linux, namun sekarang tools ini dapat digunakan secara gratis di hampir semua platform seperti Microsoft Windows, Linux (Semua Distro), Mac OS X, FreeBSD, OpenBSD, NetBSD, Sun Solaris, Amiga, HP-UX, dan banyak lainnya.

## Cara Menggunakan Nmap
Nmap merupakan tool scan dan audit keamanan jaringan yang powerfull dan gratis. Nmap biasa di gunakan oleh Administator jaringan. Berikut adalah beberapa contoh cara menggunakan Nmap.

## Memindai Jaringan Menggunakan Nmap
Nmap dapat memindai seluruh jaringan untuk mencari host yang tersedia dan port terbuka. Ada beberapa metode pemindaian yang dapat dipilih. Kalian bisa menggunakan pemindaian agresif yang menghasilkan lebih banyak informasi, tetapi firewall mungkin dapat memblokirnya. Atau kalian bisa menggunakan pemindaian diam-diam yang bisa digunakan kebanyakan orang.

<pre>nmap -sT scanme.nmap.org</pre>
Ini adalah pemindaian koneksi TCP. Jenis pemindaian ini menyelesaikan three-way TCP handshake dengan host. Namun, ini juga memudahkan host untuk memblokir pemindaian semacam itu. Ditambah lagi, mereka juga membutuhkan waktu lebih lama untuk menyelesaikannya.

Pemindaian SYN, di sisi lain, tidak menyelesaikan seluruh three-way handshake. Jadi, lebih sulit untuk memblokir dan lebih cepat daripada pemindaian koneksi TCP.
<pre>nmap -sS scanme.nmap.org</pre>

Karena sebagian besar web menggunakan TCP, pemindaian UDP lebih jarang. Namun, kalian dapat menggunakannya untuk menemukan layanan DNS, SNMP, dan DHCP.

<pre>nmap -sU scanme.nmap.org</pre>
Pemindaian SCTP INIT adalah fitur kuat lainnya dari nmap di Linux. Namun, tetapi tidak semua perangkat menggunakan protokol ini. Jadi, keamanannya tidak terlalu ketat. Terlepas dari itu, pemindaian ini cepat, tersembunyi, dan akurat.
<pre>nmap -sY scanme.nmap.org</pre>

## Menentukan Host Menggunakan Nmap
Nmap memungkinkan Administator untuk menganalisis jaringan dalam beberapa metode. Kalian dapat memindai satu IP, berbagai IP, dan IP yang dipilih.
<pre>nmap -sS 192.168.100.1
nmap -sS 192.168.100.1/24
nmap -sS 192.168.100.1 192.168.100.101 192.168.100.201</pre>
Semua pemindaian nmap ini dilakukan di jaringan lokal. Kalian juga dapat memindai jaringan jarak jauh dengan cara yang sama.

## Menentukan Port Di Nmap
Nmap memindai 1000 port paling populer secara default. Namun, sering kali memerlukan waktu lebih lama dan dapat memicu firewall atau sistem deteksi intrusi. Untuk itu kita dapat menentukan portnya secara spesifik untuk mengatasi masalah ini.

<pre>nmap -sS -p 80,443 192.168.100.1
nmap -sS -p 21-25,80,139,8080 192.168.100.1</pre>
Kalian dapat menambahkan sebanyak mungkin port yang kalian inginkan menggunakan opsi -p. Sedangkan -F adalah pilihan untuk menggunakan mode cepat, yang pada dasarnya scan port lebih sedikit daripada scan default.
<pre>nmap -sS -F 192.168.100.1</pre>
Opsi –top-ports memungkinkan Administator untuk menentukan port yang paling populer. Ini bisa berguna untuk pengintaian skala besar.

<pre>nmap -sS --top-ports 10 192.168.100.1</pre>

## Mendeteksi Layanan Dan Informasi Versi
Nmap hebat dalam menemukan layanan dan informasi versinya. Data ini cukup akurat dalam banyak kasus. Kalian dapat menambahkan deteksi versi ke pemindaian nmap kalian dengan menambahkan opsi -sV.

<pre>nmap -sS -sV -p 80,443 192.168.100.1</pre>
Nmap menggunakan beberapa teknik untuk mengambil informasi versi. Kalian dapat mengontrol operasi menggunakan opsi –version-intensity. Semakin besar intensity-nya, semakin akurat hasilnya. Namun, mereka juga membutuhkan lebih banyak waktu.

<pre>nmap -sS -sV --version-intensity 9 192.168.100.1</pre>
Kalian juga dapat menggunakan nmap untuk mendeteksi versi OS. Ini sangat membantu karena kalian bisa menemukan layanan yang sudah out of date.

<pre>nmap -sS -O -p 80,443 192.168.100.1</pre>
Opsi –osscan-guess mungkin memberikan sedikit lebih banyak informasi dalam beberapa situasi. Tapi, itu jauh lebih mengganggu.

<pre>nmap -sS --osscan-guess 192.168.100.1</pre>
Kalian juga dapat menggunakan opsi -A untuk mengaktifkan versi dan deteksi OS bersama traceroute.

<pre>nmap -sS -A -p 80,443 192.168.100.1</pre>

## Menggunakan Scripts Nmap
Skrip Nmap menggabungkan kekuatan dan fleksibilitas. Administator dapat memilih dari community-driven NSE scripts atau membuat skrip kustom sendiri. Nmap mengkategorikan skrip default untuk membuatnya lebih mudah digunakan.

<pre>nmap --script=version 192.168.100.1</pre>
Skrip Nmap ditulis dalam Lua dan disimpan di ```/usr/share/nmap/nselib/``` . Beberapa skrip NSE menarik lainnya termasuk auth, vulns, exploit, dan brute. Kalian dapat menggunakan beberapa skrip menggunakan daftar yang dipisahkan koma.

<pre>nmap --script=version,auth 192.168.100.1</pre>
Menambahkan spasi di antara koma akan menghentikan pemindaian. Pastikan untuk menghindarinya. Kalian juga dapat menentukan skrip terkait menggunakan karakter pengganti bash-style .

<pre>nmap --script=http* 192.168.100.1</pre>
Kalian selalu dapat mempelajari lebih lanjut tentang skrip nmap menggunakan opsi –script-help.

<pre>nmap --script-help "discovery"</pre>

## Mengontrol Waktu Pindai Untuk Nmap
Nmap memberikan kinerja luar biasa di luar kotak. Namun, kalian juga dapat menyesuaikan waktu untuk memenuhi tujuan pemindaian kalian. Parameter -T memungkinkan kita untuk mengatur waktu template antara nol sampai lima. Nilai yang lebih tinggi menentukan pemindaian yang lebih cepat.

<pre> nmap -sS -T 2 --top-ports 10 192.168.100.1</pre>
Pengguna juga dapat menentukan penundaan antara setiap probe yang dikirim oleh nmap. Kalian dapat menggunakan ini untuk menghindari firewall. Penundaan ditentukan dalam hitungan detik.

## Mengontrol Waktu Pindai Untuk Nmap
<pre>nmap -sS --scan-delay 1 --top-ports 10 192.168.100.1</pre>
Menghindari Firewall Untuk Pemindaian Nmap?
Teknologi telah berkembang pesat sejak Nmap dirilis. Kebanyakan firewall saat ini dapat mendeteksi port sweep dan memblokir alamat sumber. Nmap menawarkan beberapa metode untuk menghindari firewall dan IDS.

<pre>nmap -sS -D 192.168.100.111 --top-ports 10 192.168.100.1</pre>
Parameter -D menetapkan IP address umpan. Ini tidak menutupi IP kalian. Sebaliknya, itu membuatnya tampak seperti beberapa host mengirim probe pemindaian yang sama.

<pre>nmap -sS -e wlp2s0 -S 192.168.100.111 --top-ports 10 192.168.100.1</pre>
Kalian dapat menggunakan opsi -S untuk memalsukan IP address kalian. Kalian perlu menggunakan opsi -e untuk memalsukan alamat sumber kalian. Dibutuhkan nama interface sebagai argumen. kalian juga dapat memalsukan MAC address.

## Menghindari Firewall Untuk Pemindaian Nmap
<pre>nmap -sS --spoof-mac 0 --top-ports 10 192.168.100.1</pre>
Menentukan nilai nol untuk –spoof-mac memberi tahu nmap untuk menghasilkan MAC acak untuk sesi itu. Kalian selalu dapat menggunakan address khusus.

## Mengelola Output Nmap
Nmap menawarkan beberapa cara untuk menangani output pemindaian. Kalian dapat menyimpan hasil sesi pemindaian ke file tertentu.

<pre>nmap -sS -p 80,443 -oN scan-output 192.168.100.1</pre>
Banyak Administrator ingin menyimpan output sebagai XML. Ini membuatnya lebih mudah untuk diurai.

<pre>nmap -sS -p 80,443 -oX scan-output 192.168.100.1</pre>
Kebanyakan orang juga suka menyimpan hasilnya dalam file grepable. Ini membuat penguraian data lebih mudah menggunakan tool Unix populer seperti grep, cut, dan awk.
<pre>nmap -sS -p 80,443 -oG scan-output 192.168.100.1</pre>


## Kesimpulan
Jadi itulah beberapa contoh cara menggunakan Nmap untuk pemula. Nmap membuat pemindaian jaringan menjadi lebih mudah. Kalian dapat memilih dari banyak teknik pemindaian untuk memenuhi tujuan yang berbeda. Selain itu, kumpulan skrip NSE yang andal membuat kalian lebih mudah menemukan kerentanan pada suatu layanan.



















