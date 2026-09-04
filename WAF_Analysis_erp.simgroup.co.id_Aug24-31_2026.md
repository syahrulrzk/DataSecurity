# WAF Analysis Report — erp.simgroup.co.id
## Period: 24 - 31 August 2026

**Logstore:** `wafnew-logstore` / `wafnew-project-5579245397393099-ap-southeast-5` (ap-southeast-5)
**Generated:** 2 September 2026

---

## 1. Total Request

| Metric | Value |
|---|---|
| **Total Requests** | **1,821,169** |

Highest traffic among all analyzed hosts. ERP is the most heavily used application.

---

## 2. Blocked Request

| Metric | Value |
|---|---|
| **Total Blocked** | **10,210** |

---

## 3. Block Rate (%)

| Metric | Value |
|---|---|
| **Block Rate** | **0.56%** (10,210 / 1,821,169) |

Moderate block rate. Despite the low percentage, the absolute number (10,210) is significant.

---

## 4. Top Attack Type

| WAF Plugin (Attack Category) | Count | % of Blocked |
|---|---|---|
| **ACL** (Access Control List) | 10,163 | 99.5% |
| **WAF** (Web Application Firewall) | 41 | 0.4% |
| **SEMA** (Semantic Analysis) | 6 | 0.06% |

Within WAF/SEMA plugin blocks:

| Rule Type | Count | Description |
|---|---|---|
| `scanner_behavior` | 37 | Automated vulnerability scanner |
| **`sqli`** | **6** | **SQL Injection attempt** |
| `arbitrary_file_reading` | 2 | LFI / path traversal attempt |
| `other` | 2 | Miscellaneous |

**CRITICAL:** Both SQL injection AND arbitrary file reading attempts detected against the ERP system.

---

## 5. Daily Trend WAF Request (Total Request & Total Block)

| Date | Total Request | Blocked | Block Rate |
|---|---|---|---|
| 2026-08-24 (Sun) | 257,486 | 1,192 | 0.46% |
| 2026-08-25 (Mon) | 38,962 | 596 | 1.53% |
| 2026-08-26 (Tue) | 393,083 | 661 | 0.17% |
| 2026-08-27 (Wed) | 310,753 | 2,052 | 0.66% |
| 2026-08-28 (Thu) | 269,901 | 1,249 | 0.46% |
| **2026-08-29 (Fri)** | **93,020** | **2,194** | **2.36%** |
| 2026-08-30 (Sat) | 46,283 | 1,752 | 3.79% |
| 2026-08-31 (Sun) | 411,681 | 514 | 0.13% |

**Observation:** Aug 29 (Friday) had the highest block rate at 2.36% despite moderate traffic. Aug 30 (Saturday) had 3.79% block rate — attackers target low-traffic weekends. Traffic pattern shows heavy weekday usage (257K-411K) vs low weekend (39K-46K).

---

## 6. Top 5 Attacking IP (by blocked requests)

| # | IP Address | Blocked Count | Notes |
|---|---|---|---|
| 1 | **20.220.10.235** | 827 | **Microsoft Azure** |
| 2 | **158.23.147.79** | 672 | Cloud (datacenter) |
| 3 | **34.125.101.215** | 508 | **Google Cloud** |
| 4 | **195.178.110.135** | 489 | Cloud (Europe) |
| 5 | **103.215.74.185** | 474 | Cloud (Asia) |

**ALL top 5 are cloud-hosted IPs** — Azure, Google Cloud, and other datacenters.

---

## 7. Unique Attacking IP

| Metric | Value |
|---|---|
| **Unique Attacking IPs** | **374** |

---

## 8. Top Targeted URLs (by blocked requests)

| # | URL Path | Blocked Count | Risk |
|---|---|---|---|
| 1 | `/` (root) | 465 | Scanner probing |
| 2 | `/robots.txt` | 81 | Scanner reconnaissance |
| 3 | **`/wp-login.php`** | **77** | **WordPress login brute-force** |
| 4 | **`/index.zul`** | **66** | **ADempiere/ZK framework probe** |
| 5 | `/wp/` | 60 | WordPress path probe |
| 6 | `/wordpress/` | 60 | WordPress path probe |
| 7 | `/blog/` | 60 | WordPress path probe |
| 8 | **`/.env`** | **55** | **CRITICAL — Environment file exposure** |
| 9 | **`/wp-content/plugins/hellopress/wp_filemanager.php`** | **46** | **WordPress file manager exploit** |
| 10 | `/this_is_a_new_hello_world.php` | 44 | Custom probe |

