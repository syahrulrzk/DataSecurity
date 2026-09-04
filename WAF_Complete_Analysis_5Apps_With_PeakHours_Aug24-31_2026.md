# WAF Security Analysis Report

**Period:** 24 - 31 August 2026
**Log Source:** wafnew-logstore (wafnew-project-5579245397393099-ap-southeast-5)
**Region:** ap-southeast-5
**Timezone:** WIB (UTC+7)

**Applications Analyzed:**
- SYSBPR (sysbpr.simgroup.co.id)
- ORS (ors.simgroup.co.id)
- GAWE (www.gawe.id)
- ERP (erp.simgroup.co.id)
- JAGOTI (www.jagoti.co.id)

## Executive Summary - All Apps Comparison

| App | Total Request | Blocked | Block Rate | Unique Attacker IPs |
|---|---|---|---|---|
| SYSBPR (sysbpr.simgroup.co.id) | 882,948 | 285 | 0.03% | 48 |
| ORS (ors.simgroup.co.id) | 812,172 | 2,092 | 0.26% | 678 |
| GAWE (www.gawe.id) | 353,183 | 38,184 | 10.81% | 2,785 |
| ERP (erp.simgroup.co.id) | 1,818,843 | 10,208 | 0.56% | 374 |
| JAGOTI (www.jagoti.co.id) | 180,827 | 11,917 | 6.59% | 1,758 |
| **TOTAL** | **4,047,973** | **62,686** | **1.55%** | - |

## Peak Hours Summary

| App | Overall Peak Hour (WIB) | Peak Hour Requests |
|---|---|---|
| SYSBPR (sysbpr.simgroup.co.id) | 14:00 | 94,807 |
| ORS (ors.simgroup.co.id) | 10:00 | 71,904 |
| GAWE (www.gawe.id) | 11:00 | 21,538 |
| ERP (erp.simgroup.co.id) | 15:00 | 206,571 |
| JAGOTI (www.jagoti.co.id) | 10:00 | 15,062 |


---

## SYSBPR (sysbpr.simgroup.co.id)

### 1-3. Total Request, Blocked Request & Block Rate

| Metric | Value |
|---|---|
| Total Request | 882,948 |
| Blocked Request | 285 |
| Block Rate | 0.03% |

### 4. Top Attack Type

| Attack Type | Count |
|---|---|
| null | 250 |
| scanner_behavior | 34 |
| arbitrary_file_reading | 1 |

### 5. Daily Trend WAF Request

| Date | Total Request | Blocked |
|---|---|---|
| 2026-08-23 | 1,102 | 6 |
| 2026-08-24 | 144,433 | 34 |
| 2026-08-25 | 40,866 | 29 |
| 2026-08-26 | 155,353 | 52 |
| 2026-08-27 | 128,771 | 36 |
| 2026-08-28 | 130,861 | 36 |
| 2026-08-29 | 74,861 | 30 |
| 2026-08-30 | 11,212 | 34 |
| 2026-08-31 | 195,489 | 28 |

### 6. Top 5 Attacking IP (by blocked requests)

| Rank | IP Address | Blocked Count |
|---|---|---|
| 1 | 104.22.176.13 | 32 |
| 2 | 104.23.175.223 | 20 |
| 3 | 162.158.106.102 | 19 |
| 4 | 172.68.164.147 | 11 |
| 5 | 172.69.166.56 | 11 |

### 7. Unique Attacking IP

**Unique Attacking IPs:** 48

### 8. Top Targeted URLs (by blocked requests)

| URL Path | Blocked Count |
|---|---|
| `/apple-touch-icon.png` | 46 |
| `/apple-touch-icon-precomposed.png` | 46 |
| `/assets/logo.png` | 45 |
| `/favicon.ico` | 41 |
| `/` | 31 |
| `/intranet/login.php` | 21 |
| `/xmlrpc.php` | 10 |
| `/https:/sysbpr.simgroup.co.id/` | 9 |
| `/intranet/main.php` | 5 |
| `/new/xmlrpc.php` | 2 |

### 9. Top Triggered Rules

| Rule ID | Plugin | Rule Type | Count |
|---|---|---|---|
| 20134680 | acl | null | 199 |
| 20134681 | acl | null | 38 |
| 117090 | waf | scanner_behavior | 34 |
| 20125246 | acl | null | 13 |
| 900904 | waf | arbitrary_file_reading | 1 |

### 10. Attack Severity Distribution (by WAF Plugin)

| WAF Plugin | Count |
|---|---|
| acl | 250 |
| waf | 35 |

### 11. Status Code Distribution

| Status Code | Count |
|---|---|
| 200 | 757,846 |
| 404 | 106,323 |
| 302 | 13,607 |
| 499 | 1,510 |
| 304 | 1,421 |
| 206 | 1,047 |
| 403 | 432 |
| 405 | 285 |
| 202 | 257 |
| 301 | 111 |
| 500 | 61 |
| 400 | 41 |
| 401 | 6 |
| 502 | 1 |

### 12. Top 10 Endpoints - Status 200

| Endpoint | Request Count |
|---|---|
| `/intranet/void.php` | 443,756 |
| `/intranet/index.php` | 104,500 |
| `/intranet/ajax.php` | 86,699 |
| `/api/payroll/send-erp-progress` | 36,139 |
| `/intranet/popup.php` | 29,919 |
| `/intranet/main.php` | 12,254 |
| `/intranet/login.php` | 5,865 |
| `/` | 2,901 |
| `/intranet/print.php` | 745 |
| `/assets/logo.png` | 683 |

### 13. Top 10 IP - Status 200

| IP Address | Request Count |
|---|---|
| 104.22.176.13 | 102,764 |
| 172.69.166.56 | 44,032 |
| 172.69.166.57 | 41,289 |
| 104.23.175.223 | 35,423 |
| 104.23.175.222 | 35,203 |
| 172.68.82.134 | 28,347 |
| 172.71.124.176 | 23,764 |
| 162.158.88.154 | 23,088 |
| 172.71.124.177 | 22,494 |
| 172.70.208.63 | 22,377 |

### 14. Top 10 User Agent

| User Agent | Count |
|---|---|
| Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gec... | 562,309 |
| Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gec... | 109,907 |
| Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gec... | 67,294 |
| Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:154.0) Gecko/20100101 Firefox/154.0 | 63,313 |
| Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gec... | 16,666 |
| Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, ... | 7,566 |
| Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gec... | 6,555 |
| Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome... | 4,742 |
| Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gec... | 4,545 |
| Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0 | 4,439 |

### 15. Sensitive / High-Risk Endpoint

| Endpoint | Total | Blocked | Errors (4xx/5xx) |
|---|---|---|---|
| `/intranet/void.php` | 446,276 | 0 | 1,490 |
| `/intranet/index.php` | 106,247 | 0 | 86 |
| `/intranet/ajax.php` | 86,699 | 0 | 0 |
| `/api/payroll/send-erp-progress` | 36,396 | 0 | 0 |
| `/intranet/popup.php` | 29,919 | 0 | 0 |
| `/intranet/main.php` | 13,335 | 5 | 14 |
| `/intranet/login.php` | 10,852 | 21 | 23 |
| `/intranet/logout.php` | 4,445 | 0 | 0 |
| `/intranet/print.php` | 745 | 0 | 0 |
| `/intranet/storage/info/login-background.jpg` | 625 | 0 | 0 |
| `/intranet/storage/info/login-logo.png` | 613 | 0 | 0 |
| `/intranet/storage/logs/log-upload-auto-perpanjangan-kontrak.log` | 80 | 0 | 0 |
| `/intranet/ckfinder.php` | 48 | 0 | 0 |
| `/intranet/assets/js/helper.upload.js` | 40 | 0 | 0 |
| `/intranet/assets/pages/css/login.css` | 20 | 0 | 0 |
| `/intranet/download.php` | 14 | 0 | 14 |
| `/intranet/assets/ckfinder/config.js` | 13 | 0 | 0 |
| `/intranet/sources/hrms/employee/administrasi/js/dta_promosi_mutasi.js` | 12 | 0 | 0 |
| `/intranet/sources/hrms/employee/administrasi/js/dta_peringatan.js` | 12 | 0 | 0 |
| `/xmlrpc.php` | 10 | 10 | 10 |

### 16. Attack Type Trend

| Date | Attack Type | Count |
|---|---|---|
| 2026-08-23 | null | 6 |
| 2026-08-24 | null | 34 |
| 2026-08-25 | null | 28 |
| 2026-08-25 | scanner_behavior | 1 |
| 2026-08-26 | null | 52 |
| 2026-08-27 | null | 21 |
| 2026-08-27 | scanner_behavior | 15 |
| 2026-08-28 | null | 35 |
| 2026-08-28 | scanner_behavior | 1 |
| 2026-08-29 | null | 28 |
| 2026-08-29 | scanner_behavior | 2 |
| 2026-08-30 | null | 18 |
| 2026-08-30 | scanner_behavior | 15 |
| 2026-08-30 | arbitrary_file_reading | 1 |
| 2026-08-31 | null | 28 |

### 17. Suspicious Status 200

_Requests that matched WAF rules but still returned HTTP 200 (potential bypass or false negative)._

_No suspicious status 200 patterns detected._

### 18. 4xx / 5xx Anomaly

| Status Class | Count |
|---|---|
| 2xx | 759,150 |
| 4xx | 108,597 |
| 3xx | 15,139 |
| 5xx | 62 |

### 19. Attack Burst / Request Spike (Top 20 Busiest Hours)

| Hour (WIB) | Total Request | Blocked |
|---|---|---|
| 2026-08-31 22:00 | 24,644 | 1 |
| 2026-08-31 17:00 | 21,029 | 1 |
| 2026-09-01 00:00 | 20,802 | 3 |
| 2026-08-26 18:00 | 20,795 | 9 |
| 2026-09-01 01:00 | 20,316 | 1 |
| 2026-08-26 22:00 | 18,214 | 6 |
| 2026-08-31 18:00 | 17,674 | 2 |
| 2026-08-24 22:00 | 16,361 | 0 |
| 2026-08-26 19:00 | 16,106 | 0 |
| 2026-08-31 23:00 | 15,658 | 8 |
| 2026-08-28 23:00 | 15,555 | 0 |
| 2026-08-28 22:00 | 14,842 | 0 |
| 2026-08-27 18:00 | 14,774 | 1 |
| 2026-08-24 19:00 | 14,491 | 9 |
| 2026-08-24 23:00 | 14,333 | 0 |
| 2026-08-27 21:00 | 14,314 | 0 |
| 2026-08-26 17:00 | 14,159 | 7 |
| 2026-08-26 21:00 | 14,049 | 1 |
| 2026-08-28 19:00 | 13,979 | 9 |
| 2026-08-27 17:00 | 13,745 | 0 |

