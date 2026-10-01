-- USE schema_db3;
/* Find the highest Monthly Charge.
SELECT MAX(MonthlyCharges) AS Highest_Monthly_Charge
FROM telecom_data; 

-- 1. Find the total number of customers.
SELECT COUNT(customerID) AS Total_Customers
FROM telecom_data;

Output:
	Total_Customers
	7043 

-- 2.Find the total number of customers who churned and did not churn.
SELECT Churn, COUNT(customerID) AS Customer_Count
FROM `telecom_data`
GROUP BY Churn; 

Output:
	Churn	Customer_Count
	No	      5174
	Yes	      1869 
    
-- 3.Find the number of male and female customers.
SELECT gender, COUNT(customerID) AS Customer_Count
FROM telecom_data
GROUP BY gender;

Output:
	gender	Customer_Count
	Female	 3488
	Male	 3555  
    
-- 4.Find the number of customers for each Internet Service type.
SELECT InternetService, COUNT(customerID) AS Customer_Count
FROM telecom_data
GROUP BY InternetService;

Output:
	InternetService	 Customer_Count
	DSL          	    2421
	Fiber optic	        3096
	No	                1526  

 -- 5.Find the number of customers for each Contract type.
SELECT Contract, COUNT(customerID) AS Customer_Count
FROM telecom_data
GROUP BY Contract;

Output:
	Contract	   Customer_Count
	Month-to-month	   3875
	One year	       1473
	Two year	       1695  
    
-- 6.Find the average Monthly Charges of all customers.
SELECT ROUND(AVG(MonthlyCharges), 2) AS Average_Monthly_Charges
FROM telecom_data;

Output:
	Average_Monthly_Charges
	64.75  
    
-- 7.Find the highest Monthly Charge.
SELECT MAX(MonthlyCharges) AS Highest_Monthly_Charge
FROM telecom_data;

Output:
	Highest_Monthly_Charge
	118.75 
    
-- 8.Find the lowest Monthly Charge.
SELECT MIN(MonthlyCharges) AS Lowest_Monthly_Charge
FROM telecom_data;

Output:
	Lowest_Monthly_Charge
	18.25   
-- 9.Find the average customer tenure.
SELECT ROUND(AVG(tenure), 2) AS Average_Tenure
Output:
	Average_Tenure
	32.37
FROM telecom_data; 


-- 10.Find the total revenue from all customers.
SELECT ROUND(SUM(Total_Charges), 2) AS Total_Revenue
FROM telecom_data;

Output:
	Total_Revenue
	16067997.75   

-- 11.Find the number of customers for each gender, showing the highest first.
SELECT gender, COUNT(customerID) AS Customer_Count
FROM telecom_data
GROUP BY gender
ORDER BY Customer_Count DESC;

Output:
	gender	Customer_Count
	Male	3555
	Female	3488   
    
-- 12.Find the average Monthly Charges for each Contract type.
SELECT
    Contract,
    COUNT(customerID) AS Customer_Count,
    ROUND(AVG(MonthlyCharges), 2) AS Avg_Monthly_Charges
FROM telecom_data
GROUP BY Contract;

	Contract	    Customer_Count	Avg_Monthly_Charges
	Month-to-month	   3875	           66.39
	One year	       1473	           65.02
	Two year	       1695	           60.77 

-- 13.Find the average Monthly Charges for each Internet Service type.
SELECT
    InternetService,
    COUNT(customerID) AS Customer_Count,
    ROUND(AVG(MonthlyCharges), 2) AS Avg_Monthly_Charges
FROM telecom_data
GROUP BY InternetService;

Output:
	InternetService	   Customer_Count	Avg_Monthly_Charges
	DSL	                    2421	   58.1
	Fiber optic	            3096	   91.47
	No	                    1526	   21.08  
    
-- 14.Compare the average Monthly Charges of churned and non-churned customers.
SELECT
    Churn,
    COUNT(customerID) AS Customer_Count,
    ROUND(AVG(MonthlyCharges), 2) AS Avg_Monthly_Charges
FROM telecom_data
GROUP BY Churn;

Output:
	Churn	Customer_Count	Avg_Monthly_Charges
	No	        5174	        61.26
	Yes	        1869	        74.42  

-- 15.Find the top 3 payment methods based on number of customers.
SELECT
    PaymentMethod,
    COUNT(customerID) AS Customer_Count
FROM telecom_data
GROUP BY PaymentMethod
ORDER BY Customer_Count DESC
LIMIT 3;

Output:
	PaymentMethod	         Customer_Count
	Electronic check	         2365
	Mailed check	             1612
	Bank transfer (automatic)	 1544 
    
-- 16.Find the number of senior and non-senior customers and their average tenure.
SELECT
    SeniorCitizen,
    COUNT(customerID) AS Customer_Count,
    ROUND(AVG(tenure), 2) AS Avg_Tenure
FROM telecom_data
GROUP BY SeniorCitizen;

Output:
	SeniorCitizen	Customer_Count	Avg_Tenure
	0	                5901	     32.19
	1	                1142	     33.30  
    
-- 17.Find the number of customers who have been with the company for more than 24 months.
SELECT COUNT(customerID) AS Customer_Count
FROM telecom_data
WHERE tenure > 24;

Output:
	Customer_Count
	3833   

-- 18.Find the number of customers who have Monthly Charges greater than 70 and have churned.
SELECT COUNT(*) AS Customer_Count
FROM telecom_data
WHERE MonthlyCharges > 70
AND Churn = 'Yes';

Output:
	Customer_Count 
	1266   
-- 19.Find the churn rate for each Contract type.
SELECT
    Contract,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS Churn_Rate
FROM telecom_data
GROUP BY Contract;

Output:
	Contract	     Total_Customers	Churned_Customers	Churn_Rate
	Month-to-month	      3875	               1655	         42.71
	One year	          1473	               166	         11.27
	Two year	          1695	               48	         2.83  
    
 -- 20. Find the churn rate for each Internet Service type.
SELECT
    InternetService,
    COUNT(customerID) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS Churn_Rate
FROM telecom_data
GROUP BY InternetService;

Output:
DSL	         2421	459	    18.96
Fiber optic	 3096	1297	41.89
No	         1526	113	    7.40   

USE schema_db3;

-- 21.Find the churn rate for each Payment Method.
SELECT
    PaymentMethod,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS Churn_Rate
FROM telecom_data
GROUP BY PaymentMethod
ORDER BY Churn_Rate DESC; 

Output:
	PaymentMethod	          Total_Customers	Churned_Customers	Churn_Rate
	Electronic check	           2365	             1071	          45.29
	Mailed check	               1612	             308	          19.11
	Bank transfer (automatic)	   1544	             258	          16.71
	Credit card (automatic)	       1522	             232	          15.24 
    
-- 22.Find the total revenue generated by each Contract type.
SELECT
    Contract,
    ROUND(SUM(Total_Charges), 2) AS Total_Revenue
FROM telecom_data
GROUP BY Contract
ORDER BY Total_Revenue DESC;

Output:
	Contract	    Total_Revenue
	Two year	     6297226.7
	Month-to-month	 5302320.25
	One year	     4468450.8  
    
-- 23.Find the total revenue generated by each Internet Service type.
SELECT
    InternetService,
    ROUND(SUM(Total_Charges), 2) AS Total_Revenue
FROM telecom_data
GROUP BY InternetService
ORDER BY Total_Revenue DESC;

Output:
	InternetService	Total_Revenue
	Fiber optic  	9918986.3
	DSL	            5129492.75
	No	            1019518.7    
    
    
-- 25.Find the churn rate based on Online Security service.
SELECT
    OnlineSecurity,
    COUNT(*) AS Total_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS Churn_Rate
FROM telecom_data
GROUP BY OnlineSecurity;

Output:
	OnlineSecurity	Total_Customers	Churn_Rate
	No	                3498	     41.77
	Yes	                2019	     14.61
	No internet service	1526	      7.40  

-- 26.Find the churn rate based on Tech Support availability.
SELECT
    TechSupport,
    COUNT(*) AS Total_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS Churn_Rate
FROM telecom_data
GROUP BY TechSupport;

Output:
	TechSupport	      Total_Customers	Churn_Rate
	No	                   3473	          41.64
	Yes	                   2044	          15.17
	No internet service	   1526	          7.40       
    
-- 27.Find customers whose Total Charges are greater than the average Total Charges.
SELECT
    customerID,
    Total_Charges
FROM telecom_data
WHERE Total_Charges > (
    SELECT AVG(Total_Charges)
    FROM telecom_data
)
ORDER BY Total_Charges DESC
Limit 10;

Output:
	customerID	Total_Charges
	2889-FPWRM	8684.8
	7569-NMZYQ	8672.45
	9739-JLPQJ	8670.1
	9788-HNGUT	8594.4
	8879-XUAHX	8564.75
	9924-JPRMC	8547.15
	0675-NCDYU	8543.25
	6650-BWFRT	8529.5
	0164-APGRB	8496.7
	1488-PBLJN	8477.7  

-- 28.Find the top 5 customers based on Monthly Charges.
SELECT
    customerID,
    MonthlyCharges,
    Contract,
    Churn
FROM telecom_data
ORDER BY MonthlyCharges DESC
LIMIT 5;

Output:
	customerID	MonthlyCharges	Contract	Churn
	7569-NMZYQ	118.75	       Two year	       No
	8984-HPEMB	118.65	       Two year	       No
	5989-AXPUC	118.6	       Two year	       No
	5734-EJKXG	118.6	       One year	       No
	8199-ZLLSA	118.35	       One year	       Yes  
    
--- 29.Using a CTE, find churned customers by Internet Service and their average tenure.
WITH Churned_Customers AS
(
    SELECT *
    FROM telecom_data
    WHERE Churn = 'Yes'
)

SELECT
    InternetService,
    COUNT(*) AS Churned_Customers,
    ROUND(AVG(tenure), 2) AS Avg_Tenure,
    ROUND(AVG(MonthlyCharges), 2) AS Avg_Monthly_Charges
FROM Churned_Customers
GROUP BY InternetService
ORDER BY Churned_Customers DESC;

Output:
	InternetService	Churned_Customers	Avg_Tenure	Avg_Monthly_Charges
	Fiber optic      	1297	          20.20	        88.09
	DSL              	459	              14.11	        49.08
	No	                113               8.24	        20.37  
    
--- 30.Rank customers based on Monthly Charges using a window function.
SELECT
    customerID,
    MonthlyCharges,
    RANK() OVER (ORDER BY MonthlyCharges DESC) AS Charge_Rank
FROM telecom_data
LIMIT 10;

Output:
	customerID	MonthlyCharges	Charge_Rank
	7569-NMZYQ	118.75	           1
	8984-HPEMB	118.65	           2
	5989-AXPUC	118.6	           3
	5734-EJKXG	118.6	           3
	8199-ZLLSA	118.35	           5
	9924-JPRMC	118.2	           6
	2889-FPWRM	117.8	           7
	3810-DVDQQ	117.6	           8
	9739-JLPQJ	117.5	           9
	2302-ANTDP	117.45	           10  */
    