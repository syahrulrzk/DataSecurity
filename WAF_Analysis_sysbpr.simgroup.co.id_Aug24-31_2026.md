# WAF Analysis Report — sysbpr.simgroup.co.id
## Period: 24 - 31 August 2026

**Logstore:** `wafnew-logstore` / `wafnew-project-5579245397393099-ap-southeast-5` (ap-southeast-5)
**Generated:** 2 September 2026

---

## 1. Total Request

| Metric | Value |
|---|---|
| **Total Requests** | **880,245** |

---

## 2. Blocked Request

| Metric | Value |
|---|---|
| **Total Blocked** | **281** |

---

## 3. Block Rate (%)

| Metric | Value |
|---|---|
| **Block Rate** | **0.032%** (281 / 880,245) |

The block rate is extremely low. The vast majority of traffic (99.97%) passed through without WAF intervention.

---

## 4. Top Attack Type

| WAF Plugin (Attack Category) | Count | % of Blocked |
|---|---|---|
| **ACL** (Access Control List) | 246 | 87.5% |
| **WAF** (Web Application Firewall) | 35 | 12.5% |

ACL rules dominate the blocking. Within WAF plugin blocks, the attack sub-types are:

| Rule Type | Count |
|---|---|
| `scanner_behavior` | 34 |
| `arbitrary_file_reading` | 1 |

---

## 5. Daily Trend WAF Request (Total Request & Total Block)

| Date | Total Request | Blocked | Block Rate |
|---|---|---|---|
| 2026-08-24 (Sun) | 144,583 | 42 | 0.029% |
| 2026-08-25 (Mon) | 33,141 | 11 | 0.033% |
| 2026-08-26 (Tue) | 161,979 | 70 | 0.043% |
| 2026-08-27 (Wed) | 128,666 | 26 | 0.020% |
| 2026-08-28 (Thu) | 130,076 | 43 | 0.033% |
| 2026-08-29 (Fri) | 74,694 | 33 | 0.044% |
| 2026-08-30 (Sat) | 13,914 | 18 | 0.129% |
| 2026-08-31 (Sun) | 193,192 | 38 | 0.020% |

**Observation:** Aug 26 had the highest absolute blocks (70). Aug 30 had the highest block rate (0.129%) despite lowest traffic, suggesting proportionally more attack activity on a low-traffic day. Aug 31 had the highest traffic (193K).

---

## 6. Top 5 Attacking IP (by blocked requests)

| # | IP Address | Blocked Count |
|---|---|---|
| 1 | **182.253.222.86** | 34 |
| 2 | **222.124.191.185** | 31 |
| 3 | **116.0.3.253** | 15 |
| 4 | **101.255.107.154** | 12 |
| 5 | **110.136.115.216** | 9 |

---

## 7. Unique Attacking IP

| Metric | Value |
|---|---|
| **Unique Attacking IPs** | **61** |

---

## 8. Top Targeted URLs (by blocked requests)

| # | URL Path | Blocked Count |
|---|---|---|
| 1 | `/apple-touch-icon-precomposed.png` | 46 |
| 2 | `/apple-touch-icon.png` | 46 |
| 3 | `/assets/logo.png` | 45 |
| 4 | `/favicon.ico` | 39 |
| 5 | `/` (root) | 30 |
| 6 | `/intranet/login.php` | 20 |
| 7 | `/xmlrpc.php` | 10 |
| 8 | `/https:/sysbpr.simgroup.co.id/` | 9 |
| 9 | `/intranet/main.php` | 5 |
| 10 | `/new/xmlrpc.php` | 2 |

**Observation:** High blocks on static assets (favicon, apple-touch-icon, logo) indicate scanner/bot probing behavior. `/xmlrpc.php` probes suggest WordPress exploitation attempts. `/intranet/login.php` is the most targeted application endpoint.

---

## 9. Top Triggered Rules

| # | Rule ID | Plugin | Triggered Count |
|---|---|---|---|
| 1 | **20134680** | ACL | 197 |
| 2 | **20134681** | ACL | 36 |
| 3 | **117090** | WAF | 34 |
| 4 | **20125246** | ACL | 13 |
| 5 | **900904** | WAF | 1 |

Rule **20134680** (ACL) is responsible for 70.1% of all blocks — this is the primary defense rule.

---

## 10. Attack Severity Distribution

