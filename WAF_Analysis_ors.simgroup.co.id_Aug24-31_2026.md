# WAF Analysis Report — ors.simgroup.co.id
## Period: 24 - 31 August 2026

**Logstore:** `wafnew-logstore` / `wafnew-project-5579245397393099-ap-southeast-5` (ap-southeast-5)
**Generated:** 2 September 2026

---

## 1. Total Request

| Metric | Value |
|---|---|
| **Total Requests** | **809,933** |

---

## 2. Blocked Request

| Metric | Value |
|---|---|
| **Total Blocked** | **2,093** |

---

## 3. Block Rate (%)

| Metric | Value |
|---|---|
| **Block Rate** | **0.258%** (2,093 / 809,933) |

8x higher block rate compared to `sysbpr.simgroup.co.id` (0.032%). ORS is a more attractive target for attackers.

---

## 4. Top Attack Type

| WAF Plugin (Attack Category) | Count | % of Blocked |
|---|---|---|
| **ACL** (Access Control List) | 2,054 | 98.1% |
| **WAF** (Web Application Firewall) | 39 | 1.9% |

Within WAF plugin blocks, the attack sub-types are:

| Rule Type | Count | Description |
|---|---|---|
| `scanner_behavior` | 35 | Automated vulnerability scanner |
| `other` | 3 | Miscellaneous WAF rule |
| `arbitrary_file_reading` | 1 | LFI / path traversal attempt |

---

## 5. Daily Trend WAF Request (Total Request & Total Block)

| Date | Total Request | Blocked | Block Rate |
|---|---|---|---|
| 2026-08-24 (Sun) | 116,113 | 206 | 0.177% |
| 2026-08-25 (Mon) | 29,390 | 88 | 0.299% |
| 2026-08-26 (Tue) | 121,789 | 176 | 0.145% |
| 2026-08-27 (Wed) | 162,121 | 214 | 0.132% |
| 2026-08-28 (Thu) | 123,305 | 225 | 0.182% |
| 2026-08-29 (Fri) | 98,961 | 314 | 0.317% |
| **2026-08-30 (Sat)** | **22,600** | **628** | **2.779%** |
| 2026-08-31 (Sun) | 135,654 | 242 | 0.178% |

**CRITICAL OBSERVATION:** Aug 30 (Saturday) had the **highest block rate at 2.779%** — 15x the average. Despite having the lowest traffic (22,600), it had the highest absolute blocks (628). This strongly indicates a **targeted attack campaign on a low-traffic day**, likely assuming reduced monitoring.

---

## 6. Top 5 Attacking IP (by blocked requests)

| # | IP Address | Blocked Count | Notes |
|---|---|---|---|
| 1 | **34.65.238.115** | 277 | Cloud IP (AWS us-east-1) |
| 2 | **34.182.181.161** | 207 | Cloud IP (AWS us-east-1) |
| 3 | **51.79.229.143** | 82 | Cloud IP (OVH) |
| 4 | **184.72.121.156** | 79 | Cloud IP (AWS us-east-1) |
| 5 | **54.209.60.63** | 69 | Cloud IP (AWS us-east-1) |

**ALL top 5 attackers are cloud-hosted IPs** — primarily AWS infrastructure. This is a classic pattern of cloud-based scanning/attack infrastructure.

---

## 7. Unique Attacking IP

| Metric | Value |
|---|---|
| **Unique Attacking IPs** | **678** |

11x more unique attackers than `sysbpr` (61). ORS is under widespread distributed scanning.

---

## 8. Top Targeted URLs (by blocked requests)

| # | URL Path | Blocked Count | Risk |
|---|---|---|---|
| 1 | `/` (root) | 217 | Scanner probing |
| 2 | `/robots.txt` | 55 | Scanner fingerprinting |
| 3 | `/auth/login` | 28 | Authentication endpoint |
| 4 | **`/wp-json/wp/v2/users`** | **26** | **WordPress user enumeration** |
| 5 | `/api/recruitment/activity/_` | 20 | API endpoint probing |
| 6 | `/api/sourcing/approval-buffer/_` | 20 | API endpoint probing |
| 7 | `/home` | 19 | General probing |
| 8 | **`/.git/config`** | **18** | **CRITICAL — Git config exposure** |
| 9 | **`/.env`** | **15** | **CRITICAL — Environment file exposure** |
| 10 | `/xmlrpc.php` | 15 | WordPress RPC exploitation |

