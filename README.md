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



<img width="850" height="225" alt="image" src="https://github.com/user-attachments/assets/754b37d9-c712-4728-b8b7-7c5e5bb4ed41" />







 
#### Fixed



<img width="293" height="239" alt="Στιγμιότυπο οθόνης 2025-10-08 122119" src="https://github.com/user-attachments/assets/e689ccf0-c241-4f15-b940-4e527c01fff5" />



## Converted date formats with STR_TO_DATE() and updated the column to DATE type.
<img width="455" height="276" alt="Στιγμιότυπο οθόνης 2025-10-08 123113" src="https://github.com/user-attachments/assets/552a62b1-ad79-4073-b830-dd9b0ba29dd4" />





## Handled missing values:
### Replaced empty payment methods by joining on other customer transactions
<img width="567" height="453" alt="image" src="https://github.com/user-attachments/assets/d479d720-6cc6-4743-8bad-d434dff604b7" />








### Replaced null transaction amounts with the average transaction amount
<img width="629" height="156" alt="Στιγμιότυπο οθόνης 2025-10-08 125957" src="https://github.com/user-attachments/assets/230db3b0-fcae-4f44-8e94-a1bfa59e1631" />






### Set empty transaction statuses to 'Unknown'
<img width="444" height="258" alt="Στιγμιότυπο οθόνης 2025-10-08 131944" src="https://github.com/user-attachments/assets/bdb8be1c-c666-4c2d-9db7-bd9d41ebc83f" />







## Dropped unnecessary columns (e.g. temporary num_row field).
<img width="251" height="83" alt="Στιγμιότυπο οθόνης 2025-10-08 132005" src="https://github.com/user-attachments/assets/1979b547-807c-4414-aa92-42428e7d15c5" />







## 🧾 Raw Dataset (Before Cleaning)
<img width="818" height="342" alt="image" src="https://github.com/user-attachments/assets/413166fd-5903-4ec2-a4d8-327a67d61329" />









## ✅ Result A clean, consistent, and analysis-ready dataset stored in the final table staging2.
<img width="823" height="363" alt="image" src="https://github.com/user-attachments/assets/eab4eac7-bc98-4776-993b-f1023fb7c296" />












# 📊 Part 2 – Visualization in Power BI
## 🎯 Objective
To create an interactive Power BI dashboard that presents key financial metrics and customer behavior insights derived from the cleaned MySQL data.

## 🔗 Data Connection
The Power BI report was directly connected to the cleaned MySQL database (staging2 table) using the MySQL ODBC connector.

## 📈 Dashboard Features
<img width="1121" height="732" alt="Στιγμιότυπο οθόνης 2025-10-07 134145" src="https://github.com/user-attachments/assets/56a08353-a58f-4abf-9804-0a68a8746b41" />









## Main KPIs
1) Total Transaction Amount
2) Number of Unique Customers

## Visuals
#### Line chart: Payment methods over time
#### Pie chart: Transaction amount distribution by merchants
#### Bar chart: Transaction amount by country
#### Card visuals: Total amount & customer count
#### Interactive filters: By country, payment method, transaction status
#### Data table: Detailed transaction view

## 🌍 Insights
1) Italy and the USA show the highest transaction volumes.
2) Credit cards dominate as the main payment method.

## Key Skills Demonstrated
SQL Data Cleaning & Transformation

Use of Window Functions (ROW_NUMBER, PARTITION BY)

Handling Missing & Duplicate Data

Data Standardization & Type Conversion

Power BI Data Modeling & Dashboard Design

End-to-End Data Analysis Workflow
