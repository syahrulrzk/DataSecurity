# Analisis HTTP Status Code Non-200

Dokumen ini berisi analisis terhadap seluruh HTTP Status Code selain **200 OK**, meliputi pola akses, Top Path, Top IP Address, serta rekomendasi tindak lanjut berdasarkan hasil observasi.

---

# 404 — Not Found (404.709 Request)

## Top 5 Path

| Path | Count | Analisis |
|------|------:|----------|
| `/intranet/storage/users/profile.png` | **399.669** | **98,7%** dari seluruh 404. Default avatar tidak ditemukan. |
| `/intranet/storage/users/9ebb14f9...jpg` | 2.010 | Foto profil user tidak tersedia. |
| `/intranet/index.php` | 217 | Session expired atau direct access. |
| `/intranet/login.php` | 216 | Session expired atau direct access. |
| `/intranet/main.php` | 156 | Session expired atau direct access. |

## Top 5 Source IP

| IP Address | Count |
|------------|------:|
| 101.255.109.178 | 118.771 |
| 101.255.107.154 | 100.823 |
| 103.165.221.90 | 15.238 |
| 101.255.158.250 | 13.626 |
| 103.154.150.96 | 12.087 |

## Analisis

Sebagian besar (98,7%) error 404 berasal dari file:

```text
/intranet/storage/users/profile.png
```

Hal ini menunjukkan bahwa aplikasi mencoba menampilkan avatar default yang sebenarnya tidak tersedia di server.

### Kesimpulan

- Bukan aktivitas scanning.
- Tidak mengindikasikan serangan.
- Merupakan bug pada aplikasi.

### Rekomendasi

- Sediakan default avatar (`profile.png`).
- Tambahkan fallback image ketika foto pengguna belum tersedia.

---

# 302 — Redirect (52.364 Request)

## Top 5 Path

| Path | Count | Analisis |
|------|------:|----------|
| `/intranet/login.php` | 19.903 | Redirect setelah login berhasil. |
| `/intranet/logout.php` | 17.793 | Redirect setelah logout. |
| `/intranet/index.php` | 6.802 | Redirect ke halaman login akibat session habis. |
| `/intranet/main.php` | 4.222 | Redirect ke login. |
| `/intranet/` | 1.873 | Redirect menuju login page. |

## Top 5 Source IP

| IP Address | Count |
|------------|------:|
| 101.255.107.154 | 18.479 |
| 101.255.109.178 | 8.512 |
| 124.158.144.178 | 3.315 |
| 115.124.64.130 | 1.471 |
| 103.121.20.10 | 1.407 |

## Analisis

Seluruh redirect masih sesuai alur autentikasi aplikasi.

### Kesimpulan

Aktivitas normal.

Tidak diperlukan tindakan.

---

# 405 — Method Not Allowed (18.836 Request)

## Top 5 Path

| Path | Count | Analisis |
|------|------:|----------|
| `/` | **17.790** | 94,5% request menggunakan HTTP Method yang tidak diperbolehkan. |
| `/favicon.ico` | 163 | Bot probing. |
| `/apple-touch-icon-precomposed.png` | 133 | Bot probing. |
| `/apple-touch-icon.png` | 133 | Bot probing. |
| `/intranet/login.php` | 132 | Login probing. |

## Top 5 Source IP

| IP Address | Count | Analisis |
|------------|------:|----------|
| **147.139.160.135** | **17.224** | Attacker utama (91,4%). |
| 103.164.214.85 | 400 | Scanner. |
| 182.253.222.86 | 184 | Scanner. |
| 101.255.107.154 | 78 | User normal. |
| 2001:df7:5300:19::5b4 | 61 | IPv6 scanner. |

## Analisis

Terlihat satu IP mendominasi seluruh request 405.

Pola ini identik dengan automated scanner yang mencoba berbagai HTTP Method terhadap root website.

### Kesimpulan

- Aktivitas scanning.
- Sudah berhasil diblok oleh WAF.
- Tidak mencapai origin server.

### Rekomendasi

- Tambahkan IP ke blacklist permanen apabila pola terus berulang.
- Monitoring terhadap IP serupa.

---

# 304 — Not Modified (4.938 Request)

## Top 5 Path

| Path | Count |
|------|------:|
| fontawesome-webfont.woff2 | 708 |
| Simple-Line-Icons.woff | 688 |
| /intranet/storage/info/login-logo.png | 230 |
| /intranet/storage/info/login-background.jpg | 224 |
| /intranet/storage/info/logo.png | 222 |

## Top 5 Source IP

| IP Address | Count |
|------------|------:|
| 101.255.107.154 | 1.450 |
| 101.255.109.178 | 557 |
| 124.158.144.178 | 246 |
| 103.121.20.10 | 202 |
| 115.124.64.130 | 178 |

## Analisis

Browser menggunakan cache sehingga server mengembalikan status **304 Not Modified**.

### Kesimpulan

Normal.

Caching berjalan dengan baik.

---

# 403 — Forbidden (3.307 Request)

## Top 5 Path

| Path | Count | Analisis |
|------|------:|----------|
| `/intranet/storage/emp/pic/` | **3.104** | Direct directory access. |
| `/intranet/storage/recruit/pic/` | 76 | Direct directory access. |
| `/intranet/storage/emp/ktp/` | 48 | Folder KTP. |
| `/intranet/storage/emp/contract/` | 32 | Folder kontrak. |
| `/intranet/storage/emp/file/` | 9 | Folder dokumen pegawai. |