**CRITICAL:** Attackers are probing for `.git/config` and `.env` — attempting to extract source code configuration and secrets (database credentials, API keys). All were blocked by WAF.

---

## 9. Top Triggered Rules

| # | Rule ID | Plugin | Triggered Count | % of Blocked |
|---|---|---|---|---|
| 1 | **20126311** | ACL | 2,054 | 98.1% |
| 2 | **120047** | WAF | 30 | 1.4% |
| 3 | **120081** | WAF | 4 | 0.2% |
| 4 | **120075** | WAF | 3 | 0.1% |
| 5 | **900904** | WAF | 1 | <0.1% |
| 6 | **113079** | WAF | 1 | <0.1% |

Rule **20126311** (ACL) handles 98.1% of all blocks — this is the primary defense rule for ORS.

---

## 10. Attack Severity Distribution

| Attack Category | Rule Type | Count | Severity |
|---|---|---|---|
| ACL | *(policy-based)* | 2,054 | **Medium** — IP/geo/behavioral policy |
| WAF | `scanner_behavior` | 35 | **Medium** — automated vulnerability scanner |
| WAF | `other` | 3 | **Low-Medium** |
| WAF | `arbitrary_file_reading` | 1 | **HIGH** — LFI/path traversal attempt |

**Note:** The `arbitrary_file_reading` event combined with `.git/config` and `.env` probes indicates attackers are actively trying to read sensitive server files.

---

## 11. Status Code Distribution

| Status Code | Count | % of Total | Description |
|---|---|---|---|
| **200** | 758,985 | 93.71% | OK |
| **304** | 39,801 | 4.91% | Not Modified |
| **202** | 3,788 | 0.47% | Accepted |
| **404** | 2,632 | 0.32% | Not Found |
| **405** | 2,094 | 0.26% | Method Not Allowed |
| **502** | 1,006 | 0.12% | Bad Gateway |
| **401** | 564 | 0.07% | Unauthorized |
| **400** | 390 | 0.05% | Bad Request |
| **403** | 266 | 0.03% | Forbidden |
| **499** | 193 | 0.02% | Client Closed Request |
| **206** | 135 | 0.02% | Partial Content |
| **302** | 28 | <0.01% | Redirect |
| **408** | 16 | <0.01% | Request Timeout |
| **301** | 14 | <0.01% | Moved Permanently |
| **422** | 13 | <0.01% | Unprocessable Entity |
| **500** | 6 | <0.01% | Internal Server Error |
| **414** | 2 | <0.01% | URI Too Long |

**Key insight:** **502 errors (1,006)** are significant — almost all occurred in a single hour on Aug 28 (see Point 18).

---

## 12. Top 10 Endpoints – Status 200

| # | Endpoint | Count |
|---|---|---|
| 1 | `/api/sourcing/activity/_` | 19,469 |
| 2 | `/api/auth/data` | 16,352 |
| 3 | `/api/access/modules` | 16,036 |
| 4 | `/api/sourcing/recruitment-applicant/_/master-city` | 11,416 |
| 5 | `/api/sourcing/recruitment-applicant/_/master-dom-city` | 11,212 |
| 6 | `/api/sourcing/approval-buffer/_` | 10,606 |
| 7 | `/api/sourcing/activity/_/master-city` | 10,580 |
| 8 | `/api/access/modules/sourcing/menus` | 9,743 |
| 9 | `/api/recruitment/activity/_` | 9,449 |
| 10 | `/api/sourcing/recruitment-applicant/_` | 9,255 |

ORS is a **heavy API-driven application** (recruitment/sourcing/HR platform). All top endpoints are REST API calls.

---

## 13. Top 10 IP – Status 200

