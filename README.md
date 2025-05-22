
# 🏥 ClinicPulse – AI-Powered Healthcare Analytics Platform

**ClinicPulse** is a Microsoft Fabric + Power BI solution that delivers enterprise-grade clinical and operational intelligence, built on realistic healthcare data and enhanced with AI anomaly detection.

---

## 📦 Included Components

### 📊 Power BI Visuals (Split into 3 Pages)
1. **Executive Clinical Insights**
   - KPIs: Avg. visit duration, doctor performance, patient demographics
   - Bubble chart: Doctor billing vs duration vs patient age
   - Filters: Department, Date, Gender, DoctorID

2. **Diagnostics, Billing & Anomalies**
   - Python visuals: Billing spikes, test load surges, duration outliers
   - Line charts: Turnaround trends, revenue over time
   - Table: Flagged anomalies with context

3. **Hospital Operations**
   - Bed utilization, room occupancy status, staff per shift
   - Triage urgency heatmap
   - Nurse workload and wait times

---

## 🧠 AI Scripts (in `scripts/`)

- `1_visit_duration_by_department.py`
- `2_billing_anomalies.py`
- `3_test_load_spikes.py`
- `doctor_productivity_scatter.py` *(bubble visual)*

---

## 🗃️ Sample Data Tables (in `sample-data/`)

- `clinic_patients.csv`
- `clinic_doctors.csv`
- `clinic_visits.csv`
- `clinic_diagnostics.csv`
- `clinic_rooms.csv`
- `clinic_beds.csv`
- `clinic_triage.csv`
- `clinic_staff.csv`

---

## 🎨 Power BI Theme

- `clinicpulse_theme.json`  
Apply this theme via Power BI Desktop → View → Browse for themes

---

## ⚙️ Setup Instructions

1. Import all `*.csv` files into Power BI Desktop
2. Create relationships as described in the documentation
3. Import measures from DAX section in this README
4. Paste Python scripts in Python visuals and map fields
5. Use Copilot with included prompts to auto-suggest layout

---

## ✍️ Suggested Copilot Prompts

**Page 1:**  
_"Show doctor performance vs visit outcome by department. Include KPIs and patient age bands."_

**Page 2:**  
_"Highlight anomalies in billing, diagnostics, and visit durations with trend visuals."_

**Page 3:**  
_"Create a hospital ops dashboard with triage urgency, bed capacity, staff per shift."_

---

## 📄 Licensing

This dataset is entirely synthetic and for demonstration purposes only.

---

Built with ❤️ by [Giggabytes Oy & LLC](https://giggabytes.eu)
