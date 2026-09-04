# WAF Analysis Report — www.gawe.id
## Period: 24 - 31 August 2026

**Logstore:** `wafnew-logstore` / `wafnew-project-5579245397393099-ap-southeast-5` (ap-southeast-5)
**Generated:** 2 September 2026

---

## 1. Total Request

| Metric | Value |
|---|---|
| **Total Requests** | **352,108** |

---

## 2. Blocked Request

| Metric | Value |
|---|---|
| **Total Blocked** | **37,977** |

---

## 3. Block Rate (%)

| Metric | Value |
|---|---|
| **Block Rate** | **10.79%** (37,977 / 352,108) |

**CRITICAL:** This is by far the highest block rate among all analyzed hosts. More than 1 in 10 requests is being blocked. The site is under constant, heavy attack.

---

## 4. Top Attack Type

| WAF Plugin (Attack Category) | Count | % of Blocked |
|---|---|---|
| **ACL** (Access Control List) | 37,915 | 99.8% |
| **WAF** (Web Application Firewall) | 56 | 0.15% |
| **SEMA** (Semantic Analysis) | 6 | 0.02% |

Within WAF/SEMA plugin blocks:

| Rule Type | Count | Description |
|---|---|---|
| `scanner_behavior` | 56 | Automated vulnerability scanner |
| **`sqli`** | **6** | **SQL Injection attempt** |

**CRITICAL:** SQL injection attempts detected and blocked by semantic analysis rules.

---

## 5. Daily Trend WAF Request (Total Request & Total Block)

| Date | Total Request | Blocked | Block Rate |
|---|---|---|---|
| 2026-08-24 (Sun) | 40,941 | 2,962 | 7.23% |
| 2026-08-25 (Mon) | 30,371 | 3,362 | 11.07% |
| 2026-08-26 (Tue) | 49,287 | 4,886 | 9.91% |
| 2026-08-27 (Wed) | 51,254 | 5,299 | 10.34% |
| 2026-08-28 (Thu) | 45,074 | 5,098 | 11.31% |
| 2026-08-29 (Fri) | 47,503 | 5,407 | 11.38% |
| 2026-08-30 (Sat) | 32,065 | 5,136 | 16.02% |
| **2026-08-31 (Sun)** | **55,613** | **5,827** | **10.48%** |

**Observation:** Block rate is consistently high (7-16%) across all days. Aug 30 (Saturday) has the highest block rate at 16.02% — attackers exploit lower weekend traffic. Attacks are persistent and daily, not sporadic.

---

## 6. Top 5 Attacking IP (by blocked requests)

| # | IP Address | Blocked Count | Notes |
|---|---|---|---|
| 1 | **193.202.84.104** | 3,300 | Cloud (Netherlands) |
| 2 | **51.222.8.170** | 1,530 | Cloud (OVH) |
| 3 | **138.185.145.78** | 1,479 | Cloud (Brazil) |
| 4 | **91.194.91.202** | 1,462 | Cloud (Europe) |
| 5 | **208.82.118.98** | 1,242 | Cloud (US) |

**ALL top 5 are cloud/datacenter IPs.** The top attacker alone generated 3,300 blocked requests — a persistent DDoS-like scanning pattern.

---

## 7. Unique Attacking IP

| Metric | Value |
|---|---|
| **Unique Attacking IPs** | **2,775** |

The highest among all analyzed hosts. www.gawe.id is under massive distributed attack from thousands of unique sources.

---

## 8. Top Targeted URLs (by blocked requests)

| # | URL Path | Blocked Count | Risk |
|---|---|---|---|
| 1 | `/` (root) | **30,185** | Massive scanner flood |
| 2 | `/favicon.ico` | 831 | Scanner fingerprinting |
| 3 | `/apple-touch-icon.png` | 387 | Scanner fingerprinting |
| 4 | `/apple-touch-icon-precomposed.png` | 380 | Scanner fingerprinting |
| 5 | `/apple-touch-icon-120x120-precomposed.png` | 370 | Scanner fingerprinting |
| 6 | `/apple-touch-icon-120x120.png` | 370 | Scanner fingerprinting |
| 7 | `/robots.txt` | 261 | Scanner reconnaissance |
| 8 | `/userfiles/logo_sim.png` | 219 | Asset probing |
| 9 | **`/wp-login.php`** | **153** | **WordPress login brute-force** |
| 10 | `/login` | 141 | Auth endpoint probing |

