# WAF Analysis Report — www.jagoti.co.id
## Period: 24 - 31 August 2026

**Logstore:** `wafnew-logstore` / `wafnew-project-5579245397393099-ap-southeast-5` (ap-southeast-5)
**Generated:** 2 September 2026

---

## 1. Total Request

| Metric | Value |
|---|---|
| **Total Requests** | **180,978** |

---

## 2. Blocked Request

| Metric | Value |
|---|---|
| **Total Blocked** | **11,908** |

---

## 3. Block Rate (%)

| Metric | Value |
|---|---|
| **Block Rate** | **6.58%** (11,908 / 180,978) |

Second highest block rate after www.gawe.id (10.79%). Significant attack volume relative to traffic size.

---

## 4. Top Attack Type

| WAF Plugin (Attack Category) | Count | % of Blocked |
|---|---|---|
| **ACL** (Access Control List) | 11,839 | 99.4% |
| **WAF** (Web Application Firewall) | 61 | 0.5% |
| **SEMA** (Semantic Analysis) | 8 | 0.07% |

Within WAF/SEMA plugin blocks:

| Rule Type | Count | Description |
|---|---|---|
| `scanner_behavior` | 57 | Automated vulnerability scanner |
| **`sqli`** | **8** | **SQL Injection attempt** |
| `arbitrary_file_reading` | 4 | LFI / path traversal attempt |

**CRITICAL:** SQL injection (8) AND arbitrary file reading (4) attempts detected. This CMS/LMS platform is under active exploitation attempts.

---

## 5. Daily Trend WAF Request (Total Request & Total Block)

| Date | Total Request | Blocked | Block Rate |
|---|---|---|---|
| 2026-08-24 (Sun) | 21,730 | 1,197 | 5.51% |
| 2026-08-25 (Mon) | 8,919 | 1,821 | **20.42%** |
| 2026-08-26 (Tue) | 45,840 | 1,181 | 2.58% |
| 2026-08-27 (Wed) | 33,815 | 1,237 | 3.66% |
| 2026-08-28 (Thu) | 20,275 | 1,883 | 9.29% |
| 2026-08-29 (Fri) | 15,647 | 1,267 | 8.10% |
| **2026-08-30 (Sat)** | **12,045** | **2,116** | **17.57%** |
| 2026-08-31 (Sun) | 22,707 | 1,206 | 5.31% |

**CRITICAL:** Aug 25 (Monday) had **20.42% block rate** — 1 in 5 requests was malicious. Aug 30 (Saturday) had **17.57% block rate**. Attackers heavily target low-traffic days.

---

## 6. Top 5 Attacking IP (by blocked requests)

| # | IP Address | Blocked Count | Notes |
|---|---|---|---|
| 1 | **35.237.76.201** | 449 | **Google Cloud** |
| 2 | **103.153.183.69** | 380 | Cloud (Asia) |
| 3 | **93.123.109.163** | 367 | Cloud (Europe) |
| 4 | **20.104.50.220** | 307 | **Microsoft Azure** |
| 5 | **35.229.208.180** | 277 | **Google Cloud** |

**ALL top 5 are cloud-hosted IPs** — Google Cloud (2), Azure (1), plus other datacenters.

---

## 7. Unique Attacking IP

| Metric | Value |
|---|---|
| **Unique Attacking IPs** | **1,753** |

---

## 8. Top Targeted URLs (by blocked requests)

| # | URL Path | Blocked Count | Risk |
|---|---|---|---|
| 1 | `/` (root) | 1,382 | Scanner flood |
| 2 | `/.well-known/passkey-endpoints` | 301 | Browser credential probing |
| 3 | `/robots.txt` | 259 | Scanner reconnaissance |
| 4 | `/cms-lms/upload/profilesite/*.png` | 255 | Asset probing |
| 5 | **`/wp-login.php`** | **252** | **WordPress login brute-force** |
| 6 | `/favicon.ico` | 232 | Scanner fingerprinting |
| 7 | `/apple-touch-icon-precomposed.png` | 173 | Scanner fingerprinting |
| 8 | `/apple-touch-icon.png` | 173 | Scanner fingerprinting |
| 9 | `/Login` | 149 | Auth endpoint probing |
| 10 | **`/xmlrpc.php`** | **146** | **WordPress RPC exploitation** |