### 20. IP x Attack Type Analysis

| IP | Attack Type | Count |
|---|---|---|
| 104.23.175.223 | null | 19 |
| 104.22.176.13 | null | 18 |
| 104.22.176.13 | scanner_behavior | 14 |
| 162.158.106.102 | scanner_behavior | 11 |
| 172.68.164.147 | null | 11 |
| 172.68.82.134 | null | 10 |
| 172.69.176.163 | null | 10 |
| 172.69.166.56 | null | 10 |
| 172.71.81.2 | null | 10 |
| 172.68.242.126 | null | 10 |
| 172.69.166.57 | null | 9 |
| 172.71.124.177 | null | 8 |
| 172.70.214.39 | null | 8 |
| 162.158.106.102 | null | 8 |
| 104.23.175.222 | null | 8 |
| 172.71.143.140 | null | 8 |
| 162.158.106.103 | null | 7 |
| 172.68.164.146 | null | 7 |
| 162.158.162.129 | null | 6 |
| 104.22.20.162 | null | 6 |

### 21. IP x Target URL Analysis

| IP | Target URL | Count |
|---|---|---|
| 172.71.143.140 | `/favicon.ico` | 8 |
| 172.68.82.134 | `/` | 8 |
| 172.70.214.39 | `/favicon.ico` | 8 |
| 104.23.175.223 | `/apple-touch-icon.png` | 6 |
| 104.22.20.162 | `/favicon.ico` | 6 |
| 172.69.89.152 | `/favicon.ico` | 6 |
| 104.23.175.223 | `/apple-touch-icon-precomposed.png` | 5 |
| 104.22.176.13 | `/` | 5 |
| 172.71.124.177 | `/intranet/login.php` | 5 |
| 172.71.81.2 | `/apple-touch-icon-precomposed.png` | 5 |
| 104.22.176.13 | `/assets/logo.png` | 4 |
| 172.68.164.147 | `/assets/logo.png` | 4 |
| 172.68.242.126 | `/assets/logo.png` | 4 |
| 172.69.166.56 | `/apple-touch-icon-precomposed.png` | 4 |
| 162.158.106.103 | `/apple-touch-icon.png` | 3 |
| 172.71.81.2 | `/apple-touch-icon.png` | 3 |
| 104.23.175.222 | `/apple-touch-icon-precomposed.png` | 3 |
| 172.68.164.147 | `/intranet/login.php` | 3 |
| 172.69.166.57 | `/apple-touch-icon.png` | 3 |
| 104.23.175.223 | `/assets/logo.png` | 3 |

### 22. Blocked -> 200 Pattern

_Requests with status 200 that have associated WAF rule matches (potential bypass)._

| IP | Path | Final Action | Plugin | Rule Type | Count |
|---|---|---|---|---|---|
| 104.22.176.13 | `/intranet/void.php` | null | null | null | 58,665 |
| 172.69.166.56 | `/intranet/void.php` | null | null | null | 29,023 |
| 172.69.166.57 | `/intranet/void.php` | null | null | null | 27,614 |
| 172.68.82.134 | `/intranet/void.php` | null | null | null | 20,413 |
| 104.23.175.223 | `/intranet/void.php` | null | null | null | 19,519 |
| 104.23.175.222 | `/intranet/void.php` | null | null | null | 19,147 |
| 104.22.176.13 | `/intranet/ajax.php` | null | null | null | 15,255 |
| 172.71.124.176 | `/intranet/void.php` | null | null | null | 13,991 |
| 162.158.88.154 | `/intranet/void.php` | null | null | null | 13,866 |
| 104.22.176.13 | `/intranet/index.php` | null | null | null | 13,557 |
| 172.71.124.177 | `/intranet/void.php` | null | null | null | 13,344 |
| 172.70.208.63 | `/intranet/void.php` | null | null | null | 13,080 |
| 162.158.88.155 | `/intranet/void.php` | null | null | null | 12,575 |
| 172.70.208.62 | `/intranet/void.php` | null | null | null | 12,477 |
| 172.68.164.146 | `/intranet/void.php` | null | null | null | 12,314 |
| 172.69.176.162 | `/intranet/void.php` | null | null | null | 12,234 |
| 172.68.164.147 | `/intranet/void.php` | null | null | null | 11,915 |
| 162.158.162.129 | `/intranet/void.php` | null | null | null | 11,854 |
| 162.158.162.128 | `/intranet/void.php` | null | null | null | 11,704 |
| 162.158.108.88 | `/intranet/void.php` | null | null | null | 11,130 |

### 23. Potential False Positive

_Requests blocked by WAF but returned HTTP 200 (may indicate false positive or test mode)._

_No potential false positives detected._

### 24. Potential Successful Attack

_Requests with status 200 that triggered WAF rules (attack payload may have reached backend)._

_No potential successful attacks detected._

### 25. Peak Hours Analysis

| Hour (WIB, UTC+7) | Total Request | Blocked |
|---|---|---|
| 00:00 | 5,819 | 1 |
| 01:00 | 1,865 | 8 |
| 02:00 | 665 | 0 |
| 03:00 | 1,430 | 6 |
| 04:00 | 850 | 4 |
| 05:00 | 1,665 | 2 |
| 06:00 | 3,366 | 3 |
| 07:00 | 9,840 | 4 |
| 08:00 | 67,538 | 13 |
| 09:00 | 85,091 | 14 |
| 10:00 | 93,006 | 13 |
| 11:00 | 77,752 | 21 |
| 12:00 | 28,305 | 14 |
| 13:00 | 73,616 | 23 |
| 14:00 | 94,807 | 11 |
| 15:00 | 73,940 | 17 |
| 16:00 | 70,888 | 28 |
| 17:00 | 54,600 | 7 |
| 18:00 | 35,672 | 3 |
| 19:00 | 26,004 | 13 |
| 20:00 | 22,041 | 7 |
| 21:00 | 25,874 | 27 |
| 22:00 | 14,806 | 11 |
| 23:00 | 13,508 | 35 |

**Peak Hour:** 14:00 WIB with 94,807 requests

### Peak Hours by Day

| Date | Peak Hour (WIB) | Total Request | Blocked |
|---|---|---|---|
| 2026-08-23 | 00:00 | 551 | 0 |
| 2026-08-24 | 14:00 | 16,361 | 0 |
| 2026-08-25 | 21:00 | 6,778 | 5 |
| 2026-08-26 | 10:00 | 20,795 | 9 |
| 2026-08-27 | 10:00 | 14,774 | 1 |
| 2026-08-28 | 15:00 | 15,555 | 0 |
| 2026-08-29 | 09:00 | 10,529 | 3 |
| 2026-08-30 | 10:00 | 1,604 | 0 |
| 2026-08-31 | 14:00 | 24,644 | 1 |


---

## ORS (ors.simgroup.co.id)

### 1-3. Total Request, Blocked Request & Block Rate

| Metric | Value |
|---|---|
| Total Request | 812,172 |
| Blocked Request | 2,092 |
| Block Rate | 0.26% |

### 4. Top Attack Type

| Attack Type | Count |
|---|---|
| null | 2,053 |
| scanner_behavior | 35 |
| other | 3 |
| arbitrary_file_reading | 1 |

### 5. Daily Trend WAF Request

| Date | Total Request | Blocked |
|---|---|---|
| 2026-08-23 | 5,533 | 25 |
| 2026-08-24 | 116,987 | 245 |
| 2026-08-25 | 26,994 | 50 |
| 2026-08-26 | 135,463 | 154 |
| 2026-08-27 | 147,636 | 212 |
| 2026-08-28 | 125,705 | 296 |
| 2026-08-29 | 94,380 | 298 |
| 2026-08-30 | 25,918 | 586 |
| 2026-08-31 | 133,556 | 226 |

### 6. Top 5 Attacking IP (by blocked requests)

| Rank | IP Address | Blocked Count |
|---|---|---|
| 1 | 34.65.238.115 | 277 |
| 2 | 34.182.181.161 | 207 |
| 3 | 51.79.229.143 | 82 |
| 4 | 184.72.121.156 | 79 |
| 5 | 54.209.60.63 | 69 |

### 7. Unique Attacking IP

**Unique Attacking IPs:** 678

### 8. Top Targeted URLs (by blocked requests)

| URL Path | Blocked Count |
|---|---|
| `/` | 216 |
| `/robots.txt` | 55 |
| `/auth/login` | 28 |
| `/wp-json/wp/v2/users` | 26 |
| `/api/recruitment/activity/_` | 20 |
| `/api/sourcing/approval-buffer/_` | 20 |
| `/home` | 19 |
| `/.git/config` | 18 |
| `/favicon.ico` | 15 |
| `/.env` | 15 |

### 9. Top Triggered Rules

| Rule ID | Plugin | Rule Type | Count |
|---|---|---|---|
| 20126311 | acl | null | 2,053 |
| 120047 | waf | scanner_behavior | 30 |
| 120081 | waf | scanner_behavior | 4 |
| 120075 | waf | other | 3 |
| 900904 | waf | arbitrary_file_reading | 1 |
| 113079 | waf | scanner_behavior | 1 |

### 10. Attack Severity Distribution (by WAF Plugin)

| WAF Plugin | Count |
|---|---|
| acl | 2,053 |
| waf | 39 |

### 11. Status Code Distribution

| Status Code | Count |
|---|---|
| 200 | 761,159 |
| 304 | 39,852 |
| 202 | 3,796 |
| 404 | 2,636 |
| 405 | 2,093 |
| 502 | 1,006 |
| 401 | 565 |
| 400 | 392 |
| 403 | 266 |
| 499 | 193 |
| 206 | 135 |
| 302 | 28 |
| 408 | 16 |
| 301 | 14 |
| 422 | 13 |
| 500 | 6 |
| 414 | 2 |

### 12. Top 10 Endpoints - Status 200

| Endpoint | Request Count |
|---|---|
| `/api/sourcing/activity/_` | 19,473 |
| `/api/auth/data` | 16,354 |
| `/api/access/modules` | 16,037 |
| `/api/sourcing/recruitment-applicant/_/master-city` | 11,439 |
| `/api/sourcing/recruitment-applicant/_/master-dom-city` | 11,227 |
| `/api/sourcing/approval-buffer/_` | 10,601 |
| `/api/sourcing/activity/_/master-city` | 10,581 |
| `/api/access/modules/sourcing/menus` | 9,748 |
| `/api/recruitment/activity/_` | 9,459 |
| `/api/sourcing/recruitment-applicant/_` | 9,244 |