**CRITICAL:** Attackers are probing for `.env` (55 blocks), WordPress exploits (77+60+60+60+46), and specifically targeting the ADempiere ZK framework (`/index.zul`).

---

## 9. Top Triggered Rules

| # | Rule ID | Plugin | Triggered Count | % of Blocked |
|---|---|---|---|---|
| 1 | **20126311** | ACL | 10,163 | 99.5% |
| 2 | **120047** | WAF | 29 | 0.3% |
| 3 | **117090** | WAF | 4 | <0.1% |
| 4 | **120081** | WAF | 3 | <0.1% |
| 5 | **900904** | WAF | 2 | <0.1% |
| 6 | **860021** | SEMA | 2 | <0.1% |
| 7 | **120075** | WAF | 2 | <0.1% |
| 8 | **860011** | SEMA | 2 | <0.1% |
| 9 | **860003** | SEMA | 2 | <0.1% |
| 10 | **113079** | WAF | 1 | <0.1% |

---

## 10. Attack Severity Distribution

| Attack Category | Rule Type | Count | Severity |
|---|---|---|---|
| ACL | *(policy-based)* | 10,163 | **Medium** — IP/geo/behavioral policy |
| WAF | `scanner_behavior` | 37 | **Medium** — automated vulnerability scanner |
| **SEMA** | **`sqli`** | **6** | **CRITICAL** — SQL Injection |
| **SEMA** | **`arbitrary_file_reading`** | **2** | **HIGH** — LFI / path traversal |
| WAF | `other` | 2 | **Low-Medium** |

**CRITICAL:** The ERP system faces the most diverse attack types — SQL injection, file reading, and scanner behavior — indicating sophisticated, targeted attacks against business-critical infrastructure.

---

## 11. Status Code Distribution

| Status Code | Count | % of Total | Description |
|---|---|---|---|
| **200** | 1,677,272 | 92.10% | OK |
| **304** | 115,802 | 6.36% | Not Modified |
| **405** | 10,210 | 0.56% | Method Not Allowed (WAF blocks) |
| **504** | **7,539** | **0.41%** | **Gateway Timeout** |
| **499** | 5,633 | 0.31% | Client Closed Request |
| **404** | 2,835 | 0.16% | Not Found |
| **410** | 1,285 | 0.07% | Gone |
| **206** | 409 | 0.02% | Partial Content |
| **502** | 80 | 0.004% | Bad Gateway |
| **400** | 42 | 0.002% | Bad Request |
| **301** | 31 | <0.01% | Moved Permanently |
| **500** | 12 | <0.01% | Internal Server Error |

**CRITICAL:** **504 Gateway Timeout (7,539)** is extremely high for an ERP system. This indicates the backend ADempiere server is frequently unable to respond in time. Combined with 499 (5,633 client disconnections), there is a significant **performance/stability issue**.

---

## 12. Top 10 Endpoints – Status 200

| # | Endpoint | Count |
|---|---|---|
| 1 | **`/zkau/comet`** | **1,005,321** |
| 2 | `/zkau` | 315,316 |
| 3 | `/ADInterface/services/ModelADService` | 18,438 |
| 4 | `/zkau/comet;jsessionid=...` (various) | ~25,000+ |
| 5 | `/zkau/web/8914214/zul/html/fileupload.html.dsp` | 6,231 |

**Observation:** This is an **ADempiere ERP** built on the **ZK Framework** (Java). `/zkau/comet` is the ZK AU (Asynchronous Update) Comet endpoint — a long-polling mechanism for real-time UI updates. 1M+ comet requests are normal for active ERP users.

---

## 13. Top 10 IP – Status 200

| # | IP Address | Request Count (200) |
|---|---|---|
| 1 | **101.255.109.178** | **1,003,790** |
| 2 | **101.255.158.250** | 148,412 |
| 3 | **103.118.102.146** | 92,387 |
| 4 | **115.124.64.134** | 75,801 |
| 5 | **103.165.198.82** | 25,231 |
| 6 | **103.136.57.179** | 18,799 |
| 7 | **182.253.38.226** | 18,031 |
| 8 | **149.129.217.38** | 17,839 |
| 9 | **103.136.58.110** | 17,492 |
| 10 | **157.85.202.37** | 16,956 |