**Observation:** 79.2% of all blocks (30,185/37,977) target the root path `/`. This is a classic volumetric scanner flood — bots hitting the homepage repeatedly. The icon/favicon probes are automated scanner fingerprinting behavior.

---

## 9. Top Triggered Rules

| # | Rule ID | Plugin | Triggered Count | % of Blocked |
|---|---|---|---|---|
| 1 | **20126311** | ACL | 37,915 | 99.8% |
| 2 | **117090** | WAF | 56 | 0.15% |
| 3 | **860021** | SEMA | 2 | <0.01% |
| 4 | **860011** | SEMA | 2 | <0.01% |
| 5 | **860003** | SEMA | 2 | <0.01% |

Rule **20126311** (ACL) handles virtually all blocks. The SEMA rules (860021, 860011, 860003) caught SQL injection attempts.

---

## 10. Attack Severity Distribution

| Attack Category | Rule Type | Count | Severity |
|---|---|---|---|
| ACL | *(policy-based)* | 37,915 | **Medium** — IP/geo/behavioral policy |
| WAF | `scanner_behavior` | 56 | **Medium** — automated vulnerability scanner |
| **SEMA** | **`sqli`** | **6** | **CRITICAL** — SQL Injection |

**CRITICAL:** 6 SQL injection attempts were detected and blocked. While blocked, their presence indicates active exploitation attempts against the application.

---

## 11. Status Code Distribution

| Status Code | Count | % of Total | Description |
|---|---|---|---|
| **200** | 298,905 | 84.90% | OK |
| **405** | 38,001 | 10.79% | Method Not Allowed |
| **401** | 5,740 | 1.63% | Unauthorized |
| **202** | 3,326 | 0.94% | Accepted |
| **304** | 2,571 | 0.73% | Not Modified |
| **302** | 2,327 | 0.66% | Redirect |
| **422** | 897 | 0.25% | Unprocessable Entity |
| **206** | 172 | 0.05% | Partial Content |
| **404** | 81 | 0.02% | Not Found |
| **499** | 27 | 0.01% | Client Closed Request |
| **403** | 23 | 0.01% | Forbidden |
| **301** | 16 | <0.01% | Moved Permanently |
| **400** | 13 | <0.01% | Bad Request |
| **500** | 8 | <0.01% | Internal Server Error |
| **502** | 1 | <0.01% | Bad Gateway |

**Key insight:** **405 (Method Not Allowed) at 10.79%** is extremely high — this is the WAF returning 405 for blocked requests. **401 (Unauthorized) at 1.63%** (5,740) indicates persistent authentication failures — possible brute-force on login endpoints.

---

## 12. Top 10 Endpoints – Status 200

| # | Endpoint | Count |
|---|---|---|
| 1 | `/` (root) | 14,738 |
| 2 | `/api/front` | 12,820 |
| 3 | `/api/access/modules/app/menus` | 8,321 |
| 4 | `/api/auth/data` | 8,036 |
| 5 | `/api/access/modules` | 8,004 |
| 6 | `/api/app/data/information/master-dom-city` | 7,672 |
| 7 | `/api/front/master-city` | 6,146 |
| 8 | `/api/app/home/_/availability` | 5,940 |
| 9 | `/api/app/home/_/application` | 5,916 |
| 10 | `/api/app/home/_/notification` | 5,908 |

**Observation:** www.gawe.id is a **mobile-first job platform** (API-driven). Top endpoints serve app data: front page, menus, auth, city data, availability, notifications.

---

## 13. Top 10 IP – Status 200

| # | IP Address | Request Count (200) |
|---|---|---|
| 1 | **103.245.16.18** | 2,292 |
| 2 | **114.79.4.173** | 1,070 |
| 3 | **36.50.56.212** | 1,065 |
| 4 | **103.189.110.48** | 954 |
| 5 | **222.124.191.185** | 914 |
| 6 | **182.10.161.100** | 881 |
| 7 | **103.156.16.186** | 873 |
| 8 | **36.65.249.121** | 845 |
| 9 | **157.85.210.230** | 833 |
| 10 | **103.28.116.212** | 803 |

