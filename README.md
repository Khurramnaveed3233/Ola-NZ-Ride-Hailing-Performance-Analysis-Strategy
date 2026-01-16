#  Ola NZ – Ride‑Hailing Performance Analysis & Strategy

![ola cover image](https://github.com/user-attachments/assets/11df63f6-5cc3-47a0-8d2e-f9df205d583f)

##  Project Summary
This project delivers an end-to-end **data analytics and business strategy assessment** of **Ola’s ride-hailing operations in New Zealand**.  
Using **advanced SQL** and an **interactive Power BI dashboard**, the analysis uncovers **operational inefficiencies, revenue leakages, and customer experience gaps**, and translates them into **actionable, data-driven recommendations** aimed at improving profitability, utilization, and retention.

---

##  Business Objectives
Ola NZ was facing multiple operational challenges:

- High ride cancellations in **Wellington** and **Hamilton**
- Uneven driver utilization across cities
- Revenue stagnation despite frequent promotions
- Inconsistent customer ratings and loyalty

**Key Objectives**
- Reduce ride cancellations and idle driver time  
- Optimize driver allocation across high-demand zones  
- Increase revenue per ride  
- Improve customer satisfaction and retention  

---

##  Data Model & Architecture
Designed a **star-schema data model** optimized for analytical reporting and dashboard performance.

### **Fact Tables**
- `fact_bookings` – ride volume, fares, cancellations, trip duration  
- `fact_ratings` – customer feedback and satisfaction scores  

### **Dimension Tables**
- `dim_customers`
- `dim_drivers`
- `dim_locations`
- `dim_payments`

**Data Coverage**
- Ride transactions, driver profiles, customer behavior, ratings, payment methods, and location metadata.

---

##  Key Insights & Findings

### **Revenue & Market Performance**
- **Auckland** generates the highest revenue but shows signs of market saturation.
- **Christchurch** underperforms despite higher marketing spend, indicating inefficient budget allocation.

### **Cancellations & Utilization**
- **Wellington** records ~18% cancellation rate, nearly double that of Auckland, driven by long wait times and low driver density.
- **Hamilton** exhibits high driver idle time, highlighting poor supply-demand matching.

### **Demand Patterns**
- Peak demand occurs during **7–9 AM** and **5–7 PM**.
- These peak windows also experience the highest cancellation rates and pricing complaints.

### **Driver Performance**
- Top 10% of drivers earn **3× more** than the average driver due to better ratings and strategic location selection.
- A small subset of drivers consistently contributes to higher cancellation rates.

### **Vehicle & Pricing Insights**
- **Electric Vehicles (EVs)** generate the highest fare per kilometer, making them the most profitable vehicle type.
- Long-distance rides in Wellington are underpriced compared to Auckland, negatively impacting driver earnings.

### **Customer Loyalty & Revenue Mix**
- **Gold-tier customers** account for the highest ride frequency and represent the most valuable retention segment.
- Over **50% of trips** are short rides but contribute **less than 25% of total revenue**, indicating fare structure imbalance.

---

##  Business Impact (Projected)
If Ola NZ implements the recommended strategies:

- Reduce cancellations from **~39% to 15%**
- Improve customer satisfaction scores from **3.5 to 4.0**
- Optimize driver utilization in underperforming cities

**Estimated Annual Impact**
- **NZD 3.1M+ incremental revenue**
- Higher driver earnings and engagement
- Improved customer retention
- Stronger competitive position in the NZ market

---

##  Dashboard Highlights
- Interactive filters by **city, driver, vehicle type, and loyalty tier**
- Drill-through analysis for **cancellations, revenue by route, and driver performance**
- KPI cards for **revenue, cancellations, utilization, and ratings**
- Executive summary page quantifying **financial impact and optimization opportunities**

---

##  Tools & Skills Used
- **SQL:** Joins, CTEs, Window Functions, Stored Procedures  
- **Power BI:** Data modeling, DAX measures, interactive dashboards  
- **Power Query:** ETL, data cleaning, transformation  
- **Excel:** PivotTables, advanced reporting  
- **Data Storytelling:** Business-focused insights and executive summaries  

---

##  Conclusion
This project demonstrates how **advanced analytics combined with business thinking** can transform raw operational data into **measurable financial and strategic impact**.  
By integrating **SQL-driven analysis**, **BI dashboards**, and **clear business recommendations**, the project showcases strong capabilities in **data analysis, stakeholder communication, and decision-support analytics**.

---

**Author:** Khurram Naveed – Data Analyst  
📧 khurramnaveed4545@gmail.com  
📞 +92-340-720-9828