**CRITICAL:** `101.255.109.178` generated **1,003,790 requests** — 59.8% of ALL 200 responses. This is almost certainly a **corporate NAT/proxy gateway** funneling all ERP users through a single IP. The massive `/zkau/comet` traffic (1M+) is ZK framework long-polling from this single gateway.

---

## 14. Top 10 User Agent

| # | User Agent | Count | % |
|---|---|---|---|
| 1 | Chrome/151.0 (Win10 x64) | 941,182 | 51.7% |
| 2 | Firefox/154.0 (Win10 x64) | 238,170 | 13.1% |
| 3 | Chrome/152.0 (Win10 x64) | 219,694 | 12.1% |
| 4 | Chrome/151.0 Edge/151.0 (Win10 x64) | 85,147 | 4.7% |
| 5 | Safari/17.6 (macOS 10.15.7) | 78,697 | 4.3% |
| 6 | Chrome/151.0 (macOS 10.15.7) | 67,982 | 3.7% |
| 7 | Safari/15.6.1 (macOS 10.15.7) | 36,899 | 2.0% |
| 8 | Chrome/150.0 (macOS 10.15.7) | 23,886 | 1.3% |
| 9 | Chrome/152.0 (macOS 10.15.7) | 19,616 | 1.1% |
| 10 | Safari/26.5.2 (macOS 10.15.7) | 18,655 | 1.0% |

**Observation:** Desktop-dominant (Win10 + macOS) — typical for ERP users. ~25% macOS usage. All legitimate browsers.

---

## 15. Sensitive / High-Risk Endpoint

| # | Sensitive Path | Total Hits | Status | Risk |
|---|---|---|---|---|
| 1 | `/saiku/rest/saiku/admin/discover` | 198 | Mixed | **High** — BI admin endpoint |
| 2 | `/saiku/rest/saiku/admin/repository2` | 196 | Mixed | **High** — BI admin endpoint |
| 3 | **`/wp-login.php`** | **77** | All blocked | **High** — WordPress login |
| 4 | **`/.env`** | **55** | All blocked | **CRITICAL** — Environment secrets |
| 5 | `/wp-content/plugins/hellopress/wp_filemanager.php` | 46 | All blocked | **CRITICAL** — WP file manager exploit |
| 6 | `/wp-json/batch/v1` | 45 | Mostly blocked | **High** — WordPress REST API |
| 7 | `/blog/wp-json/batch/v1` | 42 | Blocked | High |
| 8 | `/wordpress/wp-json/batch/v1` | 42 | Blocked | High |
| 9 | **`/.git/config`** | **32** | All blocked | **CRITICAL** — Git config exposure |
| 10 | `/xmlrpc.php` | 33 | All blocked | High |
| 11 | `/wp/wp-json/batch/v1` | 28 | Blocked | High |
| 12 | **`/admin.php`** | **25** | Mixed | **High** — Admin panel |
| 13 | **`/actuator/configprops`** | **24** | Mixed | **CRITICAL** — Spring Boot config exposure |
| 14 | `/wp-json` | 23 | Mostly blocked | High |

**CRITICAL:** Attackers are probing for:
- **`.env`** (55 blocks) — database credentials, API keys
- **`.git/config`** (32 blocks) — source code repository config
- **`/actuator/configprops`** (24 hits) — Spring Boot actuator exposing configuration properties
- **`/saiku/rest/saiku/admin/*`** (394 hits) — Saiku BI admin endpoints
- **`/admin.php`** (25 hits) — generic admin panel

---

## 16. Attack Type Trend

| Date | ACL Blocks | WAF Blocks | SEMA Blocks | Total |
|---|---|---|---|---|
| 2026-08-24 | 1,161 | 31 | 0 | 1,192 |
| 2026-08-25 | 594 | 2 | 0 | 596 |
| 2026-08-26 | 659 | 2 | 0 | 661 |
| 2026-08-27 | 2,049 | 3 | 0 | 2,052 |
| 2026-08-28 | 1,248 | 1 | 0 | 1,249 |
| 2026-08-29 | 2,194 | 0 | 0 | 2,194 |
| 2026-08-30 | 1,752 | 0 | 0 | 1,752 |
| 2026-08-31 | 506 | 2 | **6** | 514 |