---

## 9. Top Triggered Rules

| # | Rule ID | Plugin | Triggered Count | % of Blocked |
|---|---|---|---|---|
| 1 | **20126311** | ACL | 11,839 | 99.4% |
| 2 | **117090** | WAF | 57 | 0.5% |
| 3 | **900904** | WAF | 4 | <0.1% |
| 4 | **860020** | SEMA | 2 | <0.1% |
| 5 | **860003** | SEMA | 2 | <0.1% |
| 6 | **860021** | SEMA | 2 | <0.1% |
| 7 | **860011** | SEMA | 2 | <0.1% |

---

## 10. Attack Severity Distribution

| Attack Category | Rule Type | Count | Severity |
|---|---|---|---|
| ACL | *(policy-based)* | 11,839 | **Medium** — IP/geo/behavioral policy |
| WAF | `scanner_behavior` | 57 | **Medium** — automated vulnerability scanner |
| **SEMA** | **`sqli`** | **8** | **CRITICAL** — SQL Injection |
| **SEMA** | **`arbitrary_file_reading`** | **4** | **HIGH** — LFI / path traversal |

---

## 11. Status Code Distribution

| Status Code | Count | % of Total | Description |
|---|---|---|---|
| **200** | 159,409 | 88.08% | OK |
| **405** | 11,908 | 6.58% | Method Not Allowed (WAF blocks) |
| **302** | 6,444 | 3.56% | Redirect |
| **404** | 1,434 | 0.79% | Not Found |
| **304** | 419 | 0.23% | Not Modified |
| **500** | **274** | **0.15%** | **Internal Server Error** |
| **206** | 257 | 0.14% | Partial Content |
| **499** | 243 | 0.13% | Client Closed Request |
| **201** | 200 | 0.11% | Created |
| **403** | 175 | 0.10% | Forbidden |
| **401** | 122 | 0.07% | Unauthorized |
| **400** | 59 | 0.03% | Bad Request |
| **301** | 34 | 0.02% | Moved Permanently |

**Key insight:** **500 errors (274)** indicate application-level errors. **401 (122)** shows authentication failures.

---

## 12. Top 10 Endpoints – Status 200

| # | Endpoint | Count |
|---|---|---|
| 1 | **`/cms-lms/ViewPortal/profilsite`** | **68,855** |
| 2 | `/notifications` | 8,784 |
| 3 | `/cms-lms/ViewPortal/get_content` | 8,472 |
| 4 | `/cms-lms/ViewPortal/getSlider` | 7,889 |
| 5 | `/` (root) | 6,059 |
| 6 | `/Login` | 3,649 |
| 7 | `/indexGetPelatihanOnline` | 3,387 |
| 8 | `/cms-lms/upload/profilesite/*.png` | 1,772 |
| 9 | `/cekProgressCourse` | 1,533 |
| 10 | `/cekUrutanCourse` | 1,522 |

**Observation:** This is a **CMS-LMS (Learning Management System)** platform. Top endpoint serves the public profile site (68.8K hits). Course-related endpoints (`cekProgressCourse`, `cekUrutanCourse`, `indexGetPelatihanOnline`) confirm active e-learning usage.

---

## 13. Top 10 IP – Status 200

| # | IP Address | Request Count (200) |
|---|---|---|
| 1 | **149.129.194.181** | **67,644** |
| 2 | **101.255.107.154** | 15,023 |
| 3 | **101.255.109.178** | 11,043 |
| 4 | **147.139.167.88** | 10,806 |
| 5 | **103.165.198.82** | 4,345 |
| 6 | **103.245.16.18** | 2,293 |
| 7 | **101.255.158.250** | 1,152 |
| 8 | **203.145.62.162** | 1,134 |
| 9 | **103.10.223.150** | 703 |
| 10 | **115.124.64.134** | 568 |