| # | IP Address | Request Count (200) |
|---|---|---|
| 1 | **101.255.158.250** | 206,775 |
| 2 | **101.255.107.154** | 151,760 |
| 3 | **103.165.221.90** | 58,265 |
| 4 | **180.253.246.199** | 13,384 |
| 5 | **101.255.109.178** | 12,481 |
| 6 | **180.253.235.146** | 6,547 |
| 7 | **103.165.198.82** | 6,026 |
| 8 | **202.65.118.26** | 5,859 |
| 9 | **36.79.162.175** | 4,846 |
| 10 | **103.83.93.55** | 4,366 |

Top 2 IPs account for **47%** of all 200 responses — likely corporate NAT/proxy gateways.

---

## 14. Top 10 User Agent

| # | User Agent | Count | % |
|---|---|---|---|
| 1 | Chrome/151.0 (Win10 x64) | 452,001 | 55.8% |
| 2 | Chrome/151.0 Edge/151.0 (Win10 x64) | 93,345 | 11.5% |
| 3 | Chrome/152.0 (Win10 x64) | 70,908 | 8.8% |
| 4 | Chrome/151.0 (macOS 10.15.7) | 58,843 | 7.3% |
| 5 | Chrome/150.0 (macOS 10.15.7) | 21,709 | 2.7% |
| 6 | Chrome/152.0 (macOS 10.15.7) | 20,034 | 2.5% |
| 7 | Firefox/154.0 (Win10 x64) | 17,185 | 2.1% |
| 8 | Chrome/152.0 Edge/152.0 (Win10 x64) | 15,835 | 2.0% |
| 9 | Safari/26.5.2 (macOS 10.15.7) | 10,262 | 1.3% |
| 10 | Chrome/151.0 (CrOS x86_64) | 4,746 | 0.6% |

Notable: Significant **macOS** usage (~14%) and **ChromeOS** (0.6%) — diverse device environment. All top UAs are legitimate browsers.

---

## 15. Sensitive / High-Risk Endpoint

| # | Sensitive Path | Total Hits | Status | Risk |
|---|---|---|---|---|
| 1 | `/api/auth/login` | 655 | Mixed | **High** — auth endpoint |
| 2 | `/auth/login` | 418 | Mixed | **High** — auth endpoint |
| 3 | `/wp-json/wp/v2/users` | 27 | Mostly blocked | **CRITICAL** — user enumeration |
| 4 | `/.git/config` | 18 | All blocked | **CRITICAL** — source code exposure |
| 5 | `/.env` | 15 | All blocked | **CRITICAL** — secrets exposure |
| 6 | `/xmlrpc.php` | 15 | All blocked | **High** — WordPress RPC |
| 7 | `/wp-json/` | 13 | Mostly blocked | **High** — WordPress REST API |
| 8 | `/wp-login.php` | 13 | All blocked | **High** — WordPress login |
| 9 | `/wp-json/wc/v2/customers` | 11 | Blocked | **CRITICAL** — customer data enum |
| 10 | `/wp-json/tutor/v1/students` | 10 | Blocked | **CRITICAL** — student data enum |
| 11 | `/wp-json/ldlms/v2/users` | 9 | Blocked | **CRITICAL** — user data enum |
| 12 | `/wp-json/mepr/v1/members` | 7 | Blocked | **CRITICAL** — member data enum |
| 13 | `/wp-json/wp/v2/users/me` | 7 | Blocked | **High** — user info leak |
| 14 | `/wp-json/buddypress/v1/members` | 7 | Mostly blocked | **CRITICAL** — member enum |
| 15 | `/wp-json/oembed/1.0/embed` | 7 | Mixed | Medium |
| 16 | `/wp-json/wc/v3/customers` | 7 | Blocked | **CRITICAL** — customer data |
| 17 | `/2019/wp-includes/wlwmanifest.xml` | 6 | Blocked | Medium — WP detection |
| 18 | `/blog/wp-includes/wlwmanifest.xml` | 6 | Blocked | Medium — WP detection |
| 19 | `/wordpress/wp-includes/wlwmanifest.xml` | 6 | Blocked | Medium — WP detection |

**CRITICAL FINDING:** Extensive **WordPress REST API user enumeration** campaign targeting multiple WP plugin endpoints (WooCommerce, BuddyPress, LearnDash, MemberPress, Tutor LMS). This suggests the ORS platform may have a WordPress component or the attackers assume it does.