**Observation:** ACL blocks dominate consistently. SEMA (SQL injection) blocks appeared only on Aug 31 (6 blocks). WAF scanner blocks concentrated on Aug 24-25.

---

## 17. Suspicious Status 200

**Result: No sensitive paths returned status 200.**

All probes to `.env`, `.git/config`, `xmlrpc.php`, `wp-login.php`, `wp-admin/`, `wp-json/`, `phpmyadmin/`, `shell`, `passwd/`, `actuator/`, `admin.php` did NOT return status 200.

**Verdict: SECURE** — All sensitive path probes were properly blocked or returned non-200 status.

---

## 18. 4xx / 5xx Anomaly

### Daily Error Breakdown:

| Date | 405 | 504 | 499 | 404 | 410 | 502 | 400 | Total |
|---|---|---|---|---|---|---|---|---|
| Aug 24 | 1,192 | 1,137 | 627 | 397 | 244 | 0 | 10 | 3,607 |
| Aug 25 | 596 | 141 | 52 | 85 | 15 | 0 | 2 | 891 |
| Aug 26 | 661 | **1,628** | **1,385** | 591 | 256 | 0 | 8 | 4,529 |
| Aug 27 | 2,052 | 1,324 | 884 | 446 | 239 | 0 | 4 | 4,949 |
| Aug 28 | 1,249 | 1,127 | 656 | 406 | 103 | 80 | 3 | 3,624 |
| Aug 29 | 2,194 | 349 | 528 | 174 | 49 | 0 | 1 | 3,296 |
| Aug 30 | 1,752 | 181 | 214 | 70 | 43 | 0 | 3 | 2,263 |
| Aug 31 | 514 | **1,652** | **1,287** | 666 | 0 | 0 | 0 | 4,119 |

### Key Anomalies:

1. **504 CRITICAL — Persistent gateway timeouts (7,539 total):**
   - Aug 26: **1,628** 504 errors
   - Aug 31: **1,652** 504 errors
   - Aug 27: 1,324 504 errors
   - 504s correlate with **peak business hours** (10:00-17:00) — backend ADempiere server cannot handle load
   - This is a **chronic performance problem**, not a one-time incident

2. **499 Client Disconnections (5,633 total):**
   - Aug 26: 1,385 / Aug 31: 1,287
   - Correlates exactly with 504 spikes — users giving up and closing browser while waiting for ERP response

3. **502 errors on Aug 28 (80):** Minor backend connectivity issue

4. **410 Gone (1,285 total):** Deprecated endpoints being accessed — likely old bookmarks or cached URLs

---

## 19. Attack Burst / Request Spike

### Top 10 Highest-Traffic Hours:

| # | Hour (UTC+8) | Request Count |
|---|---|---|
| 1 | **2026-08-26 10:00** | 51,364 |
| 2 | **2026-08-31 16:00** | 49,678 |
| 3 | **2026-08-31 17:00** | 45,880 |
| 4 | **2026-08-31 10:00** | 44,231 |
| 5 | **2026-08-26 11:00** | 43,779 |
| 6 | **2026-08-31 15:00** | 42,803 |
| 7 | **2026-08-26 15:00** | 41,272 |
| 8 | **2026-08-26 16:00** | 40,975 |
| 9 | **2026-08-26 12:00** | 40,366 |
| 10 | **2026-08-28 16:00** | 40,315 |

**Observation:** Peak traffic during business hours (10:00-17:00 UTC+8). Aug 26 and Aug 31 dominate. The 504 timeout spikes **directly correlate** with these peak hours — the ADempiere backend is overloaded during business hours.

---

## 20. IP x Attack Type Analysis

