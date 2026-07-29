# WAF Analysis Report: sysbpr.simgroup.co.id
## Periode: 1 - 28 Juli 2026

---

## 1. Overview

| Metrik | Nilai |
|---|---|
| **Total Request** | 3,205,267 |
| **Blocked (WAF)** | 18,819 (0.59%) |
| **Passed Through (Status 200)** | 2,715,503 (84.7%) |
| **Unique IP (Status 200)** | ~200-335 per hari (workday) |
| **Block Rate** | Sangat rendah -- mayoritas traffic lolos |

---

## 2. Status Code Distribution

| Status | Count | Persentase | Keterangan |
|---|---|---|---|
| **200** | 2,715,503 | 84.7% | Sukses / lolos |
| **404** | 404,709 | 12.6% | Not Found -- tinggi, indikasi scanning |
| **302** | 52,364 | 1.6% | Redirect |
| **405** | 18,836 | 0.6% | Method Not Allowed |
| **304** | 4,938 | 0.15% | Not Modified (cache) |
| **403** | 3,307 | 0.1% | Forbidden |
| **206** | 2,049 | 0.06% | Partial Content |
| **499** | 1,841 | 0.06% | Client Closed Request |
| **500** | 438 | 0.01% | Internal Server Error |
| Lainnya | < 100 masing-masing | < 0.01% | 400, 502, 401, 408, 422 |

**Catatan**: Status 404 yang sangat tinggi (404K) mengindikasikan ada aktivitas scanning/enumerasi path. Top 404 path: `/intranet/storage/users/profile.png` (399K), yang kemungkinan besar adalah missing avatar/gambar profil user -- bukan scanning.

---

## 3. Top Attack Type (Berdasarkan final_plugin)

| Plugin | Rule Type | Count | Persentase |
|---|---|---|---|
| **ACL** (Custom Rule) | - | 18,627 | 99.0% |
| WAF | scanner_behavior | 63 | 0.3% |
| WAF | arbitrary_file_uploading | 62 | 0.3% |
| WAF | arbitrary_file_reading | 58 | 0.3% |
| WAF | other | 8 | < 0.1% |
| WAF | code_exec | 1 | < 0.1% |

**Insight**: Hampir seluruh block berasal dari **ACL custom rule** (99%), bukan dari WAF managed rule. Ini berarti rule ACL yang dikonfigurasi secara manual yang melakukan sebagian besar blocking.

---

## 4. Daily Trend WAF Request

| Tanggal | Total Request | Blocked | Block Rate | Catatan |
|---|---|---|---|---|
| 01 Jul | 138,817 | 21 | 0.02% | Normal |
| 02 Jul | 184,600 | 93 | 0.05% | Normal |
| 03 Jul | 142,524 | 52 | 0.04% | Normal |
| 04 Jul | 56,404 | 55 | 0.10% | Weekend |
| 05 Jul | 8,924 | **400** | **4.48%** | Anomaly spike |
| 06 Jul | 155,962 | 46 | 0.03% | Normal |
| 07-15 Jul | ~100K-160K/hari | 12-92 | < 0.1% | Normal |
| **16 Jul** | 142,423 | **1,228** | **0.86%** | **Serangan dimulai** |
| **17 Jul** | 117,130 | **1,468** | **1.25%** | Serangan berlanjut |
| **18 Jul** | 87,955 | **1,468** | **1.67%** | Weekend, attack rate tinggi |
| **19 Jul** | 15,394 | **1,474** | **9.57%** | Weekend, attack dominan |
| **20-28 Jul** | ~60K-200K/hari | **1,454-1,510** | ~1% | **Serangan konsisten harian** |

**Pola Penting**:
- **Sebelum 16 Juli**: Block rate < 0.1% (normal)
- **Mulai 16 Juli**: Block rate melonjak ke ~1,400-1,500/hari secara konsisten
- Ini mengindikasikan **sustained attack** dari satu sumber yang dimulai 16 Juli

---

## 5. Top 5 Attacking IP (by Blocked Requests)

| Rank | IP Address | Blocked Count | Persentase dari Total Block |
|---|---|---|---|
| 1 | **147.139.160.135** | **17,224** | **91.5%** |
| 2 | 103.164.214.85 | 400 | 2.1% |
| 3 | 182.253.222.86 | 184 | 1.0% |
| 4 | 101.255.107.154 | 78 | 0.4% |
| 5 | 2001:df7:5300:19::5b4 | 61 | 0.3% |

**Insight**: IP **147.139.160.135** mendominasi 91.5% dari seluruh block. IP ini **tidak memiliki satupun request yang lolos** (status 200 = 0). Seluruh traffic dari IP ini di-block oleh ACL rule 20134680.

---

## 6. Top Targeted URLs (by Blocked Requests)