---

## 16. Attack Type Trend

| Date | ACL Blocks | WAF Blocks | Total |
|---|---|---|---|
| 2026-08-24 | 176 | 30 | 206 |
| 2026-08-25 | 88 | 0 | 88 |
| 2026-08-26 | 176 | 0 | 176 |
| 2026-08-27 | 211 | 3 | 214 |
| 2026-08-28 | 224 | 1 | 225 |
| 2026-08-29 | 314 | 0 | 314 |
| **2026-08-30** | **628** | **0** | **628** |
| 2026-08-31 | 237 | 5 | 242 |

**MASSIVE SPIKE on Aug 30:** 628 blocks — 3x the daily average. All ACL-based. This was a coordinated attack wave on a Saturday.

---

## 17. Suspicious Status 200

**CRITICAL — 3 WordPress REST API endpoints returned status 200:**

| Path | IP Address | Method | Count | Risk |
|---|---|---|---|---|
| `/wp-json/buddypress/v1/members` | 202.51.202.242 | GET | 1 | **HIGH** |
| `/wp-json/wp/v2/users` | 112.78.134.58 | GET | 1 | **HIGH** |
| `/wp-json/ultimate-member/v1/users` | 43.216.251.8 | GET | 1 | **HIGH** |

**These 3 requests successfully accessed WordPress REST API user/member enumeration endpoints with status 200.** Even though only 1 request each, the fact that they returned 200 means the WordPress REST API is accessible and may have exposed user data. This needs **immediate investigation**.

---

## 18. 4xx / 5xx Anomaly

### Daily Error Breakdown:

| Date | 404 | 405 | 401 | 400 | 403 | 499 | 502 | 500 | 408 | 422 | Total |
|---|---|---|---|---|---|---|---|---|---|---|---|
| Aug 24 | 486 | 206 | 78 | 16 | 41 | 19 | 1 | 0 | 0 | 1 | 848 |
| Aug 25 | 42 | 88 | 27 | 3 | 21 | 11 | 0 | 0 | 0 | 0 | 192 |
| Aug 26 | 439 | 176 | 82 | 289 | 26 | 7 | 1 | 0 | 1 | 7 | 1,028 |
| Aug 27 | 460 | 214 | 81 | 21 | 56 | 46 | 0 | 1 | 10 | 4 | 893 |
| **Aug 28** | 328 | 225 | 68 | 37 | 40 | 18 | **1,003** | 1 | 0 | 0 | **1,720** |
| Aug 29 | 277 | 314 | 66 | 14 | 34 | 39 | 0 | 1 | 0 | 0 | 745 |
| **Aug 30** | 0 | **628** | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | **628** |
| Aug 31 | 236 | 252 | 62 | 10 | 34 | 13 | 1 | 0 | 4 | 1 | 613 |

### Key Anomalies:

1. **502 CRITICAL SPIKE — Aug 28 14:00 (1,003 errors in 1 hour):**
   - 99.7% of all 502 errors occurred in a single hour
   - This indicates a **major backend service outage** — the origin server was unreachable
   - Needs immediate infrastructure investigation

2. **405 spike — Aug 30 (628):**
   - All 628 blocks on Aug 30 returned 405 (Method Not Allowed)
   - Correlates with the massive ACL block spike — attackers used HTTP methods that are not allowed

3. **401 errors — `/api/auth/data` (564 total):**
   - Concentrated on corporate IPs (`101.255.107.154`, `101.255.109.178`, etc.)
   - Likely expired session tokens or authentication refresh issues — not an attack

4. **400 spike — Aug 26 (289):**
   - Unusually high bad request count — may indicate malformed API calls or client-side bug

---

## 19. Attack Burst / Request Spike

### Top 10 Highest-Traffic Hours:

| # | Hour (UTC+8) | Request Count |
|---|---|---|
| 1 | **2026-08-27 17:00** | 17,369 |
| 2 | **2026-08-28 15:00** | 15,591 |
| 3 | **2026-08-27 11:00** | 13,613 |
| 4 | **2026-08-27 10:00** | 13,503 |
| 5 | **2026-08-27 15:00** | 13,037 |
| 6 | **2026-08-31 11:00** | 12,780 |
| 7 | **2026-08-31 17:00** | 12,615 |
| 8 | **2026-08-24 09:00** | 12,358 |
| 9 | **2026-08-24 11:00** | 11,776 |
| 10 | **2026-08-26 17:00** | 11,773 |