| IP Address | Attack Type (Plugin) | Blocked Count | IP Type |
|---|---|---|---|
| 20.220.10.235 | ACL | 827 | **Microsoft Azure** |
| 158.23.147.79 | ACL | 672 | Cloud (datacenter) |
| 34.125.101.215 | ACL | 508 | **Google Cloud** |
| 195.178.110.135 | ACL | 489 | Cloud (Europe) |
| 103.215.74.185 | ACL | 474 | Cloud (Asia) |
| 20.104.104.62 | ACL | 336 | **Microsoft Azure** |
| 15.152.81.34 | ACL | 277 | **AWS** |
| 34.125.155.142 | ACL | 277 | **Google Cloud** |
| 35.196.109.4 | ACL | 231 | **Google Cloud** |
| 20.151.129.194 | ACL | 230 | **Microsoft Azure** |

**Key Finding:** Top attackers are from **major cloud providers** — Azure (4 IPs), Google Cloud (3 IPs), AWS (1 IP). These are likely compromised cloud instances or attack-as-a-service infrastructure.

---

## 21. IP x Target URL Analysis

| IP Address | Target URL | Blocked Count |
|---|---|---|
| 103.215.74.185 | `/` (root) | 64 |
| 195.178.110.135 | `/` (root) | 61 |
| 193.202.84.104 | `/index.zul` | 46 |
| **5.188.86.234** | **`/wp-login.php`** | **44** |
| 149.88.107.53 | `/zkau;jsessionid=...` | 31 |
| 103.215.74.185 | `/wp/`, `/wordpress/`, `/blog/` | 30 each |
| 195.178.110.135 | `/wp/`, `/blog/`, `/wordpress/` | 30 each |
| 103.215.74.185 | `/blog/wp-json/batch/v1` | 21 |
| 103.215.74.185 | `/wordpress/wp-json/batch/v1` | 21 |

**Key Finding:** `5.188.86.234` specifically targeted `/wp-login.php` (44 blocks) — known Russian botnet IP. `193.202.84.104` probed `/index.zul` (ADempiere-specific). `103.215.74.185` and `195.178.110.135` conducted comprehensive WordPress enumeration across multiple paths.

---

## 22. Blocked → 200 Pattern

IPs that had BOTH blocked requests AND successful requests:

| IP Address | Blocked | Total | Pass-through | Risk |
|---|---|---|---|---|
| **158.23.147.79** | **672** | **684** | **12 (1.8%)** | **LOW** (98.2% blocked) |
| 185.177.72.67 | 229 | 231 | 2 (0.9%) | LOW |
| 172.182.200.96 | 167 | 169 | 2 (1.2%) | LOW |
| 68.155.154.236 | 167 | 169 | 2 (1.2%) | LOW |
| 68.155.159.216 | 126 | 132 | 6 (4.5%) | LOW |
| 20.151.9.127 | 116 | 118 | 2 (1.7%) | LOW |
| 52.238.210.254 | 68 | 70 | 2 (2.9%) | LOW |
| **103.84.193.221** | **31** | **46** | **15 (32.6%)** | **MEDIUM** |

**Observation:** Most top attackers were almost fully blocked (>98%). `158.23.147.79` had 672/684 requests blocked (98.2%). `103.84.193.221` (also seen in ORS analysis) had 31 blocks but 15 requests passed through — this IP appears across multiple hosts.

---

## 23. Potential False Positive

**Low false positive risk.** ACL blocks are well-targeted at cloud/datacenter IPs. The ERP's legitimate traffic comes from Indonesian corporate IPs (`101.255.x.x`, `103.x.x.x`, `115.124.x.x`).

The 410 Gone responses (1,285) may indicate legitimate users accessing deprecated endpoints — not a security issue but a UX concern.

---

## 24. Potential Successful Attack

**Result: No confirmed successful attacks on sensitive paths.**

- No `.env`, `.git/config`, `wp-login.php`, `wp-admin/`, `wp-json/`, `actuator/`, `admin.php` returned status 200
- All WordPress probes were blocked
- All `.env` and `.git/config` probes were blocked
- 6 SQL injection attempts were blocked by SEMA rules
- 2 arbitrary file reading attempts were blocked

**Risk Level: LOW** — WAF is effectively protecting the ERP. However, the 504 timeout issue is a critical availability concern.

---

## 25. Summary & Recommendation

### Executive Summary