### 13. Top 10 IP - Status 200

| IP Address | Request Count |
|---|---|
| 101.255.158.250 | 206,775 |
| 101.255.107.154 | 151,760 |
| 103.165.221.90 | 58,265 |
| 180.253.246.199 | 13,384 |
| 101.255.109.178 | 12,481 |
| 180.253.235.146 | 6,547 |
| 103.165.198.82 | 6,026 |
| 202.65.118.26 | 5,859 |
| 36.79.162.175 | 4,846 |
| 103.83.93.55 | 4,366 |

### 14. Top 10 User Agent

| User Agent | Count |
|---|---|
| Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gec... | 452,148 |
| Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gec... | 93,138 |
| Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gec... | 71,265 |
| Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, li... | 60,741 |
| Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, li... | 21,709 |
| Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, li... | 20,062 |
| Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:154.0) Gecko/20100101 Firefox/154.0 | 17,185 |
| Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gec... | 15,835 |
| Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, ... | 10,267 |
| Mozilla/5.0 (X11; CrOS x86_64 14541.0.0) AppleWebKit/537.36 (KHTML, like Geck... | 4,746 |

### 15. Sensitive / High-Risk Endpoint

| Endpoint | Total | Blocked | Errors (4xx/5xx) |
|---|---|---|---|
| `/api/sourcing/activity/_` | 19,509 | 0 | 32 |
| `/api/auth/data` | 16,871 | 3 | 517 |
| `/api/access/modules` | 16,048 | 2 | 11 |
| `/api/sourcing/recruitment-applicant/_/master-city` | 11,447 | 0 | 8 |
| `/api/sourcing/recruitment-applicant/_/master-dom-city` | 11,233 | 0 | 6 |
| `/api/sourcing/approval-buffer/_` | 10,672 | 20 | 71 |
| `/api/sourcing/activity/_/master-city` | 10,595 | 0 | 14 |
| `/api/sourcing/recruitment-applicant/_` | 9,996 | 0 | 26 |
| `/api/access/modules/sourcing/menus` | 9,763 | 4 | 15 |
| `/api/recruitment/activity/_` | 9,499 | 20 | 40 |
| `/api/sourcing/recruitment-applicant/_/master-dom-province` | 8,705 | 0 | 6 |
| `/api/sourcing/recruitment-applicant/_/master-position` | 8,657 | 0 | 2 |
| `/api/sourcing/activity/_/master-classification` | 8,559 | 0 | 14 |
| `/api/sourcing/recruitment-applicant/_/master-education-level` | 7,924 | 0 | 9 |
| `/api/sourcing/recruitment-applicant/_/master-status` | 7,923 | 0 | 8 |
| `/api/sourcing/recruitment-applicant/_/master-classification` | 7,917 | 0 | 8 |
| `/api/sourcing/activity/_/master-source` | 7,604 | 0 | 13 |
| `/api/sourcing/recruitment-buffer/_/master-dom-city` | 6,791 | 10 | 10 |
| `/api/sourcing/recruitment-applicant/_/master-education-city` | 6,736 | 0 | 15 |
| `/api/access/modules/recruitment/menus` | 6,190 | 3 | 10 |

### 16. Attack Type Trend

| Date | Attack Type | Count |
|---|---|---|
| 2026-08-23 | null | 25 |
| 2026-08-24 | null | 215 |
| 2026-08-24 | scanner_behavior | 29 |
| 2026-08-24 | other | 1 |
| 2026-08-25 | null | 50 |
| 2026-08-26 | null | 154 |
| 2026-08-27 | null | 209 |
| 2026-08-27 | scanner_behavior | 2 |
| 2026-08-27 | other | 1 |
| 2026-08-28 | null | 295 |
| 2026-08-28 | scanner_behavior | 1 |
| 2026-08-29 | null | 298 |
| 2026-08-30 | null | 585 |
| 2026-08-30 | arbitrary_file_reading | 1 |
| 2026-08-31 | null | 222 |
| 2026-08-31 | scanner_behavior | 3 |
| 2026-08-31 | other | 1 |

### 17. Suspicious Status 200

_Requests that matched WAF rules but still returned HTTP 200 (potential bypass or false negative)._

_No suspicious status 200 patterns detected._

### 18. 4xx / 5xx Anomaly

| Status Class | Count |
|---|---|
| 2xx | 765,090 |
| 3xx | 39,894 |
| 4xx | 6,176 |
| 5xx | 1,012 |

### 19. Attack Burst / Request Spike (Top 20 Busiest Hours)

| Hour (WIB) | Total Request | Blocked |
|---|---|---|
| 2026-08-28 00:00 | 17,369 | 7 |
| 2026-08-28 22:00 | 15,591 | 11 |
| 2026-08-27 18:00 | 13,613 | 9 |
| 2026-08-27 17:00 | 13,503 | 3 |
| 2026-08-27 22:00 | 13,037 | 18 |
| 2026-08-31 18:00 | 12,780 | 12 |
| 2026-09-01 00:00 | 12,615 | 24 |
| 2026-08-24 16:00 | 12,358 | 34 |
| 2026-08-24 18:00 | 11,776 | 22 |
| 2026-08-27 00:00 | 11,773 | 29 |
| 2026-08-27 21:00 | 11,630 | 42 |
| 2026-08-26 22:00 | 11,576 | 0 |
| 2026-08-31 17:00 | 11,555 | 10 |
| 2026-08-28 23:00 | 11,368 | 9 |
| 2026-08-29 00:00 | 11,364 | 1 |
| 2026-08-29 18:00 | 11,363 | 47 |
| 2026-08-31 22:00 | 11,112 | 51 |
| 2026-08-29 17:00 | 11,050 | 9 |
| 2026-08-28 01:00 | 10,995 | 12 |
| 2026-08-28 18:00 | 10,911 | 7 |

### 20. IP x Attack Type Analysis

| IP | Attack Type | Count |
|---|---|---|
| 34.65.238.115 | null | 277 |
| 34.182.181.161 | null | 207 |
| 51.79.229.143 | null | 82 |
| 184.72.121.156 | null | 79 |
| 54.209.60.63 | null | 69 |
| 54.175.74.27 | null | 51 |
| 107.23.198.238 | null | 34 |
| 103.84.193.221 | scanner_behavior | 33 |
| 54.86.66.252 | null | 31 |
| 143.110.217.244 | null | 31 |
| 184.72.115.35 | null | 29 |
| 34.97.40.11 | null | 24 |
| 64.236.207.227 | null | 24 |
| 146.70.194.238 | null | 21 |
| 82.102.18.220 | null | 21 |
| 34.86.11.207 | null | 21 |
| 34.20.182.41 | null | 19 |
| 138.185.145.78 | null | 17 |
| 159.223.56.29 | null | 17 |
| 168.63.79.147 | null | 14 |

### 21. IP x Target URL Analysis

| IP | Target URL | Count |
|---|---|---|
| 107.23.198.238 | `/robots.txt` | 34 |
| 144.172.94.4 | `/` | 12 |
| 5.188.86.234 | `/wp-login.php` | 12 |
| 34.182.181.161 | `/` | 9 |
| 34.65.238.115 | `/` | 6 |
| 184.72.121.156 | `/auth/login` | 5 |
| 51.79.229.143 | `/` | 5 |
| 184.72.121.156 | `/_/recruitment/member/_` | 5 |
| 54.209.60.63 | `/home` | 4 |
| 54.175.74.27 | `/_/sourcing/dash/_` | 4 |
| 104.30.167.164 | `/` | 4 |
| 103.60.62.190 | `/_/recruitment/activity/_` | 4 |
| 144.172.98.217 | `/` | 4 |
| 184.72.121.156 | `/_/sourcing/activity/_` | 4 |
| 143.110.217.244 | `/` | 4 |
| 192.178.7.104 | `/home` | 4 |
| 192.178.7.105 | `/home` | 4 |
| 146.70.194.238 | `/` | 3 |
| 51.79.229.143 | `/blog/wp-includes/wlwmanifest.xml` | 3 |
| 51.79.229.143 | `/test/wp-includes/wlwmanifest.xml` | 3 |

### 22. Blocked -> 200 Pattern

_Requests with status 200 that have associated WAF rule matches (potential bypass)._

| IP | Path | Final Action | Plugin | Rule Type | Count |
|---|---|---|---|---|---|
| 101.255.158.250 | `/api/sourcing/activity/_` | null | null | null | 12,272 |
| 101.255.158.250 | `/api/sourcing/activity/_/master-city` | null | null | null | 6,296 |
| 101.255.158.250 | `/api/sourcing/recruitment-applicant/_/master-city` | null | null | null | 5,890 |
| 101.255.158.250 | `/api/sourcing/recruitment-applicant/_/master-dom-city` | null | null | null | 5,307 |
| 101.255.158.250 | `/api/sourcing/activity/_/master-classification` | null | null | null | 4,854 |
| 101.255.107.154 | `/api/recruitment/activity/_` | null | null | null | 4,825 |
| 101.255.158.250 | `/api/sourcing/recruitment-applicant/_` | null | null | null | 4,737 |
| 101.255.107.154 | `/api/sourcing/approval-buffer/_` | null | null | null | 4,386 |
| 101.255.158.250 | `/api/sourcing/activity/_/master-source` | null | null | null | 4,264 |
| 101.255.158.250 | `/api/sourcing/recruitment-applicant/_/master-dom-province` | null | null | null | 4,248 |
| 101.255.158.250 | `/api/sourcing/recruitment-applicant/_/master-position` | null | null | null | 4,173 |
| 101.255.158.250 | `/api/sourcing/recruitment-applicant/_/master-education-level` | null | null | null | 3,691 |
| 101.255.158.250 | `/api/sourcing/recruitment-applicant/_/master-classification` | null | null | null | 3,689 |
| 101.255.158.250 | `/api/sourcing/recruitment-applicant/_/master-status` | null | null | null | 3,688 |
| 101.255.158.250 | `/api/sourcing/recruitment-applicant/_/master-education-city` | null | null | null | 3,459 |
| 101.255.107.154 | `/api/auth/data` | null | null | null | 3,095 |
| 101.255.107.154 | `/api/recruitment/activity/_/client-branch` | null | null | null | 3,061 |
| 101.255.107.154 | `/api/access/modules` | null | null | null | 3,052 |
| 101.255.107.154 | `/api/recruitment/activity/_/client` | null | null | null | 2,960 |
| 101.255.158.250 | `/api/auth/data` | null | null | null | 2,849 |

### 23. Potential False Positive

_Requests blocked by WAF but returned HTTP 200 (may indicate false positive or test mode)._

_No potential false positives detected._

### 24. Potential Successful Attack

_Requests with status 200 that triggered WAF rules (attack payload may have reached backend)._

_No potential successful attacks detected._

### 25. Peak Hours Analysis

| Hour (WIB, UTC+7) | Total Request | Blocked |
|---|---|---|
| 00:00 | 8,492 | 62 |
| 01:00 | 3,277 | 48 |
| 02:00 | 2,300 | 23 |
| 03:00 | 1,893 | 10 |
| 04:00 | 2,179 | 27 |
| 05:00 | 4,093 | 47 |
| 06:00 | 9,102 | 4 |
| 07:00 | 11,358 | 7 |
| 08:00 | 59,590 | 109 |
| 09:00 | 68,902 | 44 |
| 10:00 | 71,904 | 107 |
| 11:00 | 54,928 | 248 |
| 12:00 | 32,173 | 92 |
| 13:00 | 60,779 | 378 |
| 14:00 | 70,068 | 135 |
| 15:00 | 52,194 | 83 |
| 16:00 | 69,163 | 73 |
| 17:00 | 53,594 | 95 |
| 18:00 | 29,916 | 73 |
| 19:00 | 25,130 | 121 |
| 20:00 | 27,422 | 113 |
| 21:00 | 33,518 | 124 |
| 22:00 | 34,830 | 17 |
| 23:00 | 25,367 | 52 |

**Peak Hour:** 10:00 WIB with 71,904 requests

### Peak Hours by Day

| Date | Peak Hour (WIB) | Total Request | Blocked |
|---|---|---|---|
| 2026-08-23 | 01:00 | 1,023 | 4 |
| 2026-08-24 | 08:00 | 12,358 | 34 |
| 2026-08-25 | 22:00 | 4,678 | 0 |
| 2026-08-26 | 16:00 | 11,773 | 29 |
| 2026-08-27 | 16:00 | 17,369 | 7 |
| 2026-08-28 | 14:00 | 15,591 | 11 |
| 2026-08-29 | 10:00 | 11,363 | 47 |
| 2026-08-30 | 22:00 | 3,915 | 6 |
| 2026-08-31 | 10:00 | 12,780 | 12 |


---

## GAWE (www.gawe.id)

### 1-3. Total Request, Blocked Request & Block Rate

| Metric | Value |
|---|---|
| Total Request | 353,183 |
| Blocked Request | 38,184 |
| Block Rate | 10.81% |

### 4. Top Attack Type

| Attack Type | Count |
|---|---|
| null | 38,122 |
| scanner_behavior | 56 |
| sqli | 6 |

### 5. Daily Trend WAF Request

| Date | Total Request | Blocked |
|---|---|---|
| 2026-08-23 | 5,469 | 603 |
| 2026-08-24 | 40,213 | 3,273 |
| 2026-08-25 | 33,110 | 3,644 |
| 2026-08-26 | 49,722 | 5,395 |
| 2026-08-27 | 50,661 | 5,347 |
| 2026-08-28 | 46,325 | 5,008 |
| 2026-08-29 | 44,912 | 5,299 |
| 2026-08-30 | 32,573 | 5,324 |
| 2026-08-31 | 50,198 | 4,291 |

### 6. Top 5 Attacking IP (by blocked requests)

| Rank | IP Address | Blocked Count |
|---|---|---|
| 1 | 193.202.84.104 | 3,270 |
| 2 | 51.222.8.170 | 1,530 |
| 3 | 138.185.145.78 | 1,479 |
| 4 | 91.194.91.202 | 1,462 |
| 5 | 208.82.118.98 | 1,242 |

### 7. Unique Attacking IP

**Unique Attacking IPs:** 2,785

### 8. Top Targeted URLs (by blocked requests)

| URL Path | Blocked Count |
|---|---|
| `/` | 30,334 |
| `/favicon.ico` | 839 |
| `/apple-touch-icon.png` | 391 |
| `/apple-touch-icon-precomposed.png` | 384 |
| `/apple-touch-icon-120x120-precomposed.png` | 374 |
| `/apple-touch-icon-120x120.png` | 374 |
| `/robots.txt` | 266 |
| `/userfiles/logo_sim.png` | 219 |
| `/wp-login.php` | 149 |
| `/login` | 141 |

### 9. Top Triggered Rules

| Rule ID | Plugin | Rule Type | Count |
|---|---|---|---|
| 20126311 | acl | null | 38,122 |
| 117090 | waf | scanner_behavior | 56 |
| 860021 | sema | sqli | 2 |
| 860003 | sema | sqli | 2 |
| 860011 | sema | sqli | 2 |

### 10. Attack Severity Distribution (by WAF Plugin)

| WAF Plugin | Count |
|---|---|
| acl | 38,122 |
| waf | 56 |
| sema | 6 |

### 11. Status Code Distribution

| Status Code | Count |
|---|---|
| 200 | 299,748 |
| 405 | 38,208 |
| 401 | 5,756 |
| 202 | 3,330 |
| 304 | 2,567 |
| 302 | 2,332 |
| 422 | 900 |
| 206 | 172 |
| 404 | 81 |
| 499 | 27 |
| 403 | 23 |
| 301 | 17 |
| 400 | 13 |
| 500 | 8 |
| 502 | 1 |

### 12. Top 10 Endpoints - Status 200

| Endpoint | Request Count |
|---|---|
| `/` | 14,772 |
| `/api/front` | 12,893 |
| `/api/access/modules/app/menus` | 8,334 |
| `/api/auth/data` | 8,047 |
| `/api/access/modules` | 8,015 |
| `/api/app/data/information/master-dom-city` | 7,703 |
| `/api/front/master-city` | 6,165 |
| `/api/app/home/_/availability` | 5,954 |
| `/api/app/home/_/application` | 5,930 |
| `/api/app/home/_/notification` | 5,922 |

### 13. Top 10 IP - Status 200

| IP Address | Request Count |
|---|---|
| 103.245.16.18 | 2,292 |
| 114.79.4.173 | 1,070 |
| 36.50.56.212 | 1,065 |
| 103.189.110.48 | 954 |
| 222.124.191.185 | 931 |
| 182.10.161.100 | 881 |
| 103.156.16.186 | 873 |
| 36.65.249.121 | 845 |
| 157.85.210.230 | 833 |
| 103.28.116.212 | 803 |

### 14. Top 10 User Agent

| User Agent | Count |
|---|---|
| Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chr... | 108,501 |
| Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gec... | 38,459 |
| Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chr... | 9,673 |
| Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Sam... | 8,790 |
| Dart/3.3 (dart:io) | 6,792 |
| Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chr... | 5,857 |
| Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome... | 5,734 |
| Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gec... | 4,856 |
| Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chr... | 4,119 |
| Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gec... | 3,655 |

### 15. Sensitive / High-Risk Endpoint

| Endpoint | Total | Blocked | Errors (4xx/5xx) |
|---|---|---|---|
| `/api/auth/data` | 13,804 | 1 | 5,756 |
| `/api/front` | 12,893 | 0 | 0 |
| `/api/access/modules/app/menus` | 8,336 | 0 | 2 |
| `/api/access/modules` | 8,018 | 1 | 2 |
| `/api/app/data/information/master-dom-city` | 7,704 | 0 | 1 |
| `/api/front/master-city` | 6,165 | 0 | 0 |
| `/api/app/home/_/availability` | 5,955 | 0 | 1 |
| `/api/app/home/_/application` | 5,930 | 0 | 0 |
| `/api/app/home/_/notification` | 5,922 | 0 | 0 |
| `/api/app/data/information/master-education-institution` | 5,667 | 0 | 0 |
| `/api/content/information` | 5,573 | 0 | 0 |
| `/api/contact` | 5,567 | 0 | 0 |
| `/api/app/vacancy/search` | 5,223 | 0 | 0 |
| `/api/app/data/profile/_/specifications` | 5,071 | 0 | 1 |
| `/api/app/data/information/master-dom-province` | 4,889 | 0 | 1 |
| `/api/front/master-province` | 4,884 | 0 | 0 |
| `/api/app/application/process/master-ol-status` | 4,566 | 0 | 0 |
| `/api/app/data/profile/_/specifications/master-specification` | 4,157 | 0 | 0 |
| `/api/app/data/information/_` | 3,873 | 0 | 7 |
| `/api/app/data/information/master-education-field` | 3,698 | 0 | 0 |

### 16. Attack Type Trend

| Date | Attack Type | Count |
|---|---|---|
| 2026-08-23 | null | 603 |
| 2026-08-24 | null | 3,245 |
| 2026-08-24 | scanner_behavior | 28 |
| 2026-08-25 | null | 3,617 |
| 2026-08-25 | scanner_behavior | 27 |
| 2026-08-26 | null | 5,394 |
| 2026-08-26 | scanner_behavior | 1 |
| 2026-08-27 | null | 5,347 |
| 2026-08-28 | null | 5,008 |
| 2026-08-29 | null | 5,299 |
| 2026-08-30 | null | 5,324 |
| 2026-08-31 | null | 4,285 |
| 2026-08-31 | sqli | 6 |

### 17. Suspicious Status 200

_Requests that matched WAF rules but still returned HTTP 200 (potential bypass or false negative)._

_No suspicious status 200 patterns detected._

### 18. 4xx / 5xx Anomaly

| Status Class | Count |
|---|---|
| 2xx | 303,250 |
| 4xx | 45,008 |
| 3xx | 4,916 |
| 5xx | 9 |

### 19. Attack Burst / Request Spike (Top 20 Busiest Hours)

| Hour (WIB) | Total Request | Blocked |
|---|---|---|
| 2026-08-31 20:00 | 4,914 | 734 |
| 2026-08-31 19:00 | 4,764 | 203 |
| 2026-08-31 18:00 | 4,744 | 299 |
| 2026-08-29 06:00 | 4,090 | 313 |
| 2026-09-01 01:00 | 4,015 | 345 |
| 2026-08-26 22:00 | 3,818 | 319 |
| 2026-08-29 21:00 | 3,807 | 202 |
| 2026-08-29 00:00 | 3,769 | 199 |
| 2026-08-28 05:00 | 3,727 | 168 |
| 2026-08-27 02:00 | 3,655 | 141 |
| 2026-08-29 22:00 | 3,633 | 243 |
| 2026-08-31 22:00 | 3,527 | 371 |
| 2026-08-31 06:00 | 3,418 | 324 |
| 2026-08-27 21:00 | 3,378 | 189 |
| 2026-08-27 18:00 | 3,324 | 268 |
| 2026-08-31 17:00 | 3,284 | 172 |
| 2026-08-27 23:00 | 3,276 | 290 |
| 2026-08-29 20:00 | 3,270 | 233 |
| 2026-08-27 20:00 | 3,168 | 231 |
| 2026-08-26 20:00 | 3,139 | 237 |

### 20. IP x Attack Type Analysis

| IP | Attack Type | Count |
|---|---|---|
| 193.202.84.104 | null | 3,270 |
| 51.222.8.170 | null | 1,530 |
| 138.185.145.78 | null | 1,479 |
| 91.194.91.202 | null | 1,462 |
| 208.82.118.98 | null | 1,242 |
| 192.227.170.202 | null | 1,139 |
| 190.92.174.183 | null | 1,105 |
| 154.57.197.145 | null | 783 |
| 136.85.0.12 | null | 696 |
| 177.104.161.142 | null | 608 |
| 146.75.132.29 | null | 578 |
| 213.229.107.29 | null | 568 |
| 146.75.132.28 | null | 530 |
| 146.75.132.26 | null | 514 |
| 185.151.197.85 | null | 476 |
| 192.249.112.18 | null | 459 |
| 47.93.192.43 | null | 453 |
| 34.139.36.64 | null | 445 |
| 82.223.118.166 | null | 442 |
| 103.215.74.213 | null | 441 |

### 21. IP x Target URL Analysis

| IP | Target URL | Count |
|---|---|---|
| 193.202.84.104 | `/` | 2,924 |
| 51.222.8.170 | `/` | 1,514 |
| 138.185.145.78 | `/` | 1,479 |
| 91.194.91.202 | `/` | 1,382 |
| 208.82.118.98 | `/` | 1,226 |
| 192.227.170.202 | `/` | 1,107 |
| 190.92.174.183 | `/` | 1,105 |
| 154.57.197.145 | `/` | 751 |
| 177.104.161.142 | `/` | 562 |
| 213.229.107.29 | `/` | 520 |
| 185.151.197.85 | `/` | 476 |
| 192.249.112.18 | `/` | 459 |
| 82.223.118.166 | `/` | 442 |
| 103.215.74.213 | `/` | 441 |
| 47.93.192.43 | `/` | 421 |
| 136.85.0.12 | `/` | 367 |
| 167.99.82.126 | `/` | 344 |
| 185.50.25.47 | `/` | 341 |
| 68.155.159.216 | `/` | 339 |
| 89.201.7.169 | `/` | 323 |

### 22. Blocked -> 200 Pattern

_Requests with status 200 that have associated WAF rule matches (potential bypass)._

| IP | Path | Final Action | Plugin | Rule Type | Count |
|---|---|---|---|---|---|
| 103.245.16.18 | `/` | null | null | null | 2,292 |
| 222.124.191.185 | `/` | null | null | null | 927 |
| 114.5.241.252 | `/` | null | null | null | 635 |
| 182.10.161.100 | `/` | null | null | null | 621 |
| 182.1.164.88 | `/` | null | null | null | 514 |
| 114.79.2.65 | `/` | null | null | null | 375 |
| 114.79.2.2 | `/` | null | null | null | 353 |
| 182.9.8.78 | `/` | null | null | null | 326 |
| 103.148.196.94 | `/` | null | null | null | 287 |
| 118.96.201.157 | `/` | null | null | null | 245 |
| 114.79.0.204 | `/` | null | null | null | 202 |
| 103.115.20.234 | `/` | null | null | null | 193 |
| 182.3.45.3 | `/` | null | null | null | 171 |
| 114.8.206.102 | `/` | null | null | null | 165 |
| 140.213.58.139 | `/` | null | null | null | 151 |
| 182.9.34.235 | `/` | null | null | null | 143 |
| 114.122.25.59 | `/` | null | null | null | 130 |
| 103.9.125.83 | `/api/front` | null | null | null | 117 |
| 157.20.252.13 | `/` | null | null | null | 115 |
| 114.10.118.21 | `/api/app/data/profile/_/specifications/master-specification` | null | null | null | 114 |

### 23. Potential False Positive

_Requests blocked by WAF but returned HTTP 200 (may indicate false positive or test mode)._

_No potential false positives detected._

### 24. Potential Successful Attack

_Requests with status 200 that triggered WAF rules (attack payload may have reached backend)._

_No potential successful attacks detected._

### 25. Peak Hours Analysis

| Hour (WIB, UTC+7) | Total Request | Blocked |
|---|---|---|
| 00:00 | 14,522 | 1,727 |
| 01:00 | 6,757 | 1,578 |
| 02:00 | 4,974 | 1,282 |
| 03:00 | 3,917 | 1,188 |
| 04:00 | 4,349 | 1,402 |
| 05:00 | 5,837 | 1,783 |
| 06:00 | 7,881 | 1,153 |
| 07:00 | 9,932 | 1,288 |
| 08:00 | 14,625 | 1,609 |
| 09:00 | 18,114 | 1,310 |
| 10:00 | 21,503 | 1,866 |
| 11:00 | 21,538 | 1,876 |
| 12:00 | 21,194 | 2,123 |
| 13:00 | 19,766 | 1,321 |
| 14:00 | 21,347 | 1,796 |
| 15:00 | 19,133 | 1,476 |
| 16:00 | 18,928 | 1,656 |
| 17:00 | 19,426 | 1,637 |
| 18:00 | 19,938 | 1,032 |
| 19:00 | 15,023 | 1,657 |
| 20:00 | 18,897 | 1,777 |
| 21:00 | 17,739 | 1,885 |
| 22:00 | 15,705 | 1,696 |
| 23:00 | 12,138 | 2,066 |

**Peak Hour:** 11:00 WIB with 21,538 requests

### Peak Hours by Day

| Date | Peak Hour (WIB) | Total Request | Blocked |
|---|---|---|---|
| 2026-08-23 | 01:00 | 1,289 | 85 |
| 2026-08-24 | 09:00 | 2,996 | 69 |
| 2026-08-25 | 10:00 | 2,696 | 141 |
| 2026-08-26 | 14:00 | 3,818 | 319 |
| 2026-08-27 | 21:00 | 3,727 | 168 |
| 2026-08-28 | 22:00 | 4,090 | 313 |
| 2026-08-29 | 13:00 | 3,807 | 202 |
| 2026-08-30 | 22:00 | 3,418 | 324 |
| 2026-08-31 | 12:00 | 4,914 | 734 |


---

## ERP (erp.simgroup.co.id)

### 1-3. Total Request, Blocked Request & Block Rate

| Metric | Value |
|---|---|
| Total Request | 1,818,843 |
| Blocked Request | 10,208 |
| Block Rate | 0.56% |

### 4. Top Attack Type

| Attack Type | Count |
|---|---|
| null | 10,161 |
| scanner_behavior | 37 |
| sqli | 6 |
| other | 2 |
| arbitrary_file_reading | 2 |

### 5. Daily Trend WAF Request

| Date | Total Request | Blocked |
|---|---|---|
| 2026-08-23 | 2,570 | 519 |
| 2026-08-24 | 253,111 | 948 |
| 2026-08-25 | 45,770 | 511 |
| 2026-08-26 | 390,252 | 1,295 |
| 2026-08-27 | 306,184 | 1,288 |
| 2026-08-28 | 275,582 | 1,522 |
| 2026-08-29 | 93,678 | 3,053 |
| 2026-08-30 | 47,983 | 636 |
| 2026-08-31 | 403,713 | 436 |

### 6. Top 5 Attacking IP (by blocked requests)

| Rank | IP Address | Blocked Count |
|---|---|---|
| 1 | 20.220.10.235 | 827 |
| 2 | 158.23.147.79 | 672 |
| 3 | 34.125.101.215 | 508 |
| 4 | 195.178.110.135 | 489 |
| 5 | 103.215.74.185 | 474 |

### 7. Unique Attacking IP

**Unique Attacking IPs:** 374

### 8. Top Targeted URLs (by blocked requests)

| URL Path | Blocked Count |
|---|---|
| `/` | 465 |
| `/robots.txt` | 80 |
| `/wp-login.php` | 77 |
| `/index.zul` | 66 |
| `/blog/` | 60 |
| `/wordpress/` | 60 |
| `/wp/` | 60 |
| `/.env` | 54 |
| `/wp-content/plugins/hellopress/wp_filemanager.php` | 46 |
| `/this_is_a_new_hello_world.php` | 44 |

### 9. Top Triggered Rules

| Rule ID | Plugin | Rule Type | Count |
|---|---|---|---|
| 20126311 | acl | null | 10,161 |
| 120047 | waf | scanner_behavior | 29 |
| 117090 | waf | scanner_behavior | 4 |
| 120081 | waf | scanner_behavior | 3 |
| 860003 | sema | sqli | 2 |
| 860011 | sema | sqli | 2 |
| 900904 | waf | arbitrary_file_reading | 2 |
| 860021 | sema | sqli | 2 |
| 120075 | waf | other | 2 |
| 113079 | waf | scanner_behavior | 1 |

### 10. Attack Severity Distribution (by WAF Plugin)

| WAF Plugin | Count |
|---|---|
| acl | 10,161 |
| waf | 41 |
| sema | 6 |

### 11. Status Code Distribution

| Status Code | Count |
|---|---|
| 200 | 1,674,979 |
| 304 | 115,792 |
| 405 | 10,208 |
| 504 | 7,531 |
| 499 | 5,631 |
| 404 | 2,830 |
| 410 | 1,279 |
| 206 | 409 |
| 502 | 80 |
| 400 | 42 |
| 301 | 31 |
| 500 | 12 |
| 201 | 11 |
| 204 | 4 |
| 408 | 2 |
| 401 | 2 |

### 12. Top 10 Endpoints - Status 200

| Endpoint | Request Count |
|---|---|
| `/zkau/comet` | 1,003,762 |
| `/zkau` | 314,639 |
| `/ADInterface/services/ModelADService` | 18,438 |
| `/zkau/comet;jsessionid=E7B491DBAAC7E0AA7E7A8901BE8C3E4A` | 7,079 |
| `/zkau/web/8914214/zul/html/fileupload.html.dsp` | 6,235 |
| `/zkau/comet;jsessionid=39C78766258347079891DF91B1FA19C0` | 4,392 |
| `/zkau/comet;jsessionid=04A676A9B354797314543B557CF2C75B` | 3,921 |
| `/zkau/comet;jsessionid=485765CFC20F84739EDC2A93E3584DB8` | 3,796 |
| `/zkau/comet;jsessionid=8F2841466CBC1EAF6512A583E18CFDC4` | 3,766 |
| `/zkau/comet;jsessionid=11DEBE9F913D90BAE5E85EC67B24B614` | 3,701 |

### 13. Top 10 IP - Status 200

| IP Address | Request Count |
|---|---|
| 101.255.109.178 | 1,003,790 |
| 101.255.158.250 | 148,412 |
| 103.118.102.146 | 92,387 |
| 115.124.64.134 | 75,801 |
| 103.165.198.82 | 25,236 |
| 103.136.57.179 | 18,794 |
| 182.253.38.226 | 18,031 |
| 149.129.217.38 | 17,839 |
| 103.136.58.110 | 17,492 |
| 157.85.202.37 | 17,207 |

### 14. Top 10 User Agent

| User Agent | Count |
|---|---|
| Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gec... | 937,975 |
| Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:154.0) Gecko/20100101 Firefox/154.0 | 238,170 |
| Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gec... | 220,577 |
| Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gec... | 85,147 |
| Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, ... | 78,697 |
| Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, li... | 67,992 |
| Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, ... | 36,899 |
| Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, li... | 23,886 |
| Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, li... | 19,616 |
| GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.33 | 18,622 |