| Rank | URL Path | Blocked Count |
|---|---|---|
| 1 | `/` | 17,790 |
| 2 | `/favicon.ico` | 163 |
| 3 | `/apple-touch-icon-precomposed.png` | 133 |
| 4 | `/apple-touch-icon.png` | 133 |
| 5 | `/intranet/login.php` | 132 |
| 6 | `/assets/logo.png` | 120 |
| 7 | `/https:/sysbpr.simgroup.co.id/` | 93 |
| 8 | `/intranet/index.php` | 16 |
| 9 | `/index.php` | 10 |
| 10 | `/intranet/main.php` | 9 |

**Insight**: Penyerang (147.139.160.135) terutama menargetkan root path `/` dan resource statis. Pola ini khas **vulnerability scanner / bot** yang melakukan probing.

---

## 7. Top Triggered Rules

| Rule ID | Plugin | Rule Type | Count | Persentase |
|---|---|---|---|---|
| **20134680** | ACL | Custom | **18,404** | **97.8%** |
| 20134681 | ACL | Custom | 133 | 0.7% |
| 20125246 | ACL | Custom | 90 | 0.5% |
| 900904 | WAF | arbitrary_file_reading | 58 | 0.3% |
| 117014 | WAF | arbitrary_file_uploading | 38 | 0.2% |
| 117028 | WAF | scanner_behavior | 37 | 0.2% |
| 117001 | WAF | arbitrary_file_uploading | 14 | 0.1% |
| 200054 | WAF | scanner_behavior | 10 | 0.1% |
| 117008 | WAF | arbitrary_file_uploading | 10 | 0.1% |
| 117090 | WAF | scanner_behavior | 8 | < 0.1% |

---

## 8. Top 10 Endpoints (Status 200 -- Lolos)

| Rank | Endpoint | Count | Persentase |
|---|---|---|---|
| 1 | **`/intranet/void.php`** | **1,661,667** | **61.2%** |
| 2 | `/intranet/index.php` | 376,846 | 13.9% |
| 3 | `/intranet/ajax.php` | 255,115 | 9.4% |
| 4 | `/intranet/popup.php` | 105,903 | 3.9% |
| 5 | `/api/payroll/send-erp-progress` | 75,774 | 2.8% |
| 6 | `/intranet/main.php` | 47,857 | 1.8% |
| 7 | `/intranet/api.php` | 35,273 | 1.3% |
| 8 | `/intranet/login.php` | 23,486 | 0.9% |
| 9 | `/` | 10,394 | 0.4% |
| 10 | `/intranet/storage/info/login-background.jpg` | 2,209 | 0.1% |

**Insight**: `/intranet/void.php` mendominasi 61.2% dari seluruh traffic yang lolos. Ini kemungkinan besar adalah **AJAX heartbeat/polling endpoint** atau **background task handler**.

---

## 9. Top 10 IP (Status 200 -- Lolos)

| Rank | IP Address | Count | Persentase |
|---|---|---|---|
| 1 | **101.255.109.178** | **794,599** | **29.3%** |
| 2 | **101.255.107.154** | **582,081** | **21.4%** |
| 3 | 103.165.221.90 | 151,408 | 5.6% |
| 4 | 101.255.158.250 | 118,593 | 4.4% |
| 5 | 115.124.64.130 | 62,436 | 2.3% |
| 6 | 103.121.20.10 | 61,577 | 2.3% |
| 7 | 103.78.113.34 | 58,715 | 2.2% |
| 8 | 124.158.144.178 | 56,376 | 2.1% |
| 9 | 103.154.150.96 | 43,687 | 1.6% |
| 10 | 115.124.64.134 | 31,299 | 1.2% |

**Insight**: **2 IP teratas (101.255.109.178 + 101.255.107.154) menghasilkan 50.7% dari seluruh traffic yang lolos**. Keduanya juga termasuk dalam top 10 IP yang paling banyak hit `/intranet/void.php`.

---

## 10. Top 10 User Agent (Status 200)

| Rank | User Agent | Count | Persentase |
|---|---|---|---|
| 1 | Chrome/150.0 (Windows 10) | 1,285,828 | 47.3% |
| 2 | Chrome/149.0 (Windows 10) | 704,834 | 25.9% |
| 3 | Firefox/152.0 (Windows 10) | 195,174 | 7.2% |
| 4 | Edge/150.0 (Windows 10) | 171,745 | 6.3% |
| 5 | Firefox/153.0 (Windows 10) | 43,903 | 1.6% |
| 6 | Chrome/150.0 (macOS) | 36,119 | 1.3% |
| 7 | **GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.33** | **35,273** | **1.3%** |
| 8 | Edge/149.0 (Windows 10) | 33,610 | 1.2% |
| 9 | Chrome/148.0 (Windows 10) | 21,925 | 0.8% |
| 10 | Chrome/151.0 (Windows 10) | 16,462 | 0.6% |

**Insight**:
- Mayoritas user agent adalah browser legitimate (Chrome, Firefox, Edge)
- **GuzzleHttp/PHP** (35,273 hits) = internal API call dari backend PHP, kemungkinan server-to-server communication untuk `/api/payroll/send-erp-progress`
- Tidak ada user agent kosong (`-`) yang lolos -- bagus

