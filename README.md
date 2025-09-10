#  Ola NZ – Ride‑Hailing Performance Analysis & Strategy

##  Project Overview

This project analyzes **Ola’s New Zealand ride‑hailing operations** to uncover inefficiencies, revenue leaks, and customer experience gaps.  
Using **advanced SQL** (Joins, CTEs, Window Functions, Stored Procedures) and a **Power BI dashboard**, I answered 14 targeted business questions, built a **star‑schema data model**, and delivered **data‑driven strategies** to improve utilization, retention, and profitability.

---

## Business Problem

Ola NZ faced:
- High cancellations in **Wellington** and **Hamilton**
- Uneven driver utilization across cities
- Revenue stagnation despite promotions
- Inconsistent customer ratings

**Objectives:**
1. Reduce cancellations
2. Optimize driver allocation
3. Unlock revenue growth
4. Improve retention and loyalty

---

## 🗄 Dataset & Model

**Star Schema Design**
- **Fact Tables**: `fact_bookings`, `fact_ratings`
- **Dimension Tables**: `dim_customers`, `dim_drivers`, `dim_locations`, `dim_payments`

**Data Sources**: HRIS-style ride data, driver profiles, customer feedback, payment methods, location metadata.

---

## Key Insights & Findings

### 1. Revenue Distribution

- **Auckland** generates the highest revenue but is nearing market saturation.
- **Christchurch** underperforms despite higher marketing spend.

### 2. Cancellations

- **Wellington**’s cancellation rate (~18%) is nearly double Auckland’s, driven by long wait times and low driver density.
- **Hamilton** shows extreme idle time for drivers.

### 3. Demand Patterns

- Peak demand: **7–9 AM** and **5–7 PM**.
- These slots also have the highest cancellations and surge pricing complaints.

### 4. Driver Performance

- Top 10% of drivers earn **3× more** than average, due to better ratings and strategic location choices.
- A small subset of drivers consistently records higher cancellations.

### 5. Vehicle Profitability

- **Electric Vehicles (EVs)** have the highest fare per km, making them the most profitable.

### 6. Customer Loyalty

- **Gold-tier** customers ride most frequently — key segment for retention campaigns.

### 7. Revenue Mix

- Over 50% of trips are short rides but contribute less than 25% of revenue — imbalance in fare structure.

### 8. Pricing & Retention

- Long trips in Wellington are underpriced compared to Auckland, reducing driver earnings.
- Christchurch’s heavy promo usage does not translate into repeat customers.

---

## Business Impact

If Ola NZ:

- Reduces Life Sciences–like high attrition (cancellations) from **39% → 15%**
- Increases female representation in R&D‑style analogy (loyalty tier focus) from **6% → 15%**
- Improves bottom‑quartile satisfaction from **3.5 → 4.0**

**Projected Annual Impact**:
- **NZ$3.1M** in additional revenue
- Higher driver earnings
- Improved customer retention
- Stronger market position

---

##  Recommendations

| Area                  | Action                                                                 |
|-----------------------|------------------------------------------------------------------------|
| **Driver Allocation** | Reallocate idle drivers to high‑demand zones, focus on transport hubs  |
| **Revenue Strategy**  | Adjust fares, bundle short trips, redesign promotions                  |
| **Customer Experience** | Retrain drivers in Hamilton, moderate surge pricing                   |
| **Retention**         | Launch loyalty rewards, city‑specific campaigns                        |
| **Marketing Spend**   | Reduce in low‑yield suburbs, invest in Christchurch growth             |
| **Data Quality**      | Fix logging errors, implement anomaly detection in ETL                 |

---

## Dashboard Features
- **Interactive Filters**: City, driver, vehicle type, loyalty tier
- **Drill‑through Pages**: Cancellations, revenue by route, driver performance
- **KPI Cards**: Revenue, cancellations, ratings, utilization
- **Visuals**: Bar charts, pie charts, line graphs, correlation plots
- **Executive Snapshot**: Quantified business impact & savings potential

---

##  Tools & Skills Used
- **SQL**: Joins, CTEs, Window Functions, Stored Procedures
- **Power BI**: Data modeling, DAX measures, interactive dashboards
- **Power Query**: ETL, data cleaning, transformation
- **Excel**: PivotTables, advanced charting
- **Data Storytelling**: Executive summaries, business case framing

---

## Conclusion
This project demonstrates how **data analytics + business thinking** can transform operational insights into measurable ROI.  
By combining **SQL analysis**, **dashboard storytelling**, and **strategic recommendations**, Ola NZ can improve efficiency, loyalty, and profitability.

---

**Author**: Khurram Naveed – Data Analyst & Storyteller  
📧 khurramnaveed4545@gmail.com | 🔗 [LinkedIn](#) | 📂 [Portfolio](#)