### 15. Sensitive / High-Risk Endpoint

| Endpoint | Total | Blocked | Errors (4xx/5xx) |
|---|---|---|---|
| `/zkau/web/8914214/zul/html/fileupload.html.dsp` | 7,156 | 4 | 921 |
| `/zkau/upload` | 3,324 | 4 | 36 |
| `/theme/adempiere/images/login-box-header.png` | 1,671 | 0 | 1 |
| `/theme/adempiere/images/login-box-bg.png` | 1,670 | 0 | 0 |
| `/theme/adempiere/images/login-box-footer.png` | 1,668 | 0 | 0 |
| `/saiku/rest/saiku/admin/discover` | 198 | 0 | 0 |
| `/saiku/rest/saiku/admin/repository2` | 196 | 0 | 0 |
| `/zkau/upload;jsessionid=E7B491DBAAC7E0AA7E7A8901BE8C3E4A` | 95 | 0 | 0 |
| `/zkau/web/8914214/js/ext/timeplot/api/styles/timeplot-bundle.css` | 92 | 0 | 0 |
| `/wp-login.php` | 77 | 77 | 77 |
| `/.env` | 54 | 54 | 54 |
| `/wp-content/plugins/hellopress/wp_filemanager.php` | 46 | 46 | 46 |
| `/wp-json/batch/v1` | 45 | 40 | 45 |
| `/zkau/upload;jsessionid=F28AC59946B1E9F347C0F73BAD0AF396` | 44 | 0 | 0 |
| `/this_is_a_new_hello_world.php` | 44 | 44 | 44 |
| `/blog/wp-json/batch/v1` | 42 | 42 | 42 |
| `/wordpress/wp-json/batch/v1` | 42 | 42 | 42 |
| `/api/graphql` | 42 | 42 | 42 |
| `/z9x8c7v6b5-debug-trigger-erp.simgroup.co.id` | 36 | 36 | 36 |
| `/saiku/rest/saiku/admin/discover/Goodwill ERP/Dashboard SIM/Dashboard SIM/Cash Position/metadata` | 34 | 0 | 0 |

