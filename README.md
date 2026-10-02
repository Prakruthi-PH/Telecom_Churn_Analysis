# Telecom_Churn_Analysis

# 📊 Telecom Customer Churn Analysis

## 📌 Project Overview

Customer churn is a major challenge for telecommunications companies because losing customers can affect revenue and long-term business growth.

This project uses Exploratory Data Analysis (EDA) to investigate customer churn patterns and identify customer characteristics, service subscriptions, contract types, and billing-related factors associated with customers leaving a telecom company.

Using Python, Pandas, Matplotlib, and Seaborn, the project explores customer demographics, internet services, payment methods, contract types, monthly charges, total charges, and customer tenure.

The objective is to generate actionable insights that can help a telecom company understand customer churn and identify opportunities to improve customer retention.

## 🎯 Problem Statement

The telecom industry faces the challenge of retaining existing customers while reducing the number of customers who discontinue their services.

This project analyzes customer demographics, subscribed services, billing information, and account details to identify patterns associated with churn.

The findings aim to help businesses understand customer behavior, investigate potential reasons for customer loss, and develop data-driven customer retention strategies.

## 🎯 Project Objectives

- Analyze the proportion of customers who have left the company and those who continue using its services.
- Clean the dataset and handle missing values.
- Investigate customer demographics and service subscriptions.
- Examine the relationship between contract types and customer churn.
- Analyze churn patterns across internet services and payment methods.
- Explore the relationships between churn, monthly charges, total charges, and customer tenure.
- Investigate how technical support and additional services relate to churn.
- Develop actionable recommendations to support customer retention.

## 🛠️ Tools & Technologies

- **Python** — Data analysis and preprocessing
- **Pandas** — Data manipulation and cleaning
- **NumPy** — Numerical operations
- **Matplotlib** — Data visualization
- **Seaborn** — Statistical visualization
- **Google Colab / Jupyter Notebook** — Development environment

## 📂 Dataset Description

The dataset contains customer information, service subscriptions, account details, billing information, and a churn indicator.

The notebook identifies **7,043 rows and 21 columns** in the dataset.

Important columns include:

| Column | Description |
|---|---|
| `customerID` | Unique customer identifier |
| `gender` | Customer gender |
| `SeniorCitizen` | Indicates whether the customer is a senior citizen |
| `Partner` | Whether the customer has a partner |
| `Dependents` | Whether the customer has dependents |
| `tenure` | Number of months the customer has stayed with the company |
| `InternetService` | Type of internet service |
| `Contract` | Customer contract type |
| `PaymentMethod` | Customer payment method |
| `TechSupport` | Technical support subscription status |
| `MonthlyCharges` | Monthly service charges |
| `TotalCharges` | Total charges associated with the customer |
| `Churn` | Indicates whether the customer left the company |

## 🧹 Data Cleaning & Preprocessing

The following data-cleaning steps were performed:

- Inspected the dataset dimensions, data types, and descriptive statistics.
- Examined unique values and value distributions in categorical columns.
- Checked for duplicate records; no duplicate rows were identified.
- Investigated missing values in relevant columns.
- Filled missing `gender` values using the mode.
- Filled missing `PaperlessBilling` values using the mode.
- Examined the distribution and skewness of `MonthlyCharges`.
- Filled missing `MonthlyCharges` values using the mean.
- Investigated the `TotalCharges` data type and converted the column to a numerical format.
- Examined the distribution of `TotalCharges` and used the median to fill missing values.
- Rechecked missing values after preprocessing.

## 📊 Exploratory Data Analysis

The project explores customer behavior using a variety of visualizations.

### 1. Customer Churn Analysis

- Compared customers who churned with customers who continued using the service.
- Visualized the proportion of churned and retained customers.

### 2. Customer Demographics

- Examined the distribution of customers by gender.
- Investigated churn patterns among senior citizens and other customers.
- Compared churn patterns between customers with and without dependents.

### 3. Service Analysis

- Analyzed customer subscriptions to DSL, fiber-optic, and no-internet-service categories.
- Investigated the relationship between internet service types and churn.
- Examined technical support, streaming TV, and streaming movie subscriptions.