## Top 5 Source IP

| IP Address | Count |
|------------|------:|
| 101.255.109.178 | 1.373 |
| 101.255.107.154 | 984 |
| 101.255.158.250 | 90 |
| 103.165.221.90 | 75 |
| 115.124.64.130 | 54 |

## Analisis

Sebagian besar request mencoba membuka folder secara langsung.

Contoh:

```text
/storage/emp/ktp/
/storage/emp/contract/
/storage/emp/file/
```

Server/WAF berhasil mengembalikan status **403 Forbidden** sehingga isi direktori tidak dapat diakses.

### Kesimpulan

Proteksi berjalan dengan baik.

Namun perlu dilakukan investigasi mengapa user atau aplikasi mencoba membuka folder sensitif secara langsung.

### Rekomendasi

- Pastikan directory listing tetap dinonaktifkan.
- Audit aplikasi yang menghasilkan URL tersebut.
- Evaluasi apakah akses berasal dari aplikasi internal atau aktivitas probing.

---

# 499 — Client Closed Request (1.841 Request)

## Top 5 Path

| Path | Count | Analisis |
|------|------:|----------|
| `/intranet/void.php` | **1.687** | Client membatalkan request. |
| `/intranet/index.php` | 119 | - |
| `/` | 19 | - |
| `/intranet/main.php` | 8 | - |
| `/intranet/download.php` | 3 | - |

## Top 5 Source IP

| IP Address | Count |
|------------|------:|
| 101.255.107.154 | 543 |
| 124.158.144.178 | 274 |
| 103.87.79.170 | 138 |
| 182.16.177.66 | 125 |
| 101.255.109.178 | 105 |

## Analisis

Lebih dari 90% request 499 berasal dari:

```text
/intranet/void.php
```

Status 499 berarti client menutup koneksi sebelum server selesai memberikan response.

### Kesimpulan

Mengindikasikan adanya masalah performa pada endpoint tersebut.

### Rekomendasi

- Profiling query database.
- Review proses PHP.
- Optimasi response time endpoint `void.php`.

---

# 500 — Internal Server Error (438 Request)

## Top 5 Path

| Path | Count | Analisis |
|------|------:|----------|
| `/intranet/void.php` | **370** | Error backend. |
| `/attendances/report-distance` | 33 | Error modul attendance. |
| `/intranet/download.php` | 24 | Error download. |
| `/attendances/report-start-empty` | 6 | Backend error. |
| `/intranet/popup.php` | 3 | Backend error. |

## Top 5 Source IP

| IP Address | Count |
|------------|------:|
| 101.255.107.154 | 109 |
| 2001:448a:9000:e0d:* | 99 |
| 125.161.196.117 | 66 |
| 115.124.64.130 | 59 |
| 101.255.109.178 | 45 |

## Analisis

Endpoint `void.php` kembali mendominasi error server.

Selain itu terdapat error pada modul attendance.

### Kesimpulan

Masalah berasal dari backend aplikasi, bukan dari WAF.

### Rekomendasi

- Review application log.
- Audit exception PHP.
- Periksa query database.
- Lakukan profiling terhadap endpoint `void.php`.

---

# Minor Status Code

| Status | Top Path | Top IP | Analisis |
|---------|----------|---------|----------|
| **206** | User Photo (.jpg) | 101.255.107.154 | Partial Content (Normal) |
| **301** | `/intranet` → `/intranet/` | 101.255.109.178 | Redirect Normal |
| **400** | `/intranet/void.php` | 101.255.107.154 | Malformed Request |
| **502** | Beragam | Beragam | Upstream Error (Minor) |

---

# Executive Summary

| Status | Kategori | Prioritas |
|---------|----------|-----------|
| **404** | Bug aplikasi (Missing Avatar) | 🟡 Medium |
| **302** | Login/Logout Flow | 🟢 Normal |
| **304** | Browser Cache | 🟢 Normal |
| **405** | Bot/Scanner berhasil diblok | 🔴 High |
| **403** | Akses ke direktori sensitif berhasil ditolak | 🟠 Medium |
| **499** | Performance Issue (`void.php`) | 🟠 Medium |
| **500** | Backend Error (`void.php`) | 🔴 High |

---

# Kesimpulan Utama

1. **404** didominasi oleh missing `profile.png` (98,7%) sehingga merupakan bug aplikasi, bukan aktivitas serangan.
2. **405** berasal dari aktivitas scanning yang didominasi IP **147.139.160.135**. WAF berhasil memblokir request sebelum mencapai origin server.
3. **403** menunjukkan adanya percobaan akses langsung ke direktori sensitif seperti folder foto pegawai, KTP, dan kontrak. Proteksi server/WAF berjalan efektif, namun perlu investigasi terhadap sumber akses tersebut.
4. **499** dan **500** mengindikasikan masalah performa dan stabilitas pada endpoint **`void.php`**, sehingga menjadi prioritas utama untuk investigasi di sisi aplikasi.
5. **302**, **304**, **206**, dan **301** merupakan aktivitas normal yang berkaitan dengan autentikasi, redirect, caching, serta pengambilan aset statis.