---

## 11. Anomali Status 200

### 11.1 High-Frequency IP+Path Combinations (>100 requests)

| IP | Path | Count | Analisis |
|---|---|---|---|
| 101.255.107.154 | /intranet/void.php | 415,331 | Sangat tinggi -- automated/programmatic |
| 101.255.109.178 | /intranet/void.php | 397,669 | Sangat tinggi -- automated/programmatic |
| 101.255.109.178 | /intranet/ajax.php | 167,885 | Tinggi -- automated |
| 103.165.221.90 | /intranet/void.php | 126,481 | Tinggi |
| 101.255.109.178 | /intranet/index.php | 103,303 | Tinggi |
| 101.255.107.154 | /intranet/index.php | 97,413 | Tinggi |
| 101.255.158.250 | /intranet/void.php | 95,810 | Tinggi |
| 101.255.109.178 | /api/payroll/send-erp-progress | 49,731 | Payroll API polling |

### 11.2 Request Method Distribution (Status 200)

| Method | Count | Persentase |
|---|---|---|
| **POST** | 1,535,155 | **56.5%** |
| GET | 1,180,318 | 43.5% |
| HEAD | 30 | < 0.01% |

**Anomali**: POST mendominasi (56.5%). Normalnya GET lebih dominan untuk web application. Ini mengkonfirmasi bahwa `/intranet/void.php` menerima POST dalam volume sangat tinggi -- kemungkinan **AJAX long-polling atau background task dispatcher**.

### 11.3 Suspicious Path Check (Status 200)

Tidak ada request ke path sensitif berikut yang lolos dengan status 200:
- `.env`, `.git`, `wp-admin`, `wp-login`, `phpmyadmin`, `shell`, `cmd`, `eval`, `exec`, `config`, `backup`, `.sql`, `.bak`

**Ini positif** -- WAF berhasil memblokir seluruh probing ke path sensitif.

### 11.4 Top Attacker IP Check

IP **147.139.160.135** (top attacker, 17,224 blocked) memiliki **0 request yang lolos** ke status 200. ACL rule bekerja efektif untuk IP ini.

### 11.5 Geographic Distribution

Seluruh traffic (2,715,503 requests status 200) berasal dari region `int` (international). Tidak ada domestic/Indonesia-specific region tag -- ini karena WAF log hanya mencatat `int` untuk semua traffic.

---

## 12. Summary & Recommendation

### Ringkasan

1. **WAF bekerja efektif** memblokir attacker utama (147.139.160.135) -- 100% block rate untuk IP ini
2. **Sustained attack** dimulai 16 Juli 2026, dengan ~1,400-1,500 blocked requests/hari secara konsisten
3. **99% block berasal dari ACL custom rule**, bukan WAF managed rule -- artinya konfigurasi manual yang berperan besar
4. **Traffic yang lolos didominasi** oleh `/intranet/void.php` (61.2%) dari 2 IP utama (50.7% total)
5. **Tidak ada suspicious path** yang lolos ke status 200
6. **POST mendominasi** (56.5%) karena void.php dan ajax.php menerima POST dalam volume tinggi

### Rekomendasi Action

| Prioritas | Action | Detail |
|---|---|---|
| **HIGH** | Investigasi `/intranet/void.php` | Endpoint ini menerima 1.66M POST dalam 28 hari. Verifikasi apakah ini legitimate business logic atau bisa dioptimasi. Pertimbangkan rate limiting jika bukan critical endpoint. |
| **HIGH** | Review IP 101.255.109.178 & 101.255.107.154 | Kedua IP ini menghasilkan 50.7% traffic. Verifikasi apakah ini legitimate user/cabang atau automated system. Jika automated, pertimbangkan API key atau rate limiting. |
| **MEDIUM** | Enable WAF Managed Rules | Saat ini 99% block dari ACL custom. Aktifkan dan tune WAF managed rules untuk coverage yang lebih baik terhadap attack types seperti SQLi, XSS, dan file inclusion. |
| **MEDIUM** | Investigasi 404 volume tinggi | 404K requests (12.6%) -- sebagian besar adalah missing `profile.png`. Fix broken image references di aplikasi untuk mengurangi noise. |
| **MEDIUM** | IP Reputation / Geo-blocking | Pertimbangkan geo-blocking atau IP reputation check untuk mengurangi attack surface dari IP asing. |
| **LOW** | Monitor `/api/payroll/send-erp-progress` | 75K requests dari GuzzleHttp -- pastikan ini internal API call yang expected dan ada autentikasi yang proper. |
| **LOW** | Review ACL Rule 20134680 | Rule ini memblokir 97.8% attack. Dokumentasikan rule ini dan pastikan coverage-nya sesuai threat model. |

---

*Report generated: 2026-07-29 | Data source: wafnew-logstore (ap-southeast-5) | Periode: 1-28 Juli 2026*