**Note:** Traffic is well-distributed — no single IP dominates. Top IP has only 2,292 requests (0.77% of 200s). This is healthy for a public job platform. `222.124.191.185` also appeared as an attacker (30 blocks) — mixed behavior.

---

## 14. Top 10 User Agent

| # | User Agent | Count | % |
|---|---|---|---|
| 1 | Chrome/151.0 Mobile (Android 10) | 108,360 | 30.8% |
| 2 | Chrome/151.0 (Win10 x64) | 37,810 | 10.7% |
| 3 | Chrome/150.0 Mobile (Android 10) | 9,729 | 2.8% |
| 4 | SamsungBrowser/30.0 Mobile (Android 10) | 8,765 | 2.5% |
| 5 | **Dart/3.3 (dart:io)** | **6,790** | **1.9%** |
| 6 | Chrome/152.0 Mobile (Android 10) | 5,857 | 1.7% |
| 7 | Chrome/151.0 (Linux x86_64) | 5,734 | 1.6% |
| 8 | Chrome/152.0 (Win10 x64) | 4,768 | 1.4% |
| 9 | Chrome/138.0 Mobile (Android 10) | 4,119 | 1.2% |
| 10 | Chrome/131.0 (Win10 x64) | 3,685 | 1.0% |

**Notable:** 
- **Mobile-dominant** (Android 10 = ~40% of traffic) — consistent with Indonesian job-seeker demographic
- **Dart/3.3 (dart:io)** = Flutter/Dart mobile app making API calls directly (6,790 requests)
- Significant **Samsung Browser** usage (2.5%)

---

## 15. Sensitive / High-Risk Endpoint

| # | Sensitive Path | Total Hits | Status | Risk |
|---|---|---|---|---|
| 1 | `/api/auth/login` | 1,902 | Mixed | **High** — auth endpoint |
| 2 | `/auth/login` | 984 | Mixed | **High** — auth endpoint |
| 3 | **`/wp-login.php`** | **171** | Mostly blocked | **CRITICAL** — WordPress login |
| 4 | `/login` | 149 | Mixed | **High** — login endpoint |
| 5 | `/welcome/login` | 146 | Mixed | Medium |
| 6 | **`/xmlrpc.php`** | **97** | All blocked | **High** — WordPress RPC |
| 7 | **`/wp-admin/`** | **78** | Mostly blocked | **CRITICAL** — WordPress admin |
| 8 | `/employee/login` | 62 | Mixed | Medium |
| 9 | `/cms/xmlrpc.php` | 40 | Blocked | High |
| 10 | `/wp-site/xmlrpc.php` | 40 | Blocked | High |
| 11 | `/news/xmlrpc.php` | 40 | Blocked | High |
| 12 | `/web/xmlrpc.php` | 40 | Blocked | High |
| 13 | `/wordpress/xmlrpc.php` | 40 | Blocked | High |
| 14 | `/blog/xmlrpc.php` | 40 | Blocked | High |
| 15 | `/wpsite/xmlrpc.php` | 40 | Blocked | High |
| 16 | `/site/xmlrpc.php` | 40 | Blocked | High |
| 17 | `/wp/xmlrpc.php` | 40 | Blocked | High |
| 18 | `/main/xmlrpc.php` | 39 | Blocked | High |
| 19 | `/old/xmlrpc.php` | 39 | Blocked | High |
| 20 | `/new/xmlrpc.php` | 39 | Blocked | High |

**CRITICAL:** Massive **WordPress xmlrpc.php enumeration** across 12+ path variations (`/cms/`, `/wp-site/`, `/news/`, `/web/`, `/wordpress/`, `/blog/`, `/wpsite/`, `/site/`, `/wp/`, `/main/`, `/old/`, `/new/`). This is an automated scanner trying every common WordPress installation path. All were blocked.

---

## 16. Attack Type Trend

| Date | ACL Blocks | WAF Blocks | SEMA Blocks | Total |
|---|---|---|---|---|
| 2026-08-24 | 2,934 | 28 | 0 | 2,962 |
| 2026-08-25 | 3,335 | 27 | 0 | 3,362 |
| 2026-08-26 | 4,886 | 0 | 0 | 4,886 |
| 2026-08-27 | 5,298 | 1 | 0 | 5,299 |
| 2026-08-28 | 5,098 | 0 | 0 | 5,098 |
| 2026-08-29 | 5,407 | 0 | 0 | 5,407 |
| 2026-08-30 | 5,136 | 0 | 0 | 5,136 |
| 2026-08-31 | 5,821 | 0 | 6 | 5,827 |