### 16. Attack Type Trend

| Date | Attack Type | Count |
|---|---|---|
| 2026-08-23 | null | 518 |
| 2026-08-23 | scanner_behavior | 1 |
| 2026-08-24 | null | 918 |
| 2026-08-24 | scanner_behavior | 29 |
| 2026-08-24 | other | 1 |
| 2026-08-25 | null | 509 |
| 2026-08-25 | scanner_behavior | 2 |
| 2026-08-26 | null | 1,293 |
| 2026-08-26 | scanner_behavior | 2 |
| 2026-08-27 | null | 1,285 |
| 2026-08-27 | scanner_behavior | 2 |
| 2026-08-27 | other | 1 |
| 2026-08-28 | null | 1,521 |
| 2026-08-28 | scanner_behavior | 1 |
| 2026-08-29 | null | 3,053 |
| 2026-08-30 | null | 634 |
| 2026-08-30 | arbitrary_file_reading | 2 |
| 2026-08-31 | null | 430 |
| 2026-08-31 | sqli | 6 |

### 17. Suspicious Status 200

_Requests that matched WAF rules but still returned HTTP 200 (potential bypass or false negative)._

_No suspicious status 200 patterns detected._

### 18. 4xx / 5xx Anomaly

| Status Class | Count |
|---|---|
| 2xx | 1,675,403 |
| 3xx | 115,823 |
| 4xx | 19,994 |
| 5xx | 7,623 |