**CRITICAL:** `149.129.194.181` generated **67,644 requests** — 42.4% of ALL 200 responses. This is almost certainly a **server-side scraper, CDN origin-pull, or automated monitoring** — not a normal user. This IP is pulling the CMS-LMS profile site content at an extremely high rate.

---

## 14. Top 10 User Agent

| # | User Agent | Count | % |
|---|---|---|---|
| 1 | Chrome/151.0 (Win10 x64) | 29,050 | 16.1% |
| 2 | Chrome/151.0 Mobile (Android 10) | 15,987 | 8.8% |
| 3 | Chrome/152.0 (Win10 x64) | 3,619 | 2.0% |
| 4 | Firefox/154.0 (Win10 x64) | 3,006 | 1.7% |
| 5 | Chrome/151.0 Edge/151.0 (Win10 x64) | 2,958 | 1.6% |
| 6 | **Uptime-Kuma/2.0.2** | **2,305** | **1.3%** |
| 7 | Chrome/151.0 (macOS 10.15.7) | 1,847 | 1.0% |
| 8 | SamsungBrowser/30.0 Mobile (Android 10) | 1,700 | 0.9% |
| 9 | Chrome/150.0 Mobile (Android 10) | 1,268 | 0.7% |
| 10 | Chrome/120.0 (Win10 x64) | 965 | 0.5% |

**Notable:** **Uptime-Kuma/2.0.2** (2,305 requests) — this is a self-hosted monitoring tool making health checks. Legitimate operational traffic.

---

## 15. Sensitive / High-Risk Endpoint

| # | Sensitive Path | Total Hits | Status | Risk |
|---|---|---|---|---|
| 1 | **`/wp-login.php`** | **258** | All blocked | **CRITICAL** — WordPress login |
| 2 | **`/xmlrpc.php`** | **147** | All blocked | **High** — WordPress RPC |
| 3 | `/wp-json/batch/v1` | 118 | Mostly blocked | **High** — WordPress REST API |
| 4 | `/login` | 109 | Mixed | **High** — Auth endpoint |
| 5 | **`/wp-admin/`** | **77** | All blocked | **CRITICAL** — WordPress admin |
| 6 | `/site/xmlrpc.php` | 64 | Blocked | High |
| 7 | `/news/xmlrpc.php` | 64 | Blocked | High |
| 8 | `/web/xmlrpc.php` | 64 | Blocked | High |
| 9 | `/wpsite/xmlrpc.php` | 63 | Blocked | High |
| 10 | `/wordpress/xmlrpc.php` | 63 | Blocked | High |
| 11 | `/main/xmlrpc.php` | 63 | Blocked | High |
| 12 | `/old/xmlrpc.php` | 63 | Blocked | High |
| 13 | `/wordpress/wp-json/batch/v1` | 63 | Blocked | High |
| 14 | `/wp-site/xmlrpc.php` | 63 | Blocked | High |
| 15 | `/new/xmlrpc.php` | 63 | Blocked | High |
| 16 | `/cms/xmlrpc.php` | 62 | Blocked | High |
| 17 | `/wp/xmlrpc.php` | 59 | Blocked | High |
| 18 | `/blog/xmlrpc.php` | 59 | Blocked | High |
| 19 | `/blog/wp-json/batch/v1` | 52 | Blocked | High |
| 20 | **`/.env`** | **49** | All blocked | **CRITICAL** — Environment secrets |

**CRITICAL:** Massive WordPress enumeration across 12+ xmlrpc.php path variations. All blocked. `.env` probe (49 blocks) also detected.

---

## 16. Attack Type Trend