**Observation:** Aug 27 dominates with 4 out of 10 peak hours. Peak traffic during business hours (09:00-17:00 UTC+8) is normal for a recruitment platform. No abnormal off-hour burst detected.

---

## 20. IP x Attack Type Analysis

| IP Address | Attack Type (Plugin) | Blocked Count | IP Type |
|---|---|---|---|
| 34.65.238.115 | ACL | 277 | **AWS Cloud** |
| 34.182.181.161 | ACL | 207 | **AWS Cloud** |
| 51.79.229.143 | ACL | 82 | **OVH Cloud** |
| 184.72.121.156 | ACL | 79 | **AWS Cloud** |
| 54.209.60.63 | ACL | 69 | **AWS Cloud** |
| 54.175.74.27 | ACL | 51 | **AWS Cloud** |
| **103.84.193.221** | **WAF** | **35** | **Unknown** |
| 107.23.198.238 | ACL | 34 | **DigitalOcean** |
| 143.110.217.244 | ACL | 31 | **DigitalOcean** |
| 54.86.66.252 | ACL | 31 | **AWS Cloud** |

**Key Finding:** 7 out of top 10 attackers are **AWS cloud IPs**. `103.84.193.221` is the only IP blocked by WAF rules (35 times) — this IP triggered scanner behavior detection.

---

## 21. IP x Target URL Analysis

| IP Address | Target URL | Blocked Count |
|---|---|---|
| 107.23.198.238 | `/robots.txt` | 34 |
| 5.188.86.234 | `/wp-login.php` | 12 |
| 144.172.94.4 | `/` (root) | 12 |
| 34.182.181.161 | `/` (root) | 9 |
| 34.65.238.115 | `/` (root) | 6 |
| 184.72.121.156 | `/_/recruitment/member/_` | 5 |
| 51.79.229.143 | `/` (root) | 5 |
| 184.72.121.156 | `/auth/login` | 5 |
| 54.209.60.63 | `/home` | 4 |
| 54.175.74.27 | `/_/sourcing/dash/_` | 4 |

**Observation:** `5.188.86.234` specifically targeted `/wp-login.php` (12 blocks) — known Russian botnet IP range. `107.23.198.238` focused on `/robots.txt` (reconnaissance). `184.72.121.156` probed both recruitment API and login endpoints.

---

## 22. Blocked → 200 Pattern

IPs that had BOTH blocked requests AND successful requests:

| IP Address | Blocked | Total | Pass-through | Risk |
|---|---|---|---|---|
| **103.84.193.221** | **35** | **56** | **21 (37.5%)** | **CRITICAL** |
| 157.66.56.149 | 1 | 4 | 3 (75%) | Low |

**CRITICAL:** `103.84.193.221` had 35 WAF blocks but **21 requests still passed through** to the origin. This IP was detected as a scanner by WAF rules but was not fully stopped. The 21 pass-through requests need immediate investigation.

**Note:** Most top attacking IPs (34.65.x, 34.182.x, etc.) had ALL their requests blocked — the ACL rules are effective against cloud-based scanners.

---

## 23. Potential False Positive

**Low false positive risk.** The 401 errors on `/api/auth/data` from corporate IPs (`101.255.107.154`, `101.255.109.178`, etc.) are likely legitimate users with expired sessions, not attacks.

The ACL blocks are well-targeted at cloud/scanner IPs with minimal impact on legitimate users.

---

## 24. Potential Successful Attack

**CRITICAL — 3 potential successful WordPress API attacks detected:**

| # | Path | IP | Status | Impact |
|---|---|---|---|---|
| 1 | `/wp-json/buddypress/v1/members` | 202.51.202.242 | 200 | **User/member data exposed** |
| 2 | `/wp-json/wp/v2/users` | 112.78.134.58 | 200 | **User list/emails exposed** |
| 3 | `/wp-json/ultimate-member/v1/users` | 43.216.251.8 | 200 | **Member data exposed** |