### 19. Attack Burst / Request Spike (Top 20 Busiest Hours)

| Hour (WIB) | Total Request | Blocked |
|---|---|---|
| 2026-08-26 17:00 | 51,364 | 2 |
| 2026-08-31 23:00 | 49,678 | 8 |
| 2026-09-01 00:00 | 45,880 | 2 |
| 2026-08-31 17:00 | 44,231 | 230 |
| 2026-08-26 18:00 | 43,779 | 174 |
| 2026-08-31 22:00 | 42,803 | 7 |
| 2026-08-26 22:00 | 41,272 | 17 |
| 2026-08-26 23:00 | 40,975 | 11 |
| 2026-08-26 19:00 | 40,366 | 6 |
| 2026-08-28 23:00 | 40,315 | 319 |
| 2026-08-27 00:00 | 40,006 | 115 |
| 2026-08-28 22:00 | 39,975 | 298 |
| 2026-08-31 18:00 | 38,649 | 2 |
| 2026-08-31 19:00 | 37,115 | 121 |
| 2026-08-28 00:00 | 36,481 | 11 |
| 2026-08-27 17:00 | 33,128 | 340 |
| 2026-08-27 22:00 | 32,904 | 2 |
| 2026-08-27 19:00 | 32,185 | 28 |
| 2026-08-27 18:00 | 31,834 | 111 |
| 2026-08-24 22:00 | 30,646 | 32 |

### 20. IP x Attack Type Analysis

| IP | Attack Type | Count |
|---|---|---|
| 20.220.10.235 | null | 827 |
| 158.23.147.79 | null | 672 |
| 34.125.101.215 | null | 508 |
| 195.178.110.135 | null | 489 |
| 103.215.74.185 | null | 474 |
| 20.104.104.62 | null | 336 |
| 34.125.155.142 | null | 277 |
| 15.152.81.34 | null | 277 |
| 35.196.109.4 | null | 231 |
| 20.151.129.194 | null | 230 |
| 4.205.62.107 | null | 229 |
| 185.177.72.67 | null | 229 |
| 20.48.251.3 | null | 229 |
| 34.139.196.66 | null | 218 |
| 20.48.250.41 | null | 218 |
| 35.229.25.28 | null | 185 |
| 20.169.16.7 | null | 183 |
| 136.108.90.97 | null | 173 |
| 172.182.200.96 | null | 167 |
| 68.155.154.236 | null | 167 |

### 21. IP x Target URL Analysis

| IP | Target URL | Count |
|---|---|---|
| 103.215.74.185 | `/` | 64 |
| 195.178.110.135 | `/` | 61 |
| 193.202.84.104 | `/index.zul` | 46 |
| 5.188.86.234 | `/wp-login.php` | 44 |
| 149.88.107.53 | `/zkau;jsessionid=EB22A5122088020D80624FDF43FE4CD1` | 31 |
| 195.178.110.135 | `/wordpress/` | 30 |
| 103.215.74.185 | `/blog/` | 30 |
| 195.178.110.135 | `/blog/` | 30 |
| 195.178.110.135 | `/wp/` | 30 |
| 103.215.74.185 | `/wp/` | 30 |
| 103.215.74.185 | `/wordpress/` | 30 |
| 193.202.84.104 | `/` | 27 |
| 103.215.74.185 | `/blog/wp-json/batch/v1` | 21 |
| 103.215.74.185 | `/wordpress/wp-json/batch/v1` | 21 |
| 195.178.110.135 | `/wordpress/wp-json/batch/v1` | 21 |
| 195.178.110.135 | `/blog/wp-json/batch/v1` | 21 |
| 195.178.110.135 | `/wp-json/batch/v1` | 16 |
| 103.215.74.185 | `/index.php` | 15 |
| 195.178.110.135 | `/index.php` | 15 |
| 195.178.110.135 | `/blog/index.php` | 14 |

### 22. Blocked -> 200 Pattern

_Requests with status 200 that have associated WAF rule matches (potential bypass)._

| IP | Path | Final Action | Plugin | Rule Type | Count |
|---|---|---|---|---|---|
| 101.255.109.178 | `/zkau/comet` | null | null | null | 614,180 |
| 101.255.109.178 | `/zkau` | null | null | null | 190,800 |
| 101.255.158.250 | `/zkau/comet` | null | null | null | 97,601 |
| 103.118.102.146 | `/zkau/comet` | null | null | null | 60,942 |
| 115.124.64.134 | `/zkau/comet` | null | null | null | 50,314 |
| 101.255.158.250 | `/zkau` | null | null | null | 30,542 |
| 103.165.198.82 | `/zkau/comet` | null | null | null | 23,106 |
| 149.129.217.38 | `/ADInterface/services/ModelADService` | null | null | null | 17,839 |
| 115.124.64.134 | `/zkau` | null | null | null | 16,793 |
| 103.118.102.146 | `/zkau` | null | null | null | 16,294 |
| 182.253.38.226 | `/zkau/comet` | null | null | null | 15,052 |
| 103.136.57.179 | `/zkau/comet` | null | null | null | 10,492 |
| 101.255.107.154 | `/zkau/comet` | null | null | null | 10,286 |
| 157.85.202.37 | `/zkau/comet` | null | null | null | 10,111 |
| 103.136.58.110 | `/zkau/comet` | null | null | null | 9,776 |
| 101.255.109.178 | `/zkau/comet;jsessionid=E7B491DBAAC7E0AA7E7A8901BE8C3E4A` | null | null | null | 7,079 |
| 103.136.57.179 | `/zkau` | null | null | null | 6,895 |
| 119.235.223.19 | `/zkau/comet` | null | null | null | 4,640 |
| 101.255.109.178 | `/zkau/comet;jsessionid=39C78766258347079891DF91B1FA19C0` | null | null | null | 4,392 |
| 103.165.58.74 | `/zkau/comet` | null | null | null | 4,168 |

