# Finance Management & Data Cleaning Project

# 📌 Overview
This project demonstrates an end-to-end data analysis workflow — from data cleaning in MySQL to data visualization in Power BI.
Through this project, I showcase how to transform raw and inconsistent data into clean, structured insights using SQL and visualize key business metrics using Power BI.

# 🗄️ Part 1 – Data Cleaning in MySQL
## 🧩 Objective
1) Delete duplicates
2) Standardizing data
3) convert date column from text to datetime
4) Fix NULL values
5) Dropped unnecessary columns

# Steps Performed
## Created a staging table to work safely on a copy of the original data:
<img width="500" height="68" alt="Στιγμιότυπο οθόνης 2025-10-08 120012" src="https://github.com/user-attachments/assets/1149733f-4a81-4d95-bc1b-f913c2cf772b" />












## Removed duplicates using ROW_NUMBER() and CTEs.
<img width="678" height="658" alt="Στιγμιότυπο οθόνης 2025-10-08 121059" src="https://github.com/user-attachments/assets/9f6e7058-5571-4f31-8727-cabbe3e8514a" />













<img width="844" height="243" alt="Στιγμιότυπο οθόνης 2025-10-08 121132" src="https://github.com/user-attachments/assets/7a4fb35f-87b6-4a96-9285-47b56a17e229" />




## Standardized text fields:
### Trimmed spaces with TRIM()
<img width="321" height="72" alt="image" src="https://github.com/user-attachments/assets/ec962f9a-c4d1-4789-93f7-145b3ba1ffad" />


### Unified variations like 'CREDIT_CARD', 'Credit Card', 'credit card'


<img width="579" height="177" alt="Στιγμιότυπο οθόνης 2025-10-08 121738" src="https://github.com/user-attachments/assets/469b4470-467f-453d-bd28-70c6abcb9783" />





 




<img width="293" height="239" alt="Στιγμιότυπο οθόνης 2025-10-08 122119" src="https://github.com/user-attachments/assets/e689ccf0-c241-4f15-b940-4e527c01fff5" />

