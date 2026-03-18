# 🚕 Ola NZ – Ride-Hailing Performance Analysis & Strategy

> **Role:** Data Analyst | **Tools:** SQL Server · Power BI · DAX · Power Query | **Domain:** Transportation · Ride-Hailing Analytics

---

## 📌 Project Overview

Delivered an end-to-end data analytics and business strategy assessment of **Ola's ride-hailing operations in New Zealand**. Using advanced SQL and an interactive Power BI dashboard, the analysis uncovers operational inefficiencies, revenue leakages, and customer experience gaps — translating raw data into actionable, data-driven recommendations aimed at improving profitability, driver utilization, and customer retention.

---

## 🎯 Business Problem

Ola NZ was facing multiple operational challenges with no data-driven solution in place:

- **High ride cancellations** in Wellington and Hamilton hurting revenue and ratings
- **Uneven driver utilization** across cities causing idle time and lost earnings
- **Revenue stagnation** despite frequent promotions
- **Inconsistent customer ratings** and declining loyalty

---

## 📊 Key KPIs & Findings

| Metric | Finding |
|---|---|
| Wellington Cancellation Rate | ~18% — nearly double Auckland's rate |
| Projected Annual Revenue Impact | NZD 3.1M+ incremental revenue |
| Top Driver Earnings vs Average | Top 10% earn 3× more than average |
| Short Rides Revenue Contribution | 50%+ of trips = less than 25% of revenue |
| Customer Satisfaction (Current) | 3.5 / 5.0 |
| Customer Satisfaction (Target) | 4.0 / 5.0 |
| Cancellation Rate (Target) | Reduce from ~39% → 15% |
| Most Profitable Vehicle Type | Electric Vehicles (highest fare per km) |

---

## 🔍 Key Findings

### Revenue & Market Performance
- **Auckland** generates the highest revenue but shows signs of **market saturation**
- **Christchurch underperforms** despite higher marketing spend — indicating inefficient budget allocation

### Cancellations & Utilization
- **Wellington: ~18% cancellation rate** — driven by long wait times and low driver density
- **Hamilton: high driver idle time** — poor supply-demand matching flagged for immediate action

### Demand Patterns
- Peak demand occurs during **7–9 AM and 5–7 PM**
- These windows also experience the **highest cancellation rates and pricing complaints**

### Driver Performance
- Top 10% of drivers earn **3× more** due to better ratings and strategic location selection
- A small subset of drivers **consistently contributes to higher cancellation rates**

### Vehicle & Pricing Insights
- **EVs generate the highest fare per km** — most profitable vehicle type in the fleet
- Long-distance rides in Wellington are **underpriced vs Auckland** — negatively impacting driver earnings

### Customer Loyalty
- **Gold-tier customers** account for highest ride frequency — most valuable retention segment
- **Fare structure imbalance** identified: majority of trips generate minority of revenue

---

## 💡 Business Recommendations

| Area | Recommendation | Expected Impact |
|---|---|---|
| Cancellations | Deploy dynamic driver allocation in Wellington | Reduce cancellations 39% → 15% |
| Utilization | Introduce demand-based incentives in Hamilton | Reduce idle driver time |
| Pricing | Reprice long-distance Wellington rides | Improve driver earnings |
| Fleet Strategy | Expand EV fleet share | Increase revenue per km |
| Customer Loyalty | Launch Gold-tier retention program | Improve satisfaction 3.5 → 4.0 |
| Marketing | Reallocate Christchurch budget to high-ROI cities | Improve marketing efficiency |

---

## 🗄️ Data Model & Architecture

Designed a **Star Schema** optimized for analytical reporting and dashboard performance.

### Fact Tables
| Table | Description |
|---|---|
| `fact_bookings` | Ride volume, fares, cancellations, trip duration |
| `fact_ratings` | Customer feedback and satisfaction scores |

### Dimension Tables
| Table | Description |
|---|---|
| `dim_customers` | Customer profiles and loyalty tiers |
| `dim_drivers` | Driver profiles and performance metrics |
| `dim_locations` | City and zone metadata |
| `dim_payments` | Payment methods and transaction details |

---

## 🛠️ Technical Approach

### SQL Server
- **JOINs** across fact and dimension tables for unified analysis
- **CTEs** for modular, readable query logic
- **Window Functions** for driver ranking, revenue contribution, and cancellation trends
- **Stored Procedures** for reusable analytical queries
- **Aggregations** for city-wise, route-wise, and tier-wise KPI calculation

### Power BI
- **Star schema** data model for optimized performance
- **DAX measures** for KPIs, cancellation rates, and revenue per km
- **Interactive filters** by city, driver, vehicle type, and loyalty tier
- **Drill-through pages** for cancellations, revenue by route, and driver performance
- **Executive summary page** quantifying financial impact and optimization opportunities

### Power Query
- ETL pipeline: data cleaning, transformation, and normalization
- Handling of null values, date standardization, and column mapping

---

## 📈 Projected Business Impact

If Ola NZ implements the recommended strategies:

| Outcome | Current | Target |
|---|---|---|
| Cancellation Rate | ~39% | 15% |
| Customer Satisfaction | 3.5 / 5.0 | 4.0 / 5.0 |
| Annual Revenue Impact | Baseline | +NZD 3.1M+ |
| Driver Utilization | Unoptimized | Balanced across cities |

---

## 📁 Repository Structure
```
📂 Ola-NZ-Ride-Hailing-Performance-Analysis-Strategy
├── 📄 OlaNZ_Analysis.sql          — Full SQL scripts and queries
├── 📊 OlaNZ_Dashboard.pbix        — Interactive Power BI dashboard
├── 🖼️  ola_sql.jpg                 — Dashboard preview
├── 🖼️  ola cover image.jpg         — Project cover
└── 📄 README.md                   — Project documentation
```

---

## 📸 Dashboard Preview

![Ola NZ Dashboard](ola_sql.jpg)

---

## 👤 About

**Khurram Naveed** — Data Analyst specializing in SQL, Power BI, and business intelligence.

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?logo=linkedin)](https://www.linkedin.com/in/khurramnaveed3233)
[![GitHub](https://img.shields.io/badge/GitHub-Portfolio-black?logo=github)](https://github.com/Khurramnaveed3233)
[![Email](https://img.shields.io/badge/Email-Contact-red?logo=gmail)](mailto:khurramnaveed4545@gmail.com)

---

> 💼 *This project demonstrates how advanced SQL analytics combined with Power BI storytelling can transform raw operational data into measurable financial and strategic impact — directly applicable to real-world business problems in transportation and logistics.*