### 23. Potential False Positive

_Requests blocked by WAF but returned HTTP 200 (may indicate false positive or test mode)._

_No potential false positives detected._

### 24. Potential Successful Attack

_Requests with status 200 that triggered WAF rules (attack payload may have reached backend)._

_No potential successful attacks detected._

### 25. Peak Hours Analysis

| Hour (WIB, UTC+7) | Total Request | Blocked |
|---|---|---|
| 00:00 | 11,839 | 118 |
| 01:00 | 3,642 | 423 |
| 02:00 | 424 | 276 |
| 03:00 | 809 | 498 |
| 04:00 | 1,140 | 607 |
| 05:00 | 1,033 | 506 |
| 06:00 | 3,763 | 623 |
| 07:00 | 8,381 | 234 |
| 08:00 | 87,078 | 105 |
| 09:00 | 185,123 | 927 |
| 10:00 | 172,860 | 842 |
| 11:00 | 176,553 | 809 |
| 12:00 | 100,020 | 155 |
| 13:00 | 130,723 | 76 |
| 14:00 | 201,417 | 429 |
| 15:00 | 206,571 | 499 |
| 16:00 | 194,458 | 266 |
| 17:00 | 108,324 | 112 |
| 18:00 | 60,444 | 293 |
| 19:00 | 47,257 | 737 |
| 20:00 | 34,055 | 221 |
| 21:00 | 36,122 | 842 |
| 22:00 | 26,428 | 178 |
| 23:00 | 20,379 | 432 |

**Peak Hour:** 15:00 WIB with 206,571 requests

### Peak Hours by Day

| Date | Peak Hour (WIB) | Total Request | Blocked |
|---|---|---|---|
| 2026-08-23 | 06:00 | 795 | 123 |
| 2026-08-24 | 14:00 | 30,646 | 32 |
| 2026-08-25 | 16:00 | 4,644 | 4 |
| 2026-08-26 | 09:00 | 51,364 | 2 |
| 2026-08-27 | 16:00 | 36,481 | 11 |
| 2026-08-28 | 15:00 | 40,315 | 319 |
| 2026-08-29 | 13:00 | 10,188 | 8 |
| 2026-08-30 | 23:00 | 4,532 | 1 |
| 2026-08-31 | 15:00 | 49,678 | 8 |


---

## JAGOTI (www.jagoti.co.id)

### 1-3. Total Request, Blocked Request & Block Rate

| Metric | Value |
|---|---|
| Total Request | 180,827 |
| Blocked Request | 11,917 |
| Block Rate | 6.59% |

### 4. Top Attack Type

| Attack Type | Count |
|---|---|
| null | 11,848 |
| scanner_behavior | 57 |
| sqli | 8 |
| arbitrary_file_reading | 4 |

### 5. Daily Trend WAF Request

| Date | Total Request | Blocked |
|---|---|---|
| 2026-08-23 | 1,817 | 393 |
| 2026-08-24 | 20,854 | 1,366 |
| 2026-08-25 | 11,125 | 1,931 |
| 2026-08-26 | 45,868 | 589 |
| 2026-08-27 | 32,580 | 1,752 |
| 2026-08-28 | 21,375 | 1,913 |
| 2026-08-29 | 15,723 | 1,209 |
| 2026-08-30 | 10,712 | 1,913 |
| 2026-08-31 | 20,773 | 851 |

### 6. Top 5 Attacking IP (by blocked requests)

| Rank | IP Address | Blocked Count |
|---|---|---|
| 1 | 35.237.76.201 | 449 |
| 2 | 103.153.183.69 | 380 |
| 3 | 93.123.109.163 | 367 |
| 4 | 20.104.50.220 | 307 |
| 5 | 35.229.208.180 | 277 |

### 7. Unique Attacking IP

**Unique Attacking IPs:** 1,758

### 8. Top Targeted URLs (by blocked requests)

| URL Path | Blocked Count |
|---|---|
| `/` | 1,379 |
| `/.well-known/passkey-endpoints` | 301 |
| `/robots.txt` | 257 |
| `/cms-lms/upload/profilesite/ce0aefe614bbddeded96c0564d26323c.png` | 253 |
| `/wp-login.php` | 252 |
| `/favicon.ico` | 230 |
| `/apple-touch-icon-precomposed.png` | 173 |
| `/apple-touch-icon.png` | 173 |
| `/Login` | 149 |
| `/xmlrpc.php` | 146 |

### 9. Top Triggered Rules

| Rule ID | Plugin | Rule Type | Count |
|---|---|---|---|
| 20126311 | acl | null | 11,848 |
| 117090 | waf | scanner_behavior | 57 |
| 900904 | waf | arbitrary_file_reading | 4 |
| 860011 | sema | sqli | 2 |
| 860003 | sema | sqli | 2 |
| 860021 | sema | sqli | 2 |
| 860020 | sema | sqli | 2 |

### 10. Attack Severity Distribution (by WAF Plugin)

| WAF Plugin | Count |
|---|---|
| acl | 11,848 |
| waf | 61 |
| sema | 8 |

### 11. Status Code Distribution

| Status Code | Count |
|---|---|
| 200 | 159,220 |
| 405 | 11,917 |
| 302 | 6,471 |
| 404 | 1,436 |
| 304 | 419 |
| 500 | 274 |
| 206 | 257 |
| 499 | 244 |
| 201 | 200 |
| 403 | 175 |
| 401 | 122 |
| 400 | 59 |
| 301 | 33 |

### 12. Top 10 Endpoints - Status 200

| Endpoint | Request Count |
|---|---|
| `/cms-lms/ViewPortal/profilsite` | 68,735 |
| `/notifications` | 8,752 |
| `/cms-lms/ViewPortal/get_content` | 8,450 |
| `/cms-lms/ViewPortal/getSlider` | 7,879 |
| `/` | 6,051 |
| `/Login` | 3,657 |
| `/indexGetPelatihanOnline` | 3,377 |
| `/cms-lms/upload/profilesite/ce0aefe614bbddeded96c0564d26323c.png` | 1,770 |
| `/cekProgressCourse` | 1,531 |
| `/cekUrutanCourse` | 1,518 |

### 13. Top 10 IP - Status 200

| IP Address | Request Count |
|---|---|
| 149.129.194.181 | 67,652 |
| 101.255.107.154 | 15,023 |
| 101.255.109.178 | 10,885 |
| 147.139.167.88 | 10,804 |
| 103.165.198.82 | 4,345 |
| 103.245.16.18 | 2,293 |
| 101.255.158.250 | 1,152 |
| 203.145.62.162 | 1,134 |
| 103.10.223.150 | 703 |
| 115.124.64.134 | 568 |

### 14. Top 10 User Agent

| User Agent | Count |
|---|---|
| - | 87,416 |
| Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gec... | 28,904 |
| Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chr... | 15,986 |
| Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gec... | 3,619 |
| Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:154.0) Gecko/20100101 Firefox/154.0 | 3,006 |
| Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gec... | 2,963 |
| Uptime-Kuma/2.0.2 | 2,305 |
| Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, li... | 1,847 |
| Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Sam... | 1,700 |
| Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chr... | 1,268 |

### 15. Sensitive / High-Risk Endpoint

| Endpoint | Total | Blocked | Errors (4xx/5xx) |
|---|---|---|---|
| `/cms-lms/upload/profilesite/ce0aefe614bbddeded96c0564d26323c.png` | 2,058 | 253 | 254 |
| `/cms-lms/upload/78bc660245883c6c7cc668663836e89f.png` | 1,502 | 37 | 38 |
| `/cms-lms/upload/bc0ff5de3e1fc83b76224e80e312c527.png` | 1,496 | 43 | 43 |
| `/cms-lms/upload/917663532400adecc1c0b145d5871bf4.png` | 1,495 | 41 | 42 |
| `/cms-lms/upload/44f742abb4edd29bdb414bc5834ad49e.png` | 1,385 | 42 | 43 |
| `/cms-lms/upload/slider/972397e9453958a336eb98909e1caa9d.png` | 1,276 | 5 | 5 |
| `/cms-lms/upload/slider/f9e95397aa9c71c7903208a74ca6a827.png` | 1,264 | 5 | 5 |
| `/wp-login.php` | 258 | 252 | 258 |
| `/xmlrpc.php` | 147 | 146 | 147 |
| `/wp-json/batch/v1` | 118 | 95 | 118 |
| `/login` | 109 | 104 | 109 |
| `/index.php` | 109 | 102 | 102 |
| `/wp-admin/` | 77 | 72 | 72 |
| `/site/xmlrpc.php` | 64 | 64 | 64 |
| `/web/xmlrpc.php` | 64 | 64 | 64 |
| `/news/xmlrpc.php` | 64 | 63 | 64 |
| `/wordpress/wp-json/batch/v1` | 63 | 63 | 63 |
| `/wp-site/xmlrpc.php` | 63 | 63 | 63 |
| `/wpsite/xmlrpc.php` | 63 | 63 | 63 |
| `/wordpress/xmlrpc.php` | 63 | 63 | 63 |

### 16. Attack Type Trend

| Date | Attack Type | Count |
|---|---|---|
| 2026-08-23 | null | 393 |
| 2026-08-24 | null | 1,338 |
| 2026-08-24 | scanner_behavior | 28 |
| 2026-08-25 | null | 1,902 |
| 2026-08-25 | scanner_behavior | 29 |
| 2026-08-26 | null | 589 |
| 2026-08-27 | null | 1,752 |
| 2026-08-28 | null | 1,913 |
| 2026-08-29 | null | 1,200 |
| 2026-08-29 | sqli | 8 |
| 2026-08-29 | arbitrary_file_reading | 1 |
| 2026-08-30 | null | 1,910 |
| 2026-08-30 | arbitrary_file_reading | 3 |
| 2026-08-31 | null | 851 |

### 17. Suspicious Status 200

_Requests that matched WAF rules but still returned HTTP 200 (potential bypass or false negative)._

_No suspicious status 200 patterns detected._

### 18. 4xx / 5xx Anomaly

| Status Class | Count |
|---|---|
| 2xx | 159,677 |
| 4xx | 13,953 |
| 3xx | 6,923 |
| 5xx | 274 |

### 19. Attack Burst / Request Spike (Top 20 Busiest Hours)