| Date | ACL Blocks | WAF Blocks | SEMA Blocks | Total |
|---|---|---|---|---|
| 2026-08-24 | 1,183 | 14 | 0 | 1,197 |
| 2026-08-25 | 1,778 | 43 | 0 | 1,821 |
| 2026-08-26 | 1,181 | 0 | 0 | 1,181 |
| 2026-08-27 | 1,237 | 0 | 0 | 1,237 |
| 2026-08-28 | 1,883 | 0 | 0 | 1,883 |
| 2026-08-29 | 1,265 | 0 | 2 | 1,267 |
| **2026-08-30** | **2,107** | **3** | **6** | **2,116** |
| 2026-08-31 | 1,205 | 1 | 0 | 1,206 |

**CRITICAL:** Aug 30 had the most diverse attack — ACL (2,107) + WAF (3) + SEMA (6, including SQLi). Saturday attack with the highest sophistication.

---

## 17. Suspicious Status 200

**Result: No sensitive paths returned status 200.**

All probes to `.env`, `.git/config`, `xmlrpc.php`, `wp-login.php`, `wp-admin/`, `wp-json/`, `phpmyadmin/`, `shell`, `passwd/` did NOT return status 200.

**Verdict: SECURE** — All sensitive path probes were properly blocked.

---

## 18. 4xx / 5xx Anomaly

### Daily Error Breakdown:

| Date | 405 | 404 | 500 | 499 | 403 | 401 | 400 | Total |
|---|---|---|---|---|---|---|---|---|
| Aug 24 | 1,197 | 187 | 36 | 30 | 18 | 7 | 0 | 1,475 |
| Aug 25 | 1,821 | 139 | 45 | 10 | 14 | 25 | 0 | 2,054 |
| Aug 26 | 1,181 | 219 | 53 | 48 | 29 | 24 | 0 | 1,554 |
| Aug 27 | 1,237 | 185 | 47 | 68 | 34 | 15 | 5 | 1,591 |
| Aug 28 | 1,883 | 191 | 20 | 26 | 20 | 24 | 18 | 2,182 |
| Aug 29 | 1,267 | 133 | 22 | 9 | 13 | 10 | 11 | 1,465 |
| Aug 30 | 2,116 | 177 | 20 | 14 | 15 | 5 | 1 | 2,348 |
| Aug 31 | 1,206 | 203 | 32 | 38 | 32 | 0 | 0 | 1,511 |

### Key Anomalies:

1. **500 errors (274 total):** Distributed across all days (20-53/day). Not a single spike — indicates **chronic application-level errors** in the CMS-LMS.
2. **401 errors (122 total):** Concentrated on Aug 24-26. Authentication failures on the LMS login.
3. **404 errors (1,434 total):** ~180/day — broken links or scanner probes for non-existent paths.
4. **No 502/504:** Unlike ERP, no gateway timeout issues. Application availability is good.

---

## 19. Attack Burst / Request Spike

### Top 10 Highest-Traffic Hours:

| # | Hour (UTC+8) | Request Count |
|---|---|---|
| 1 | **2026-08-26 15:00** | 5,436 |
| 2 | **2026-08-27 10:00** | 5,062 |
| 3 | **2026-08-27 09:00** | 4,496 |
| 4 | **2026-08-26 21:00** | 3,570 |
| 5 | **2026-08-26 11:00** | 3,445 |
| 6 | **2026-08-24 11:00** | 3,352 |
| 7 | **2026-08-26 12:00** | 3,289 |
| 8 | **2026-08-27 11:00** | 3,282 |
| 9 | **2026-08-26 22:00** | 3,113 |
| 10 | **2026-08-27 16:00** | 3,079 |

**Observation:** Aug 26-27 dominate peak hours. **Late-night activity** (21:00-22:00) in top 10 — could be legitimate e-learning users studying at night or attack traffic.

---

## 20. IP x Attack Type Analysis