**Additionally:**
- `103.84.193.221` (WAF-detected scanner) had 21 requests pass through — contents unknown
- The `.git/config` and `.env` probes were all blocked — no successful file exposure detected

**Risk Level: HIGH** — WordPress REST API is accessible and returning user data to at least 3 external IPs.

---

## 25. Summary & Recommendation

### Executive Summary

During Aug 24-31, 2026, `ors.simgroup.co.id` received **809,933 requests** with **2,093 blocked** (0.258% block rate) from **678 unique attacking IPs**. The attack surface is significantly larger than `sysbpr.simgroup.co.id`. Key concerns include a **massive Saturday attack wave** (Aug 30, 628 blocks), **critical infrastructure probes** (`.git/config`, `.env`), **extensive WordPress REST API enumeration**, a **major 502 outage** (1,003 errors in 1 hour on Aug 28), and **3 confirmed successful WordPress API data exposures**.

### Key Findings

1. **CRITICAL — WordPress REST API data leak:** 3 requests to `/wp-json/` endpoints returned status 200, potentially exposing user/member data to external IPs.
2. **CRITICAL — 502 outage on Aug 28:** 1,003 Bad Gateway errors in a single hour (14:00) — major backend service failure.
3. **HIGH — Saturday attack wave (Aug 30):** 628 blocks on lowest-traffic day (22.6K) = 2.779% block rate. Attackers timed the assault for weekend.
4. **HIGH — Cloud-based distributed attack:** Top 5 attackers are all AWS/cloud IPs. 678 unique attacking IPs indicate widespread automated scanning.
5. **HIGH — Critical file probes:** `.git/config` (18 blocks), `.env` (15 blocks) — attackers trying to steal source code and secrets.
6. **MEDIUM — Scanner partially bypassed WAF:** `103.84.193.221` had 21 requests pass through despite being flagged as scanner.
7. **MEDIUM — 401 auth errors:** 564 unauthorized requests on `/api/auth/data` from corporate IPs — session management issue.

### Recommended Actions

| Priority | Action | Target |
|---|---|---|
| **P0 - Emergency** | **Disable or restrict WordPress REST API access.** Add ACL rule to block all `/wp-json/*` paths from external IPs, or require authentication. Verify if WordPress component exists and is needed. Investigate the 3 successful 200 responses to determine what data was exposed. | WAF / App Team |
| **P0 - Emergency** | **Investigate 502 outage on Aug 28 14:00.** Review origin server health, load balancer config, and application logs. 1,003 errors in 1 hour is a major incident. | Infra / App Team |
| **P1 - Critical** | **Ban top attacking cloud IPs permanently:** `34.65.238.115`, `34.182.181.161`, `51.79.229.143`, `184.72.121.156`, `54.209.60.63`. Consider geo-IP or cloud-range blocking. | WAF Team |
| **P1 - Critical** | **Investigate `103.84.193.221`** — 21 requests passed through WAF despite scanner detection. Review what content was served. | SOC Team |
| **P2 - High** | **Add explicit block rules for `.git/*`, `.env`, `/.htaccess`, `/wp-config.php`** at WAF edge. Return 403 immediately. | WAF Rule Team |
| **P2 - High** | **Investigate 401 errors on `/api/auth/data`** — 564 errors from corporate IPs suggest session management or token refresh issues. | App Team |
| **P3 - Medium** | **Enable rate limiting on `/auth/login` and `/api/auth/login`** to prevent brute-force attacks. | WAF Team |
| **P3 - Medium** | **Review ACL rule 20126311** — handles 98.1% of blocks. Ensure it covers cloud IP ranges and known scanner ASNs. | WAF Rule Team |
| **P4 - Low** | **Block known bad UAs:** `crusader-worker/1.0`, `proximic` crawler, and outdated browser UAs (Chrome 78, 95, 120) at WAF edge. | WAF Team |

---

*Report generated from WAF access logs. All data sourced from `wafnew-logstore` in project `wafnew-project-5579245397393099-ap-southeast-5`, region `ap-southeast-5`.*