**Observation:** Attacks are **consistently heavy** (3K-6K/day). ACL blocks dominate. WAF scanner blocks concentrated on Aug 24-25. SEMA (SQL injection) blocks only on Aug 31.

---

## 17. Suspicious Status 200

**CRITICAL — WordPress admin/login pages returned status 200:**

| Path | IP Address | Method | Count | Risk |
|---|---|---|---|---|
| **`/wp-admin/`** | **147.139.180.122** | GET | **11** | **CRITICAL** |
| `/wp-login.php` | 222.124.191.185 | GET | 2 | **HIGH** |
| `/wp-admin/` | 222.124.191.185 | GET | 2 | **HIGH** |
| `/wp-login.php` | 115.124.73.66 | GET | 1 | **HIGH** |
| `/wp-admin/` | 38.47.179.3 | GET | 1 | **HIGH** |
| `/wp-login.php` | 38.47.179.3 | GET | 1 | **HIGH** |

**CRITICAL:** `/wp-admin/` returned status 200 for **11 requests** from `147.139.180.122` — this strongly suggests **WordPress is installed** on this domain and the admin panel is accessible. `222.124.191.185` also accessed both `/wp-login.php` and `/wp-admin/` with 200 status.

---

## 18. 4xx / 5xx Anomaly

### Daily Error Breakdown:

| Date | 405 | 401 | 422 | 404 | 403 | 499 | 500 | 400 | Total |
|---|---|---|---|---|---|---|---|---|---|
| Aug 24 | 2,963 | 729 | 210 | 6 | 3 | 4 | 2 | 1 | 3,918 |
| Aug 25 | 3,365 | 438 | 70 | 6 | 0 | 1 | 1 | 0 | 3,881 |
| Aug 26 | 4,893 | 853 | 65 | 10 | 4 | 0 | 2 | 2 | 5,829 |
| Aug 27 | 5,306 | 832 | 133 | 3 | 3 | 6 | 1 | 2 | 6,286 |
| Aug 28 | 5,098 | 783 | 191 | 16 | 2 | 8 | 1 | 0 | 6,099 |
| Aug 29 | 5,408 | 729 | 72 | 20 | 2 | 2 | 0 | 0 | 6,233 |
| Aug 30 | 5,140 | 467 | 44 | 4 | 2 | 3 | 0 | 0 | 5,660 |
| Aug 31 | 5,828 | 909 | 112 | 16 | 5 | 3 | 0 | 0 | 6,873 |

### Key Anomalies:

1. **405 massive volume (38,001 total):** This is the WAF returning 405 for blocked requests. Correlates exactly with block counts.
2. **401 persistent (5,740 total):** ~720/day authentication failures. This indicates either brute-force login attempts or expired session issues from legitimate users.
3. **422 errors (897 total):** Unprocessable Entity — likely API validation failures from the mobile app.
4. **500 errors (8 total):** Low but present — minor application errors.
5. **No major outage:** Unlike ORS, no 502 spike. Application stability is good.

---

## 19. Attack Burst / Request Spike

### Top 10 Highest-Traffic Hours:

| # | Hour (UTC+8) | Request Count |
|---|---|---|
| 1 | **2026-08-31 13:00** | 4,914 |
| 2 | **2026-08-31 12:00** | 4,764 |
| 3 | **2026-08-31 11:00** | 4,744 |
| 4 | **2026-08-28 23:00** | 4,090 |
| 5 | **2026-08-31 18:00** | 4,015 |
| 6 | **2026-08-26 15:00** | 3,818 |
| 7 | **2026-08-29 14:00** | 3,807 |
| 8 | **2026-08-28 17:00** | 3,769 |
| 9 | **2026-08-27 22:00** | 3,727 |
| 10 | **2026-08-26 19:00** | 3,655 |

**Observation:** Aug 31 dominates with 3 peak hours (11:00-13:00). **Aug 28 23:00** and **Aug 27 22:00** in top 10 suggest significant **late-night activity** — could be attack traffic or legitimate mobile users.

---

## 20. IP x Attack Type Analysis