| IP Address | Attack Type (Plugin) | Blocked Count | IP Type |
|---|---|---|---|
| 35.237.76.201 | ACL | 449 | **Google Cloud** |
| 103.153.183.69 | ACL | 380 | Cloud (Asia) |
| 93.123.109.163 | ACL | 367 | Cloud (Europe) |
| 20.104.50.220 | ACL | 307 | **Microsoft Azure** |
| 35.229.208.180 | ACL | 277 | **Google Cloud** |
| 52.194.238.133 | ACL | 257 | **AWS** |
| 20.48.251.3 | ACL | 254 | **Azure** |
| 52.139.44.162 | ACL | 250 | **AWS** |
| 20.151.129.194 | ACL | 224 | **Azure** |
| 4.204.224.164 | ACL | 222 | **Azure** |

**Key Finding:** Top attackers from **all major cloud providers** — Google Cloud (2), Azure (4), AWS (2). Cloud infrastructure is being used as attack platform.

---

## 21. IP x Target URL Analysis

| IP Address | Target URL | Blocked Count |
|---|---|---|
| **5.188.86.234** | **`/wp-login.php`** | **152** |
| 103.153.183.69 | `/` (root) | 120 |
| 193.202.84.104 | `/Login` | 50 |
| 195.178.110.132 | `/` (root) | 49 |
| 45.148.10.247 | `/` (root) | 46 |
| 193.202.84.104 | `/` (root) | 42 |
| 146.75.132.28 | `/.well-known/passkey-endpoints` | 41 |
| 45.148.10.123 | `/` (root) | 36 |
| 146.75.132.29 | `/.well-known/passkey-endpoints` | 33 |
| 195.178.110.135 | `/wp/` | 30 |

**Key Finding:** `5.188.86.234` specifically targeted `/wp-login.php` (152 blocks) — known Russian botnet IP. `146.75.132.x` probed `/.well-known/passkey-endpoints` (74 blocks) — browser credential/Passkey probing.

---

## 22. Blocked → 200 Pattern

IPs that had BOTH blocked requests AND successful requests:

| IP Address | Blocked | Total | Pass-through | Risk |
|---|---|---|---|---|
| **158.23.147.79** | **126** | **129** | **3 (2.3%)** | **LOW** (97.7% blocked) |
| **222.124.191.185** | **56** | **76** | **20 (26.3%)** | **MEDIUM** |
| 38.47.185.27 | 6 | 7 | 1 (14.3%) | Medium |
| 182.253.240.89 | 2 | 50 | 48 (96%) | Low (likely legit) |
| 187.40.232.231 | 2 | 8 | 6 (75%) | Low |

**Note:** `222.124.191.185` appeared across multiple hosts (sysbpr, ors, gawe, erp, jagoti) — this is a **persistent cross-platform scanner**. 56 blocks but 20 requests passed through.

---

## 23. Potential False Positive

**Low false positive risk.** ACL blocks are well-targeted at cloud/datacenter IPs. The CMS-LMS legitimate traffic comes from Indonesian IPs (`101.255.x.x`, `103.x.x.x`, `149.129.x.x`).

`182.253.240.89` (50 total, 2 blocks) appears to be a legitimate user who triggered minimal blocks.

---

## 24. Potential Successful Attack

**Result: No confirmed successful attacks on sensitive paths.**

- No `.env`, `.git/config`, `wp-login.php`, `wp-admin/`, `wp-json/`, `xmlrpc.php` returned status 200
- All WordPress probes were blocked
- 8 SQL injection attempts were blocked by SEMA rules
- 4 arbitrary file reading attempts were blocked

**Risk Level: LOW** — WAF is effectively protecting the CMS-LMS.

---

## 25. Summary & Recommendation

### Executive Summary

