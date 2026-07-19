# 🚖 OLA Ride Analytics Dashboard

A professional **Ride Analytics Dashboard** built using **Power BI, SQL, and Excel** to analyze OLA ride booking data and generate actionable business insights.

---

# 🖼️ Dashboard Preview

![OLA Ride Analytics Dashboard](OLA%20PROJECT.png)

---

# 📌 Project Overview

This project analyzes OLA ride booking data to identify booking trends, ride cancellations, revenue, vehicle performance, payment methods, and customer behavior. The interactive dashboard enables data-driven decision-making through clear visualizations and KPIs.

---

# 🎯 Objectives

- Analyze ride booking trends
- Monitor booking success and cancellations
- Evaluate revenue performance
- Compare vehicle category performance
- Analyze payment methods
- Track customer and driver ratings

---

# 🛠️ Tools Used

- Power BI
- SQL
- Microsoft Excel
- Power Query
- DAX

---

# 📊 Dashboard Highlights

- 📈 Total Bookings
- 💰 Revenue Analysis
- 🚗 Vehicle Type Analysis
- ❌ Ride Cancellation Analysis
- 💳 Payment Method Distribution
- ⭐ Customer Ratings
- 👨‍✈️ Driver Ratings
- 📅 Booking Trends
- 📍 Ride Distance Analysis

---

# 📈 # OLA Ride Analytics — Key Insights

*(computed directly from OLA DataSet.xlsx — 103,024 bookings, July 2024)*

## Key Insights

- **Booking volume & trend:** 103,024 total bookings analyzed across July
  2024. Volume was steady hour-to-hour with no sharp intraday peak, but
  there was a clear weekday skew — Tuesday, Monday, and Wednesday each saw
  ~30% more bookings than the slowest day, Sunday.

- **Cancellations:** 37.9% of bookings did not complete — 17.9% cancelled
  by the driver, 10.2% cancelled by the customer, and 9.8% ended in
  "Driver Not Found." This is the single biggest opportunity area in the
  data. Top driver-side reason: "Personal & Car related issue" (35.5% of
  driver cancellations). Top customer-side reason: "Driver is not moving
  towards pickup location" (30.2% of customer cancellations) — notably,
  even the top *customer* cancellation reason traces back to driver
  behavior, not indecision.

- **Revenue:** ₹3.51 crore (₹35,080,467) generated from successful rides,
  averaging ₹548 per completed ride. Revenue share across vehicle types
  was essentially even (14.0–14.7% each) — no single vehicle category
  drives disproportionate revenue.

- **Payment methods:** Cash led at 54.8% of transactions, UPI at 40.5%;
  credit and debit cards combined made up under 5%. Average booking value
  was nearly identical across all four methods (₹539–₹550), so payment
  method has no meaningful effect on trip value.

- **Ratings:** Average driver rating 4.0/5, average customer rating 4.0/5.
  14% of driver ratings and 14% of customer ratings fell below 3.5 — a
  meaningful minority worth flagging for service-quality follow-up.

- **Ride distance:** Average ride distance was 14.2 km, and 44.2% of all
  rides were under 5 km — a large share of short trips, which may carry
  higher cancellation risk than longer ones (worth a follow-up cross-tab
  if you want to extend this).

## Business takeaway

The clearest lever isn't demand generation — it's completion rate. With
~38% of bookings failing to complete, and the top reasons on both the
driver and customer side tracing back to driver behavior near pickup, the
highest-impact fix would target driver allocation and pickup-window
accountability rather than marketing or vehicle mix.

# 📂 Repository Contents

- Dataset
- SQL Queries
- Power BI Dashboard (.pbix)
- Dashboard Screenshot
- README

---

# 👩‍💻 Author

**Arushi Nigam**
