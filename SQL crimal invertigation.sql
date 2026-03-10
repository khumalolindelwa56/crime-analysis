-- question1
select*
from dbo.south_africa_criminal_database;

--question 2
select count(*) as total_cases
from dbo.south_africa_criminal_database;

--question 3
select province, count(*) as number_of_cases
from dbo.south_africa_criminal_database
group by province;

--question 4
 select*
 from  dbo.south_africa_criminal_database
 where CrimeType= 'fraud';

 --QUESTION 5
 select CrimeType, count(*) AS Number_of_cases
 from  dbo.south_africa_criminal_database
 group by CrimeType;

 -- QUESTION 6
 select*
 from  dbo.south_africa_criminal_database
 where RiskLevel = 'High'
   OR RiskLevel ='critical';

-- question 7
select AVG(FinancialScore) AS average_finaciascore
from  dbo.south_africa_criminal_database;
  
--question 8
select MAX(EstimatedFraudAmount_ZAR) AS HighestFraudAmount
 from dbo.south_africa_criminal_database;

 --question 9
 select top 10*
 from dbo.south_africa_criminal_database
 order by EstimatedFraudAmount_ZAR;

 --question 10
 select*
 from dbo.south_africa_criminal_database
 where Arrested = 1;

 --question 11
 select Arrested, COUNT(*) AS NumberOfSuspects
 from dbo.south_africa_criminal_database
 group by Arrested;

 --question 12
 select BankInvolved, COUNT(*) AS NumberOfCases
 from dbo.south_africa_criminal_database
 group by BankInvolved;

 --question 13
 select province, SUM( EstimatedFraudAmount_ZAR) AS HighestFraudAmount
 from dbo.south_africa_criminal_database
 group by province;

 --question 14
 select*
  from dbo.south_africa_criminal_database
  where age >50;

  --question 15
select province, AVG(age) AS AverageOfSuspect
from  dbo.south_africa_criminal_database
group by province;

--question 16
select*
from dbo.south_africa_criminal_database
where CrimeDate >='2020-01-01';

--question 17
 select COUNT(*) AS ConvitedCases
 from dbo.south_africa_criminal_database
 where CaseStatus = 'Convicted';

 --question 18
  select*
  from dbo.south_africa_criminal_database
  where PreviousOffenses >3;

  -- question 19
  select RiskLevel, COUNT(*) AS NumberOfCases
 from dbo.south_africa_criminal_database
 group by RiskLevel;

 --question 20
  select SUM(CAST(EstimatedFraudAmount_ZAR AS DECIMAL(18,2))) AS TotalFraudAmount
 from dbo.south_africa_criminal_database;

 --question 21
  select top 1 province, COUNT(*) AS NumberOfCases
 from dbo.south_africa_criminal_database
 group by Province
 order by NumberOfCases DESC;

 --question 22
 select top 1*
 from  dbo.south_africa_criminal_database
 order by age ASC;

 --QUESTION 23
  select top 1*
 from  dbo.south_africa_criminal_database
 order by age DESC;

 --QUESTION 24
 select InvestigatingOfficer, COUNT(*) as NumberOfCases
 from  dbo.south_africa_criminal_database
 group by InvestigatingOfficer;

 --question 25
 select CrimeType, AVG(EstimatedFraudAmount_ZAR) AS AvgFraudAmount
 from  dbo.south_africa_criminal_database
 group by CrimeType;

 --question 26
 select *
 from  dbo.south_africa_criminal_database
 where province = 'Gauteng';

 -- question 27
 select*
 from dbo.south_africa_criminal_database
 where CrimeType = 'Fraud'
   AND RiskLevel = 'High';

-- question 28
select year(CrimeDate) AS CaseYear,
       COUNT(*) AS NumberOfCases
from  dbo.south_africa_criminal_database
group by YEAR(CrimeDate)
order by CaseYear;

--QUESTION 29
select*
from  dbo.south_africa_criminal_database
where FinancialScore <500;

--question 30
select top 1 CrimeType, COUNT(*) AS TotalCases
from  dbo.south_africa_criminal_database
group by CrimeType
order by TotalCases DESC;