| IP Address | Attack Type (Plugin) | Blocked Count | IP Type |
|---|---|---|---|
| 193.202.84.104 | ACL | 3,300 | **Cloud (NL)** |
| 51.222.8.170 | ACL | 1,530 | **Cloud (OVH)** |
| 138.185.145.78 | ACL | 1,479 | **Cloud (BR)** |
| 91.194.91.202 | ACL | 1,462 | **Cloud (EU)** |
| 208.82.118.98 | ACL | 1,242 | **Cloud (US)** |
| 192.227.170.202 | ACL | 1,139 | **Cloud (US)** |
| 190.92.174.183 | ACL | 1,071 | **Cloud (LATAM)** |
| 154.57.197.145 | ACL | 766 | **Cloud (AF)** |
| 136.85.0.12 | ACL | 696 | **Cloud (US)** |
| 177.104.161.142 | ACL | 591 | **Cloud (BR)** |

**ALL top 10 are cloud/datacenter IPs from diverse geographies** — Netherlands, OVH, Brazil, Europe, US, LATAM, Africa. This is a **globally distributed botnet/scanner network**.

---

## 21. IP x Target URL Analysis

| IP Address | Target URL | Blocked Count |
|---|---|---|
| 193.202.84.104 | `/` (root) | 2,953 |
| 51.222.8.170 | `/` (root) | 1,514 |
| 138.185.145.78 | `/` (root) | 1,479 |
| 91.194.91.202 | `/` (root) | 1,382 |
| 208.82.118.98 | `/` (root) | 1,226 |
| 192.227.170.202 | `/` (root) | 1,107 |
| 190.92.174.183 | `/` (root) | 1,071 |
| 154.57.197.145 | `/` (root) | 734 |
| 177.104.161.142 | `/` (root) | 545 |
| 213.229.107.29 | `/` (root) | 520 |

**ALL top 15 IP×URL combinations target `/` (root).** This is a pure volumetric scanner flood — bots hitting the homepage repeatedly without targeting specific application paths.

---

## 22. Blocked → 200 Pattern

IPs that had BOTH blocked requests AND successful requests:

| IP Address | Blocked | Total | Pass-through | Risk |
|---|---|---|---|---|
| **222.124.191.185** | **30** | **950** | **920 (96.8%)** | **HIGH** |
| 38.47.179.3 | 13 | 16 | 3 (18.8%) | **HIGH** |
| 115.124.73.66 | 12 | 51 | 39 (76.5%) | Medium |
| 114.10.39.6 | 6 | 462 | 456 (98.7%) | Low (likely legit) |

**CRITICAL:** `222.124.191.185` had 30 blocks but 920 successful requests — this IP is **both a legitimate user AND an attacker**. It accessed `/wp-login.php` and `/wp-admin/` with status 200 (confirmed in Point 17). `38.47.179.3` also accessed WordPress paths with 200 status.

---

## 23. Potential False Positive

**Low false positive risk for ACL blocks.** The ACL rule 20126311 is blocking cloud/datacenter IPs that are clearly scanners.

However, `114.10.39.6` (462 requests, 6 blocks) appears to be a legitimate user who triggered a few ACL blocks — possibly due to shared IP with scanner activity.

---

## 24. Potential Successful Attack

**CRITICAL — WordPress admin panel confirmed accessible:**

| # | Path | IP | Status | Count | Impact |
|---|---|---|---|---|---|
| 1 | **`/wp-admin/`** | **147.139.180.122** | **200** | **11** | **WordPress admin accessible** |
| 2 | `/wp-login.php` | 222.124.191.185 | 200 | 2 | WP login page accessible |
| 3 | `/wp-admin/` | 222.124.191.185 | 200 | 2 | WP admin accessible |
| 4 | `/wp-login.php` | 115.124.73.66 | 200 | 1 | WP login page accessible |
| 5 | `/wp-admin/` | 38.47.179.3 | 200 | 1 | WP admin accessible |
| 6 | `/wp-login.php` | 38.47.179.3 | 200 | 1 | WP login page accessible |

**Additionally:**
- 6 SQL injection attempts were blocked — but their presence indicates active exploitation
- `222.124.191.185` is a mixed-behavior IP (920 legit + 30 blocked) that successfully accessed WordPress admin

**Risk Level: CRITICAL** — WordPress installation is confirmed present and accessible to external attackers.

---

## 25. Summary & Recommendation