During Aug 24-31, 2026, `www.jagoti.co.id` (CMS-LMS Learning Management System) received **180,978 requests** with **11,908 blocked** (**6.58% block rate**) from **1,753 unique attacking IPs**. The platform faces persistent attacks including **8 SQL injection attempts**, **4 arbitrary file reading attempts**, and massive WordPress enumeration across 12+ path variations. A notable finding is `149.129.194.181` generating 67,644 requests (42.4% of all 200s) — likely automated content scraping or CDN origin-pull.

### Comparison with All Hosts

| Metric | sysbpr | ors | www.gawe | erp | **jagoti** |
|---|---|---|---|---|---|
| Total Requests | 880K | 810K | 352K | 1,821K | **181K** |
| Blocked | 281 | 2,093 | 37,977 | 10,210 | **11,908** |
| Block Rate | 0.032% | 0.258% | 10.79% | 0.56% | **6.58%** |
| Unique Attackers | 61 | 678 | 2,775 | 374 | **1,753** |
| SQL Injection | 0 | 0 | 6 | 6 | **8** |
| WordPress Accessible | No | Partially | Yes | No | **No** |

### Key Findings

1. **CRITICAL — SQL Injection + File Reading attacks:** 8 SQLi and 4 arbitrary file reading attempts detected and blocked. Active exploitation against the LMS.
2. **HIGH — 6.58% block rate:** Second highest after www.gawe.id. 1 in 15 requests is malicious.
3. **HIGH — Weekend attack spikes:** Aug 25 (20.42%) and Aug 30 (17.57%) — attackers target low-traffic days.
4. **HIGH — Cloud-based distributed attacks:** Top attackers from Google Cloud, Azure, AWS.
5. **HIGH — Suspicious high-volume IP:** `149.129.194.181` generated 67,644 requests (42.4% of 200s) — investigate if this is legitimate CDN/scraper or unauthorized content extraction.
6. **MEDIUM — Chronic 500 errors (274):** Application-level errors distributed across all days.
7. **MEDIUM — Cross-platform scanner:** `222.124.191.185` appeared across all 5 hosts with mixed blocked/passed traffic.
8. **LOW — No successful attacks:** All sensitive path probes were blocked.

### Recommended Actions

| Priority | Action | Target |
|---|---|---|
| **P1 - Critical** | **Investigate `149.129.194.181`** — 67,644 requests (42.4% of all 200s). Determine if this is legitimate CDN origin-pull, monitoring scraper, or unauthorized content extraction. If unauthorized, add rate limiting or block. | App / Infra Team |
| **P1 - Critical** | **Ban top attacking cloud IPs:** `35.237.76.201` (GCP), `103.153.183.69`, `93.123.109.163`, `20.104.50.220` (Azure), `35.229.208.180` (GCP). Consider cloud IP range blocking. | WAF Team |
| **P1 - Critical** | **Block `5.188.86.234` permanently** — Russian botnet IP targeting `/wp-login.php` across multiple hosts. | WAF Team |
| **P2 - High** | **Block all WordPress paths at WAF edge:** `/wp-login.php`, `/wp-admin/`, `/xmlrpc.php`, `/wp-json/*`, and all subdirectory variants. Return 403 immediately. | WAF Rule Team |
| **P2 - High** | **Investigate 500 errors (274 total)** — chronic application errors in CMS-LMS. Review application logs for root cause. | App Team |
| **P3 - Medium** | **Implement rate limiting on `/Login`** — 109 hits from attackers + 3,649 legitimate hits. Add CAPTCHA after 3 failed attempts. | WAF / App Team |
| **P3 - Medium** | **Investigate `222.124.191.185`** — appeared across ALL 5 hosts with mixed blocked/passed traffic. Persistent cross-platform scanner. | SOC Team |
| **P4 - Low** | **Review Uptime-Kuma monitoring** (2,305 requests) — ensure health check frequency is appropriate and not contributing to load. | Infra Team |

---

*Report generated from WAF access logs. All data sourced from `wafnew-logstore` in project `wafnew-project-5579245397393099-ap-southeast-5`, region `ap-southeast-5`.*