### 4. Contract & Payment Analysis

- Compared churn across month-to-month, one-year, and two-year contracts.
- Examined customer payment-method distributions.
- Investigated churn patterns across electronic checks, mailed checks, bank transfers, and credit cards.

### 5. Billing Analysis

- Examined the distributions of monthly and total charges.
- Compared monthly charges across churn categories.
- Investigated the relationship between contract types, monthly charges, and churn.
- Compared total charges between customers who churned and those who remained.

### 6. Customer Tenure Analysis

- Analyzed the distribution of customer tenure.
- Compared tenure across churn categories.
- Investigated whether shorter customer relationships were associated with higher churn.

### 7. Combined Feature Analysis

- Used grouped visualizations to explore combinations of internet service, technical support, and churn.
- Examined how contract types and technical support relate to customer churn.
- Used box plots to investigate the distributions and potential outliers in numerical variables.

## 💡 Key Findings

The notebook's exploratory analysis identified the following patterns:

- **Customer churn:** Approximately 26.54% of customers had churned, while 73.46% continued using the service.
- **Contract type:** Month-to-month customers showed higher churn than customers on one-year and two-year contracts.
- **Internet service:** Fiber-optic customers showed higher churn in the explored comparisons than customers in the other internet-service categories.
- **Technical support:** Customers without technical support showed higher churn in the notebook's comparisons.
- **Payment method:** Electronic-check customers showed higher churn, while customers using automatic payment methods showed lower churn.
- **Customer tenure:** Customers with shorter tenure were more likely to churn than customers with longer tenure.
- **Monthly charges:** Higher monthly charges were associated with greater churn in the notebook's comparisons.
- **Customer demographics:** Gender showed relatively little difference in the observed churn patterns.
- **Combined factors:** Customers with month-to-month contracts and no technical support showed higher churn in the combined analysis.

These are exploratory associations, not proof that any individual factor directly causes churn.

## 📈 Business Recommendations

Based on the observed patterns, the analysis suggests the following actions for further investigation:

### 1. Encourage Long-Term Contracts

Consider loyalty benefits, discounts, and suitable contract options to encourage customers to move from month-to-month plans to longer-term contracts.

### 2. Improve Technical Support

Review the quality and accessibility of technical support, particularly for customer groups showing higher churn.

### 3. Review Pricing and Service Value

Investigate whether customers paying higher monthly charges receive service quality and benefits that meet their expectations.

### 4. Promote Automatic Payment Options

Explore incentives for customers to adopt automatic payment methods where appropriate.

### 5. Strengthen Early Customer Retention

Focus on onboarding, customer engagement, and service assistance during the early months of a customer's relationship with the company.

### 6. Investigate Fiber-Optic Customer Churn

Examine customer satisfaction, service quality, pricing, and support among fiber-optic customers to better understand their observed churn patterns.

## 📁 Project Files

- `Telecom_Churn_Analysis_.ipynb` — Python notebook containing data cleaning, exploratory analysis, visualizations, and insights.
- `telecom_churn_data.csv` — Original dataset, if included in the repository.





## 🗄️ SQL Analysis

SQL was used to investigate customer churn, summarize customer information, and explore patterns across customer segments and service subscriptions.

### SQL Concepts Used
- `SELECT` and `DISTINCT` — Retrieve customer information and unique categories.
- `WHERE` — Filter customers based on specific conditions.
- `GROUP BY` — Summarize customers across different categories.
- Aggregate Functions — Calculate customer counts and summarize numerical data.
- `ORDER BY` — Sort analytical results.
- `HAVING` — Filter grouped results using aggregate conditions.
- `LIMIT` — Retrieve selected records.

### Analysis Performed
- Calculated the number of customers who churned and remained with the company.
- Analyzed customer distribution by gender and internet service.
- Examined customer churn across different contract types.
- Investigated churn patterns across payment methods.
- Compared customer groups using tenure and billing-related information.
- Used filtering and aggregation to answer customer churn-related business questions.

### Objective
To use SQL for customer data analysis and identify patterns that can support customer retention strategies.