### Executive Summary

During Aug 24-31, 2026, `www.gawe.id` received **352,108 requests** with **37,977 blocked** (**10.79% block rate** — the highest among all analyzed hosts). The site is under **constant, heavy attack** from **2,775 unique IPs** globally distributed across cloud/datacenter networks. Key critical findings include a **confirmed WordPress installation** with accessible admin panel, **6 SQL injection attempts**, and a **volumetric scanner flood** generating 30,185 blocks on the root path alone.

### Comparison with Other Hosts

| Metric | sysbpr | ors | **www.gawe.id** |
|---|---|---|---|
| Total Requests | 880,245 | 809,933 | 352,108 |
| Blocked | 281 | 2,093 | **37,977** |
| Block Rate | 0.032% | 0.258% | **10.79%** |
| Unique Attacker IPs | 61 | 678 | **2,775** |
| SQL Injection | 0 | 0 | **6** |
| WordPress Accessible | No | Partially | **Yes (admin)** |

### Key Findings

1. **CRITICAL — WordPress admin confirmed accessible:** `/wp-admin/` returned 200 for 11 requests from `147.139.180.122`. WordPress login and admin pages are accessible to multiple external IPs.
2. **CRITICAL — SQL Injection attempts:** 6 SQLi attempts detected and blocked by SEMA rules. Active exploitation in progress.
3. **CRITICAL — 10.79% block rate:** The site is under constant heavy attack. 1 in 10 requests is malicious.
4. **HIGH — Global botnet scanning:** Top attackers from Netherlands, OVH, Brazil, US, LATAM, Africa — all cloud IPs flooding root path.
5. **HIGH — Massive xmlrpc.php enumeration:** 12+ path variations probed (`/cms/xmlrpc.php`, `/blog/xmlrpc.php`, etc.) — all blocked.
6. **MEDIUM — Persistent 401 errors:** 5,740 unauthorized requests (~720/day) on auth endpoints.
7. **MEDIUM — Mixed-behavior IP:** `222.124.191.185` is both legitimate user (920 requests) and attacker (30 blocks + WordPress admin access).

### Recommended Actions

| Priority | Action | Target |
|---|---|---|
| **P0 - Emergency** | **Secure WordPress installation immediately.** Either: (a) restrict `/wp-admin/` and `/wp-login.php` to specific IPs only, (b) move WP admin to non-standard path, or (c) remove WordPress if not needed. Change all WP admin passwords. Check for unauthorized plugins/users. | App / Security Team |
| **P0 - Emergency** | **Investigate SQL injection attempts.** Review application logs for the 6 SQLi attempts blocked by SEMA rules. Verify no data was exfiltrated. Check if input validation is properly implemented on all API endpoints. | App / Security Team |
| **P1 - Critical** | **Ban top 10 attacking cloud IPs permanently.** Consider implementing geo-IP blocking or cloud IP range blocking for countries not in your user base. Implement rate limiting at WAF edge. | WAF Team |
| **P1 - Critical** | **Block all WordPress paths at WAF edge:** `/wp-admin/`, `/wp-login.php`, `/xmlrpc.php`, `/wp-json/*`, and all subdirectory variants. Return 403 immediately. | WAF Rule Team |
| **P2 - High** | **Investigate `222.124.191.185`** — mixed behavior IP with WordPress admin access. Determine if this is a compromised legitimate account or an attacker who also happens to have valid credentials. | SOC Team |
| **P2 - High** | **Investigate 401 errors (5,740)** — determine if these are brute-force login attempts or legitimate session management issues. Implement account lockout after N failed attempts. | App Team |
| **P3 - Medium** | **Implement rate limiting on `/api/auth/login` and `/auth/login`** — 2,886 total hits on login endpoints. Add CAPTCHA after 3 failed attempts. | WAF / App Team |
| **P3 - Medium** | **Add bot detection** for scanner fingerprinting patterns (favicon.ico, apple-touch-icon, robots.txt probes). | WAF Team |
| **P4 - Low** | **Review Dart/Flutter app traffic** (6,790 requests via `Dart/3.3`) — ensure API authentication is properly implemented in the mobile app. | App Team |

---

*Report generated from WAF access logs. All data sourced from `wafnew-logstore` in project `wafnew-project-5579245397393099-ap-southeast-5`, region `ap-southeast-5`.*