| Attack Category | Rule Type | Count | Severity |
|---|---|---|---|
| ACL | `scanner_behavior` | 34 | **Medium** — automated scanning |
| ACL | *(no sub-type)* | 211 | **Low-Medium** — policy violation |
| WAF | `scanner_behavior` | 34 | **Medium** — vulnerability scanner detected |
| WAF | `arbitrary_file_reading` | 1 | **High** — LFI/path traversal attempt |

**Note:** 246 ACL blocks have no `final_rule_type` populated (ACL rules don't always classify sub-types). The single `arbitrary_file_reading` event is the highest-severity attack detected.

---

## 11. Status Code Distribution

| Status Code | Count | % of Total | Description |
|---|---|---|---|
| **200** | 755,638 | 85.84% | OK |
| **404** | 105,877 | 12.03% | Not Found |
| **302** | 13,575 | 1.54% | Redirect |
| **499** | 1,510 | 0.17% | Client Closed Request |
| **304** | 1,421 | 0.16% | Not Modified |
| **206** | 1,040 | 0.12% | Partial Content |
| **403** | 427 | 0.05% | Forbidden |
| **405** | 281 | 0.03% | Method Not Allowed |
| **202** | 257 | 0.03% | Accepted |
| **301** | 110 | 0.01% | Moved Permanently |
| **500** | 61 | 0.007% | Internal Server Error |
| **400** | 41 | 0.005% | Bad Request |
| **401** | 6 | 0.0007% | Unauthorized |
| **502** | 1 | 0.0001% | Bad Gateway |

**Key insight:** 404 rate is high (12.03%) — 105,877 requests. This warrants investigation (see Point 18).

---

## 12. Top 10 Endpoints – Status 200

| # | Endpoint | Count |
|---|---|---|
| 1 | `/intranet/void.php` | 442,506 |
| 2 | `/intranet/index.php` | 104,057 |
| 3 | `/intranet/ajax.php` | 86,632 |
| 4 | `/api/payroll/send-erp-progress` | 36,139 |
| 5 | `/intranet/popup.php` | 29,591 |
| 6 | `/intranet/main.php` | 12,235 |
| 7 | `/intranet/login.php` | 5,849 |
| 8 | `/` (root) | 2,897 |
| 9 | `/intranet/print.php` | 741 |
| 10 | `/assets/logo.png` | 677 |

**Note:** `/intranet/void.php` dominates with 442K hits (58.5% of all 200s). This appears to be a heartbeat/polling endpoint.

---

## 13. Top 10 IP – Status 200

| # | IP Address | Request Count (200) |
|---|---|---|
| 1 | **101.255.109.178** | 238,555 |
| 2 | **101.255.107.154** | 147,561 |
| 3 | **103.121.20.10** | 34,252 |
| 4 | **115.124.64.130** | 28,923 |
| 5 | **101.255.158.250** | 27,087 |
| 6 | **124.158.144.178** | 13,720 |
| 7 | **203.190.246.209** | 13,431 |
| 8 | **103.78.113.34** | 13,424 |
| 9 | **103.165.221.90** | 10,081 |
| 10 | **112.78.41.122** | 7,307 |

**Note:** Top 2 IPs (`101.255.109.178` and `101.255.107.154`) account for ~51% of all 200 responses. These are likely corporate NAT/proxy or heavy internal users.

---

## 14. Top 10 User Agent

| # | User Agent | Count | % |
|---|---|---|---|
| 1 | Chrome/151.0 (Win10 x64) | 562,026 | 63.8% |
| 2 | Chrome/152.0 (Win10 x64) | 108,096 | 12.3% |
| 3 | Chrome/151.0 Edge/151.0 (Win10 x64) | 67,294 | 7.6% |
| 4 | Firefox/154.0 (Win10 x64) | 63,242 | 7.2% |
| 5 | Chrome/152.0 Edge/152.0 (Win10 x64) | 16,643 | 1.9% |
| 6 | Safari/17.6 (macOS 10.15.7) | 7,566 | 0.9% |
| 7 | Chrome/150.0 OPR/134.0 (Win10 x64) | 6,551 | 0.7% |
| 8 | Chrome/151.0 (Linux x86_64) | 4,742 | 0.5% |
| 9 | Chrome/148.0 (Win10 x64) | 4,545 | 0.5% |
| 10 | Firefox/149.0 (Win10 x64) | 4,348 | 0.5% |

All top 10 UAs are legitimate browsers. No suspicious bot/scanner UA in the top list.

---

## 15. Sensitive / High-Risk Endpoint

| # | Sensitive Path | Total Hits | Risk Level |
|---|---|---|---|
| 1 | `/intranet/login.php` | 10,825 | **High** — authentication endpoint |
| 2 | `/xmlrpc.php` | 10 | **High** — WordPress RPC (10 blocked) |
| 3 | `/wp-login.php` | 8 | **High** — WordPress login probe |
| 4 | `/wp-admin/` | 8 | **High** — WordPress admin probe |
| 5 | `/wp-json/batch/v1` | 7 | **Medium** — WordPress REST API probe |
| 6 | `/administrator/index.php` | 6 | **High** — Joomla/admin probe |
| 7 | `/admin/index.php` | 6 | **High** — admin panel probe |
| 8 | `/user/login` | 7 | **Medium** — alternative login |
| 9 | `/admin/filemanager/initialize` | 2 | **Critical** — file manager access |
| 10 | `/intranet/assets/ckfinder/config.js` | 13 | **Medium** — file manager config |

**Observation:** WordPress probes (`wp-login`, `wp-admin`, `xmlrpc`, `wp-json`) and admin panel probes (`administrator/index.php`, `admin/index.php`) indicate active reconnaissance. The `xmlrpc.php` requests were all blocked (10 blocks). The `wp-login.php`, `wp-admin/`, `wp-json/`, `administrator/`, `admin/index.php` paths did NOT return status 200 (they were likely blocked or returned 403/404).

---

## 16. Attack Type Trend

| Date | ACL Blocks | WAF Blocks | Total |
|---|---|---|---|
| 2026-08-24 | 42 | 0 | 42 |
| 2026-08-25 | 11 | 0 | 11 |
| 2026-08-26 | 69 | 1 | 70 |
| 2026-08-27 | 11 | 15 | 26 |
| 2026-08-28 | 42 | 1 | 43 |
| 2026-08-29 | 31 | 2 | 33 |
| 2026-08-30 | 18 | 0 | 18 |
| 2026-08-31 | 22 | 16 | 38 |

**Observation:** ACL blocks are consistently present. WAF blocks spiked on Aug 27 (15) and Aug 31 (16), indicating targeted WAF rule triggers (scanner behavior detection) on those days.

---

## 17. Suspicious Status 200

**Result: No truly dangerous sensitive paths returned status 200.**

Paths like `/xmlrpc.php`, `/wp-login.php`, `/wp-admin/`, `/phpmyadmin/`, `/.env`, `/shell`, `/passwd` did NOT appear in status 200 results.

The only "admin"-containing paths with 200 status are **legitimate application resources**:
- `/intranet/sources/hrms/employee/administrasi/js/*.js` — legitimate HR module JS files
- `/intranet/assets/ckfinder/config.js` — legitimate CKFinder config
- `/intranet/sources/hrms/ess/admin/js/*.js` — legitimate ESS admin module JS

**Verdict: LOW RISK** — These are genuine application assets, not attacker-probed sensitive endpoints.

---

## 18. 4xx / 5xx Anomaly

### Daily Error Breakdown:

| Date | 404 | 403 | 405 | 400 | 401 | 499 | 500 | 502 | Total Errors |
|---|---|---|---|---|---|---|---|---|---|
| Aug 24 | 18,681 | 91 | 42 | 7 | 0 | 1,282 | 10 | 0 | 20,113 |
| Aug 25 | 3,443 | 3 | 11 | 0 | 0 | 211 | 0 | 0 | 3,668 |
| Aug 26 | 19,199 | 73 | 70 | 8 | 0 | 11 | 36 | 1 | 19,398 |
| Aug 27 | 17,130 | 74 | 26 | 2 | 6 | 0 | 3 | 0 | 17,241 |
| Aug 28 | 15,570 | 46 | 43 | 10 | 0 | 6 | 4 | 0 | 15,679 |
| Aug 29 | 9,865 | 20 | 33 | 3 | 0 | 0 | 0 | 0 | 9,921 |
| Aug 30 | 1,758 | 0 | 18 | 1 | 0 | 0 | 0 | 0 | 1,777 |
| Aug 31 | 20,231 | 120 | 38 | 10 | 0 | 0 | 8 | 0 | 20,407 |

**Key Anomalies:**
- **404 spike on Aug 31** (20,231) — highest in the period, coincides with highest traffic day
- **403 spike on Aug 31** (120) — 4x the average, suggests active probing/scanning
- **500 errors on Aug 26** (36) — unusual spike in server errors
- **499 errors on Aug 24** (1,282) — clients disconnecting before server responds, possible slow-loris or timeout issue

---

## 19. Attack Burst / Request Spike

### Top 10 Highest-Traffic Hours:

| # | Hour (UTC+8) | Request Count |
|---|---|---|
| 1 | **2026-08-31 15:00** | 24,644 |
| 2 | **2026-08-31 10:00** | 21,029 |
| 3 | **2026-08-31 17:00** | 20,802 |
| 4 | **2026-08-26 11:00** | 20,795 |
| 5 | **2026-08-31 18:00** | 20,316 |
| 6 | **2026-08-26 15:00** | 18,214 |
| 7 | **2026-08-31 11:00** | 17,674 |
| 8 | **2026-08-24 15:00** | 16,361 |
| 9 | **2026-08-26 12:00** | 16,106 |
| 10 | **2026-08-31 16:00** | 15,658 |

**Observation:** Aug 31 dominates with 6 out of 10 peak hours. Peak traffic concentrates during business hours (10:00-18:00 UTC+8), consistent with normal intranet usage. No abnormal off-hour burst detected.

---

## 20. IP x Attack Type Analysis

| IP Address | Attack Type (Plugin) | Blocked Count |
|---|---|---|
| 182.253.222.86 | ACL | 34 |
| 222.124.191.185 | **WAF** | 31 |
| 116.0.3.253 | ACL | 15 |
| 101.255.107.154 | ACL | 12 |
| 103.82.14.64 | ACL | 9 |
| 110.136.115.216 | ACL | 9 |
| 2404:c0:2427:... (IPv6) | ACL | 9 |
| 2404:c0:5c40:... (IPv6) | ACL | 9 |
| 158.140.170.113 | ACL | 8 |
| 103.154.150.96 | ACL | 8 |

**Key Finding:** `222.124.191.185` is the only IP blocked by **WAF rules** (31 times, scanner_behavior). This IP triggered WAF-level detection, indicating more sophisticated attack patterns than simple ACL violations.

---

## 21. IP x Target URL Analysis

| IP Address | Target URL | Blocked Count |
|---|---|---|
| 182.253.222.86 | `/` (root) | 17 |
| 182.253.222.86 | `/intranet/login.php` | 17 |
| 116.0.3.253 | `/favicon.ico` | 15 |
| 101.255.107.154 | `/https:/sysbpr.simgroup.co.id/` | 8 |
| 103.154.150.96 | `/favicon.ico` | 8 |
| **222.124.191.185** | **`/xmlrpc.php`** | **7** |
| 103.111.187.60 | `/favicon.ico` | 6 |
| 158.140.170.105 | `/` (root) | 4 |
| 114.79.2.164 | `/favicon.ico` | 4 |
| 158.140.170.113 | `/` (root) | 4 |

**Key Finding:** `182.253.222.86` targeted both root and login page (17 each). `222.124.191.185` specifically probed `/xmlrpc.php` (WordPress exploitation). Multiple IPs probed `/favicon.ico` — classic scanner fingerprinting behavior.

---

## 22. Blocked -> 200 Pattern

IPs that had BOTH blocked requests AND successful (non-blocked) requests:

| IP Address | Blocked | Total | Success Rate | Risk |
|---|---|---|---|---|
| **182.253.222.86** | 34 | 46 | 26.1% passed | **HIGH** |
| **222.124.191.185** | 31 | 37 | 16.2% passed | **HIGH** |
| 116.0.3.253 | 15 | 1,597 | 99.1% passed | Medium |
| 101.255.107.154 | 12 | 175,488 | ~100% passed | Low (likely legit user) |
| 110.136.115.216 | 9 | 245 | 96.3% passed | Medium |
| 2404:c0:2427:... | 9 | 16 | 43.8% passed | Medium |
| 2404:c0:5c40:... | 9 | 49 | 81.6% passed | Medium |
| 103.82.14.64 | 9 | 453 | 98.0% passed | Low |
| 103.154.150.96 | 8 | 5,939 | 99.9% passed | Low |
| 104.28.204.79 | 6 | 12 | 50.0% passed | Medium |

**CRITICAL:** `182.253.222.86` and `222.124.191.185` had significant portions of their traffic pass through despite being top attackers. Some of their requests were blocked, but others reached the origin server.

---

## 23. Potential False Positive

**Result: No clear false positives detected on truly dangerous paths.**

- WordPress/admin paths (`xmlrpc.php`, `wp-login.php`, `wp-admin/`, etc.) with status 200: **0 results**
- The only "admin"-containing paths returning 200 are legitimate HR/intranet module resources
- `101.255.107.154` (top legitimate user with 175K requests) had 12 ACL blocks — these may be false positives from a legitimate corporate IP doing normal browsing. **Recommend reviewing ACL rule 20134680 scope for this IP.**

---

## 24. Potential Successful Attack

**Result: No confirmed successful attacks on critical paths.**

- No non-browser user agents accessed WordPress/admin paths with status 200
- No PUT/DELETE/TRACE/OPTIONS/CONNECT/PATCH methods returned status 200
- However, `182.253.222.86` (top attacker) had 12 requests pass through to the origin — these need investigation to confirm they were not malicious
- `222.124.191.185` (WAF-blocked scanner) had 6 requests pass through — these should be reviewed in application logs

**Risk Level: LOW-MEDIUM** — WAF blocked most attacks, but the Blocked->200 pattern for top attackers warrants deeper investigation.

---

## 25. Summary & Recommendation

### Executive Summary

During Aug 24-31, 2026, `sysbpr.simgroup.co.id` received **880,245 requests** with only **281 blocked** (0.032% block rate). The application is primarily an intranet HR/payroll system serving Indonesian corporate users. Attack volume is relatively low but includes WordPress exploitation attempts, scanner probing, and one arbitrary file reading attempt.

### Key Findings

1. **Low attack volume, effective WAF:** 281 blocks from 61 unique IPs. WAF successfully blocked scanner behavior and ACL violations.
2. **WordPress probes detected:** `/xmlrpc.php`, `/wp-login.php`, `/wp-admin/`, `/wp-json/` were all probed. If this is NOT a WordPress application, these are pure reconnaissance.
3. **Top attacker partially bypassed WAF:** `182.253.222.86` (34 blocks) and `222.124.191.185` (31 blocks) had requests that passed through to origin.
4. **High 404 rate (12%):** 105,877 not-found requests suggest either broken links, missing assets, or scanning activity.
5. **500 error spike on Aug 26:** 36 internal server errors in one day — investigate application stability.
6. **499 errors on Aug 24:** 1,282 client disconnections — possible slow-client or timeout issue.

### Recommended Actions

| Priority | Action | Target |
|---|---|---|
| **P1 - Critical** | Investigate `182.253.222.86` and `222.124.191.185` — review what content was served on their non-blocked requests. Consider permanent IP ban. | SOC / WAF Team |
| **P1 - Critical** | If the app is NOT WordPress, add ACL rules to block all `/wp-*`, `/xmlrpc.php`, `/administrator/`, `/admin/` paths entirely (return 403 at edge). | WAF Rule Team |
| **P2 - High** | Review ACL rule 20134680 — it blocks 70% of attacks but may be too broad. Check if `101.255.107.154` (legitimate corporate IP, 175K requests) is being incorrectly flagged. | WAF Rule Team |
| **P2 - High** | Investigate 500 error spike on Aug 26 (36 errors). Check application logs for root cause. | App Team |
| **P3 - Medium** | Investigate high 404 rate (105K). Identify top 404 paths and fix broken links or add redirect rules. | App / Dev Team |
| **P3 - Medium** | Investigate 499 errors on Aug 24 (1,282). Check upstream response time and timeout configuration. | Infra Team |
| **P4 - Low** | Enable rate limiting (CC protection) for `/intranet/login.php` to prevent brute-force. The login page received 10,825 hits. | WAF Rule Team |
| **P4 - Low** | Consider adding bot detection for requests to `/favicon.ico`, `/apple-touch-icon.png` — these are scanner fingerprints when requested excessively. | WAF Rule Team |

---

*Report generated from WAF access logs. All data sourced from `wafnew-logstore` in project `wafnew-project-5579245397393099-ap-southeast-5`, region `ap-southeast-5`.*
