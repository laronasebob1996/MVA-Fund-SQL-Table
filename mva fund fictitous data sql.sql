--CREATE TABLE MVA_Claims (
--    Claim_ID INT PRIMARY KEY,
--    Claimant_Name VARCHAR(50),
--    Date_of_Accident DATE,
--    Date_of_Report DATE,
--    Amount_Claimed FLOAT,
--    Amount_Paid FLOAT,
--    Status VARCHAR(20),
--    Cause VARCHAR(50),
--    Region VARCHAR(50)
--)

--INSERT INTO MVA_Claims VALUES
--(1211, 'John Smith', '2022-03-01', '2022-03-02', 10000, 8000, 'Paid', 'Collision', 'Gaborone'),
--(2322, 'Jane Doe', '2022-04-05', '2022-04-06', 5000, 5000, 'Pending', 'Hit and Run', 'Francistown'),
--(3433, 'Mike Johnson', '2022-05-10', '2022-05-11', 8000, NULL, 'Denied', 'No-fault', 'Maun'),
--(3534, 'Samantha Brown', '2022-06-15', '2022-06-16', 15000, 10000, 'Paid', 'Rollover', 'Kasane')

---we want to see all the approved claims---
--SELECT *
--FROM MVA_Claims
--WHERE Status = 'Approved'

---we want to see amount claimed as oppossed to the amount paid---
--SELECT SUM(Amount_Claimed) as Total_Claimed, SUM(Amount_Paid) as Total_Paid
--FROM MVA_Claims

---we want to see claims by region---
--SELECT Region, COUNT(*) as Num_Claims
--FROM MVA_Claims
--GROUP BY Region



-- SELECT Cause, AVG(Amount_Claimed) as Avg_Claimed, AVG(Amount_Paid) as Avg_Paid

--UPDATE MVA_Claims
--SET Amount_Owed = Amount_Claimed - COALESCE(Amount_Paid, 0);

--Show the claims with the highest amount owed
--SELECT *
--FROM MVA_Claims
--WHERE Status = 'Paid' AND Amount_Owed > 0
--ORDER BY Amount_Owed DESC;

--Find the claimant(s) with the highest amount claimed
--SELECT Claimant_Name, MAX(Amount_Claimed) as Max_Claimed
--FROM MVA_Claims
--GROUP BY Claimant_Name
--ORDER BY Max_Claimed DESC
--LIMIT 1;

--Find the average amount claimed per month
--SELECT DATE_TRUNC('month', Date_of_Accident) as Month, AVG(Amount_Claimed) as Avg_Claimed
--FROM MVA_Claims
--GROUP BY Month
--ORDER BY Month;

--Find the percentage of claims that were denied
--SELECT COUNT(CASE WHEN Status = 'Denied' THEN 1 END) * 100.0 / COUNT(*) as Denied_Percentage
--FROM MVA_Claims;

--Find the total amount claimed and paid by region and cause
--SELECT Region, Cause, SUM(Amount_Claimed) as Total_Claimed, SUM(Amount_Paid) as Total_Paid
--FROM MVA_Claims
--GROUP BY Region, Cause
--ORDER BY Region, Cause;

--Find the number of claims that occurred in each year
--SELECT EXTRACT(YEAR FROM Date_of_Accident) as Year, COUNT(*) as Num_Claims
--FROM MVA_Claims
--GROUP BY Year
--ORDER BY Year;

--Find the top 5 claimants with the highest amount paid
--SELECT Claimant_Name, SUM(Amount_Paid) as Total_Paid
--FROM MVA_Claims
--WHERE Status = 'Paid'
--GROUP BY Claimant_Name
--ORDER BY Total_Paid DESC
--LIMIT 5;

--Find the average amount claimed and paid by cause and region for only the approved claims
--SELECT Cause, Region, AVG(Amount_Claimed) as Avg_Claimed, AVG(Amount_Paid) as Avg_Paid
--FROM MVA_Claims
--WHERE Status = 'Approved'
--GROUP BY Cause, Region
--ORDER BY Cause, Region;

