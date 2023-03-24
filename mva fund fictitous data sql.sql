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