| Hour (WIB) | Total Request | Blocked |
|---|---|---|
| 2026-08-26 22:00 | 5,436 | 37 |
| 2026-08-27 17:00 | 5,062 | 27 |
| 2026-08-27 16:00 | 4,496 | 16 |
| 2026-08-27 04:00 | 3,570 | 7 |
| 2026-08-26 18:00 | 3,445 | 35 |
| 2026-08-24 18:00 | 3,352 | 65 |
| 2026-08-26 19:00 | 3,289 | 39 |
| 2026-08-27 18:00 | 3,282 | 12 |
| 2026-08-27 05:00 | 3,113 | 51 |
| 2026-08-27 23:00 | 3,079 | 38 |
| 2026-08-27 01:00 | 3,016 | 35 |
| 2026-08-31 23:00 | 2,997 | 58 |
| 2026-08-26 21:00 | 2,985 | 13 |
| 2026-08-26 17:00 | 2,931 | 30 |
| 2026-08-27 21:00 | 2,409 | 26 |
| 2026-08-26 16:00 | 2,394 | 16 |
| 2026-08-24 16:00 | 2,394 | 60 |
| 2026-08-27 03:00 | 2,367 | 21 |
| 2026-08-24 17:00 | 2,322 | 85 |
| 2026-08-27 22:00 | 2,265 | 16 |

### 20. IP x Attack Type Analysis

| IP | Attack Type | Count |
|---|---|---|
| 35.237.76.201 | null | 449 |
| 103.153.183.69 | null | 380 |
| 93.123.109.163 | null | 367 |
| 20.104.50.220 | null | 307 |
| 35.229.208.180 | null | 277 |
| 52.194.238.133 | null | 257 |
| 20.48.251.3 | null | 254 |
| 52.139.44.162 | null | 250 |
| 20.151.129.194 | null | 224 |
| 4.204.224.164 | null | 222 |
| 35.200.178.233 | null | 207 |
| 20.220.10.235 | null | 200 |
| 195.178.110.135 | null | 191 |
| 195.178.110.132 | null | 160 |
| 34.73.244.84 | null | 157 |
| 45.148.10.247 | null | 156 |
| 146.75.132.28 | null | 155 |
| 5.188.86.234 | null | 152 |
| 20.48.147.90 | null | 150 |
| 20.104.18.15 | null | 139 |

### 21. IP x Target URL Analysis

| IP | Target URL | Count |
|---|---|---|
| 5.188.86.234 | `/wp-login.php` | 152 |
| 103.153.183.69 | `/` | 120 |
| 193.202.84.104 | `/Login` | 50 |
| 195.178.110.132 | `/` | 49 |
| 45.148.10.247 | `/` | 46 |
| 146.75.132.28 | `/.well-known/passkey-endpoints` | 41 |
| 193.202.84.104 | `/` | 41 |
| 45.148.10.123 | `/` | 36 |
| 146.75.132.29 | `/.well-known/passkey-endpoints` | 32 |
| 195.178.110.135 | `/wp/` | 30 |
| 93.123.109.163 | `/wordpress/` | 30 |
| 93.123.109.163 | `/wp/` | 30 |
| 103.153.183.69 | `/index.php` | 30 |
| 93.123.109.163 | `/blog/` | 30 |
| 202.181.91.192 | `/Login` | 25 |
| 103.153.183.69 | `/login` | 24 |
| 93.123.109.163 | `/` | 24 |
| 146.75.132.28 | `/apple-touch-icon.png` | 22 |
| 146.75.132.27 | `/.well-known/passkey-endpoints` | 22 |
| 193.202.84.104 | `/login` | 22 |

### 22. Blocked -> 200 Pattern

_Requests with status 200 that have associated WAF rule matches (potential bypass)._

| IP | Path | Final Action | Plugin | Rule Type | Count |
|---|---|---|---|---|---|
| 149.129.194.181 | `/cms-lms/ViewPortal/profilsite` | null | null | null | 53,759 |
| 147.139.167.88 | `/cms-lms/ViewPortal/profilsite` | null | null | null | 8,890 |
| 149.129.194.181 | `/cms-lms/ViewPortal/get_content` | null | null | null | 7,066 |
| 149.129.194.181 | `/cms-lms/ViewPortal/getSlider` | null | null | null | 6,773 |
| 101.255.109.178 | `/cms-lms/ViewPortal/profilsite` | null | null | null | 6,078 |
| 103.245.16.18 | `/` | null | null | null | 2,293 |
| 101.255.107.154 | `/notifications` | null | null | null | 2,129 |
| 147.139.167.88 | `/cms-lms/ViewPortal/get_content` | null | null | null | 946 |
| 147.139.167.88 | `/cms-lms/ViewPortal/getSlider` | null | null | null | 888 |
| 101.255.107.154 | `/indexGetPelatihanOnline` | null | null | null | 797 |
| 101.255.107.154 | `/` | null | null | null | 796 |
| 101.255.107.154 | `/Login` | null | null | null | 795 |
| 103.165.198.82 | `/notifications` | null | null | null | 592 |
| 101.255.109.178 | `/notifications` | null | null | null | 527 |
| 101.255.109.178 | `/cms-lms/ViewPortal/get_content` | null | null | null | 435 |
| 101.255.107.154 | `/cekUrutanCourse` | null | null | null | 411 |
| 101.255.107.154 | `/cms-lms/upload/profilesite/ce0aefe614bbddeded96c0564d26323c.png` | null | null | null | 365 |
| 101.255.107.154 | `/lms/public/assets/img/logos/jagoti-logo.png` | null | null | null | 360 |
| 101.255.107.154 | `/cekProgressCourse` | null | null | null | 343 |
| 101.255.107.154 | `/cms-lms/upload/bc0ff5de3e1fc83b76224e80e312c527.png` | null | null | null | 313 |

### 23. Potential False Positive

_Requests blocked by WAF but returned HTTP 200 (may indicate false positive or test mode)._

_No potential false positives detected._

### 24. Potential Successful Attack

_Requests with status 200 that triggered WAF rules (attack payload may have reached backend)._

_No potential successful attacks detected._

### 25. Peak Hours Analysis

| Hour (WIB, UTC+7) | Total Request | Blocked |
|---|---|---|
| 00:00 | 2,957 | 561 |
| 01:00 | 3,076 | 279 |
| 02:00 | 2,606 | 788 |
| 03:00 | 3,593 | 806 |
| 04:00 | 2,599 | 586 |
| 05:00 | 2,831 | 248 |
| 06:00 | 2,930 | 413 |
| 07:00 | 3,875 | 377 |
| 08:00 | 15,007 | 524 |
| 09:00 | 14,893 | 558 |
| 10:00 | 15,062 | 406 |
| 11:00 | 11,020 | 801 |
| 12:00 | 7,918 | 276 |
| 13:00 | 12,100 | 656 |
| 14:00 | 14,483 | 390 |
| 15:00 | 11,415 | 462 |
| 16:00 | 7,699 | 415 |
| 17:00 | 7,321 | 660 |
| 18:00 | 6,815 | 394 |
| 19:00 | 6,420 | 636 |
| 20:00 | 8,600 | 170 |
| 21:00 | 7,902 | 658 |
| 22:00 | 5,753 | 395 |
| 23:00 | 3,952 | 458 |

**Peak Hour:** 10:00 WIB with 15,062 requests

### Peak Hours by Day

| Date | Peak Hour (WIB) | Total Request | Blocked |
|---|---|---|---|
| 2026-08-23 | 00:00 | 572 | 32 |
| 2026-08-24 | 10:00 | 3,352 | 65 |
| 2026-08-25 | 18:00 | 994 | 101 |
| 2026-08-26 | 14:00 | 5,436 | 37 |
| 2026-08-27 | 09:00 | 5,062 | 27 |
| 2026-08-28 | 08:00 | 1,748 | 175 |
| 2026-08-29 | 13:00 | 1,711 | 121 |
| 2026-08-30 | 12:00 | 1,240 | 35 |
| 2026-08-31 | 15:00 | 2,997 | 58 |

## 25. Summary & Recommendation Action

### SYSBPR (sysbpr.simgroup.co.id)

- **Risk Level:** LOW (Block Rate: 0.03%)
- **Top Attack Types:** null (250), scanner_behavior (34), arbitrary_file_reading (1)
- **Top Attacking IPs:** 104.22.176.13, 104.23.175.223, 162.158.106.102

**Recommendations:**
- Current WAF configuration appears effective
- Continue monitoring and periodic rule review
- **Peak traffic at 14:00 WIB** - ensure adequate capacity and monitoring during this window

### ORS (ors.simgroup.co.id)

- **Risk Level:** LOW (Block Rate: 0.26%)
- **Top Attack Types:** null (2,053), scanner_behavior (35), other (3)
- **Top Attacking IPs:** 34.65.238.115, 34.182.181.161, 51.79.229.143

**Recommendations:**
- Current WAF configuration appears effective
- Continue monitoring and periodic rule review
- **Peak traffic at 10:00 WIB** - ensure adequate capacity and monitoring during this window

### GAWE (www.gawe.id)

- **Risk Level:** HIGH (Block Rate: 10.81%)
- **Top Attack Types:** null (38,122), scanner_behavior (56), sqli (6)
- **Top Attacking IPs:** 193.202.84.104, 51.222.8.170, 138.185.145.78

**Recommendations:**
- Consider tightening WAF rules or switching from monitor to block mode for high-volume attack patterns
- Review and potentially IP-ban persistent attacking IPs
- Enable rate limiting (CC protection) for endpoints under heavy attack
- Review triggered rules for potential false positives
- Monitor attack trends for escalation patterns
- **Peak traffic at 11:00 WIB** - ensure adequate capacity and monitoring during this window

### ERP (erp.simgroup.co.id)

- **Risk Level:** LOW (Block Rate: 0.56%)
- **Top Attack Types:** null (10,161), scanner_behavior (37), sqli (6)
- **Top Attacking IPs:** 20.220.10.235, 158.23.147.79, 34.125.101.215

**Recommendations:**
- Current WAF configuration appears effective
- Continue monitoring and periodic rule review
- **Peak traffic at 15:00 WIB** - ensure adequate capacity and monitoring during this window

### JAGOTI (www.jagoti.co.id)

- **Risk Level:** MEDIUM (Block Rate: 6.59%)
- **Top Attack Types:** null (11,848), scanner_behavior (57), sqli (8)
- **Top Attacking IPs:** 35.237.76.201, 103.153.183.69, 93.123.109.163

**Recommendations:**
- Review triggered rules for potential false positives
- Monitor attack trends for escalation patterns
- **Peak traffic at 10:00 WIB** - ensure adequate capacity and monitoring during this window