--Find the claims with a reported accident date in the last 30 days
--SELECT *
--FROM MVA_Claims
--WHERE Date_of_Accident >= DATEADD(day, -30, GETDATE());

--Delete all claims with a status of "Denied"
--DELETE FROM MVA_Claims
--WHERE Status = 'Denied';




laronasebobi@gmail.com
write unique  sql code from the one written above
--Add a new column to MVA_Claims table to calculate the ratio of amount paid to amount claimed
--ALTER TABLE MVA_Claims

--ADD Payment_Ratio FLOAT;
--UPDATE MVA_Claims
--SET Payment_Ratio = COALESCE(Amount_Paid, 0) / Amount_Claimed;

--Show the claims where the payment ratio is less than 0.5
--SELECT *
--FROM MVA_Claims
--WHERE Payment_Ratio < 0.5;

--Find the top 3 regions with the highest average amount claimed per claimant
--SELECT Region, AVG(Amount_Claimed) as Avg_Claimed
--FROM MVA_Claims
--GROUP BY Region
--HAVING COUNT(DISTINCT Claimant_Name) >= 3
--ORDER BY Avg_Claimed DESC
--LIMIT 3;

--Find the total number of claims, total amount claimed, and total amount paid by cause
--SELECT Cause, COUNT(*) as Num_Claims, SUM(Amount_Claimed) as Total_Claimed, SUM(Amount_Paid) as Total_Paid
--FROM MVA_Claims
--GROUP BY Cause
--ORDER BY Num_Claims DESC;

--Find the claims where the difference between the date of accident and the date of report is greater than 7 days
--SELECT *
--FROM MVA_Claims
--WHERE DATEDIFF(day, Date_of_Accident, Date_of_Report) > 7;

--Find the number of claims that are pending or denied by region and cause
--SELECT Region, Cause, COUNT(*) as Num_Claims
--FROM MVA_Claims
--WHERE Status = 'Pending' OR Status = 'Denied'
--GROUP BY Region, Cause
--ORDER BY Num_Claims DESC;

--Find the claims where the cause is "Collision" and the region is not "Gaborone"
--SELECT *
--FROM MVA_Claims
--WHERE Cause = 'Collision' AND Region != 'Gaborone';

--Find the average amount paid per claimant for the top 5 claimants with the highest amount claimed
--SELECT Claimant_Name, AVG(Amount_Paid) as Avg_Paid
--FROM MVA_Claims
--WHERE Claimant_Name IN (
-- SELECT Claimant_Name
-- FROM MVA_Claims
-- ORDER BY Amount_Claimed DESC
-- LIMIT 5
--)
--GROUP BY Claimant_Name
--ORDER BY Avg_Paid DESC;

--Find the claims where the amount claimed is less than the average amount claimed for the cause and region
--SELECT *
--FROM MVA_Claims c
--WHERE Amount_Claimed < (
-- SELECT AVG(Amount_Claimed)
-- FROM MVA_Claims
-- WHERE Cause = c.Cause AND Region = c.Region
--);






--FROM MVA_Claims
--GROUP BY Cause

--- we want to see all claims where amount was not paid---
--SELECT *
--FROM MVA_Claims
--WHERE Amount_Paid IS NULL


---we want to see all the claims where they where denied or still pending---
--SELECT *
--FROM MVA_Claims
--WHERE Status = 'Denied' OR Status = 'Pending'


---Count the number of claims by cause and region--

--SELECT Cause, Region, COUNT(*) AS Num_Claims
--FROM MVA_Claims
--GROUP BY Cause, Region
--ORDER BY Num_Claims DESC

--- show claims with the highest severity rate---
--SELECT *
--FROM MVA_Claims
--WHERE Amount_Claimed > 10000
--ORDER BY Amount_Claimed 

--select *
--from [MVA FUND FICTIONAL DATA]..road_accidents