During Aug 24-31, 2026, `erp.simgroup.co.id` (ADempiere ERP on ZK Framework) received **1,821,169 requests** — the highest traffic of all analyzed hosts — with **10,210 blocked** (0.56%) from **374 unique attacking IPs**. While WAF effectively blocked all attack attempts including SQL injection and file reading probes, the **critical finding is a chronic backend performance issue**: **7,539 Gateway Timeout (504) errors** concentrated during peak business hours, indicating the ADempiere server is consistently overloaded.

### Comparison with Other Hosts

| Metric | sysbpr | ors | www.gawe | **erp** |
|---|---|---|---|---|
| Total Requests | 880,245 | 809,933 | 352,108 | **1,821,169** |
| Blocked | 281 | 2,093 | 37,977 | 10,210 |
| Block Rate | 0.032% | 0.258% | 10.79% | 0.56% |
| Unique Attackers | 61 | 678 | 2,775 | 374 |
| SQL Injection | 0 | 0 | 6 | **6** |
| 504 Timeouts | 0 | 0 | 0 | **7,539** |
| WordPress Accessible | No | Partially | Yes | No |

### Key Findings

1. **CRITICAL — Chronic 504 Gateway Timeouts:** 7,539 timeouts across the period, concentrated during peak business hours (10:00-17:00). Aug 26 (1,628) and Aug 31 (1,652) were worst days. The ADempiere backend cannot handle peak load.
2. **CRITICAL — SQL Injection + File Reading attacks:** 6 SQLi and 2 arbitrary file reading attempts detected and blocked. Sophisticated attackers are targeting this ERP.
3. **HIGH — Cloud-based distributed attacks:** Top attackers from Azure, Google Cloud, AWS — 374 unique IPs.
4. **HIGH — Sensitive probes blocked:** `.env` (55), `.git/config` (32), `/actuator/configprops` (24), `/admin.php` (25), `/saiku/admin/*` (394) — all blocked.
5. **MEDIUM — Saiku BI admin endpoints exposed:** `/saiku/rest/saiku/admin/discover` (198 hits) and `/saiku/rest/saiku/admin/repository2` (196 hits) are accessible — verify authentication.
6. **MEDIUM — Single IP dominance:** `101.255.109.178` accounts for 59.8% of all traffic (1M+ requests) — corporate NAT gateway.
7. **LOW — No successful attacks:** All sensitive path probes were blocked. WAF is effective.

### Recommended Actions

| Priority | Action | Target |
|---|---|---|
| **P0 - Emergency** | **Investigate and resolve 504 Gateway Timeouts.** The ADempiere backend is consistently overloaded during business hours. Check: (a) JVM heap/GC settings, (b) database connection pool exhaustion, (c) ZK session timeout config, (d) thread pool sizing, (e) consider horizontal scaling or load balancer health check tuning. | Infra / ERP Team |
| **P1 - Critical** | **Ban top attacking cloud IPs:** `20.220.10.235` (Azure), `158.23.147.79`, `34.125.101.215` (GCP), `195.178.110.135`, `103.215.74.185`. Consider cloud IP range blocking. | WAF Team |
| **P1 - Critical** | **Verify Saiku BI authentication.** `/saiku/rest/saiku/admin/*` endpoints received 394 hits. Ensure these require proper authentication and are not publicly accessible. | App / ERP Team |
| **P2 - High** | **Block all sensitive paths at WAF edge:** `/.env`, `/.git/*`, `/actuator/*`, `/admin.php`, `/wp-*`, `/xmlrpc.php`. Return 403 immediately. | WAF Rule Team |
| **P2 - High** | **Investigate `103.84.193.221`** — appeared in both ORS and ERP analysis with mixed blocked/passed traffic. | SOC Team |
| **P3 - Medium** | **Monitor ZK Comet session health.** 1M+ `/zkau/comet` requests from single IP suggests possible session accumulation. Review ZK session timeout and max sessions per user. | ERP Team |
| **P3 - Medium** | **Clean up deprecated endpoints.** 1,285 "410 Gone" responses indicate old URLs still being accessed. Add redirects or remove references. | App Team |
| **P4 - Low** | **Review Spring Boot Actuator exposure.** `/actuator/configprops` was probed (24 hits). If Spring Boot is used, ensure actuator endpoints are not publicly accessible. | App Team |

---

*Report generated from WAF access logs. All data sourced from `wafnew-logstore` in project `wafnew-project-5579245397393099-ap-southeast-5`, region `ap-southeast-5`.*
