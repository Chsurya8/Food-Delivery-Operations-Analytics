# Food Delivery Operations Analytics

## 📌 Project Overview
This repository contains a comprehensive, end-to-end data analytics project engineered to assess, structure, clean, and visually analyze logistics fulfillment data for a regional food delivery platform. The pipeline encompasses initial data wrangling using Python, database warehouse configurations using PostgreSQL, deep core operational SQL querying, and a final production-grade interactive Power BI executive dashboard.

---

## 🛠️ Project Architecture & Tech Stack

### 1. Business Intelligence Reports (`/dashbord`)
* Contains the production-grade reporting template `dashboard.pbix` designed to equip operations managers with snapshot metric evaluation frameworks, grid alignments, performance cards, and comprehensive regional filter panes.

### 2. Core Datasets (`/data`)
* Houses the physical datasets used throughout the lifecycle of the project, including the raw unstructured base files (`train.csv`, `test.csv`) and the final programmatically compiled `cleaned_delivery_data.csv`.

### 3. Programmatic Data Pipelines (`/notebook`)
* Developed an automation script (`data_cleaning.ipynb` & `geodesic_distance.py`) utilizing **Python (Pandas, NumPy)** and the **GeoPy** framework. The script cleans white spaces, standardizes conflicting object classifications, tracks null entries, and mathematically extracts geographical mileage distances (`distance_km`) using restaurant and delivery coordinate points via geodesic location logic.

### 4. Database Schema & Querying (`/sql`)
* Implemented a structured table layout within a **PostgreSQL** database environment (`table.sql`).
* Wrote 9 strategic analytics queries (`querys.sql`) to run calculations across driver behaviors, regional efficiency, time-series volume surges, vehicle performance, and extreme weather/traffic friction matrices.

---

## 💡 Key Operational Insights

* 🚦 **Traffic Congestion Bottlenecks:** Heavy traffic is isolated as the single largest operational delay factor. Under severe **"Jam"** conditions, average trip fulfillment durations spike sharply to **31.18 minutes**, directly penalizing delivery SLAs compared to a smooth 21.27-minute baseline during low-density hours.
* 🏆 **High On-Time Performance Standard:** The platform maintains an exceptional baseline fulfillment quality standard across the active network, successfully securing a baseline **On-Time Delivery rate of 90.98%**.
* 👨 **Peak Workforce Demographics:** Volumetric tracking by driver age indicates operational productivity and order volume peaks significantly right around the **30-year-old** driver segment, establishing this experienced demographic as the high-capacity backbone of daily deliveries.
* 📍 **Semi-Urban Distribution Challenges:** **Semi-Urban zones** pose a distinct operational challenge: they generate the lowest overall order transaction volumes but suffer from the highest overall delay percentages, with trip averages reaching a prolonged **49.73 minutes** per delivery.

---

## 📂 Repository Directories

* **`/dashbord`**: Holds your production intelligence report (`dashboard.pbix`).
* **`/data`**: Stores the raw files and pipeline-generated `cleaned_delivery_data.csv`.
* **`/notebook`**: Houses the standalone cleaning logic and data transformation notebooks.
* **`/sql`**: Houses the structural table definitions (`table.sql`) and categorized analytics query scripts (`querys.sql`).
