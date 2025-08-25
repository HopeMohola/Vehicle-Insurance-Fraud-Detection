-- which month has the most accidents?
select month, count(*) as month_count
from time
group by month
order by month_count desc; -- January(1411), May(1367) and March(1360) have the most accidents

-- which week of the months(JANUARY, MAY AND MARCH) has the most accidents?
select Month, WeekOfMonth, count(*) as week_count
from time
where Month IN ('Jan','May','Mar')
group by Month, WeekOfMonth
order by count(*) desc; 
-- January has 5 weeks(week with most accidents is 2 and least is 5)
-- March has 5 weeks(week 2 most accidents and least is 5)
-- May has 5 weeks(week 3 most accidents and week 5 least)

-- which week has the most accidents?
select WeekOfMonth, count(*) as weekofmonth_count
from time
group by WeekOfMonth
order by weekofmonth_count desc;
-- but overall week 3 has the most accidents, followed by 2 then the least is week 5

-- which day of the week in months(JAN, MAR, MAY) have the most acccidents?
select Month, DayOfWeek, count(*) as day_of_week_count
from time
where Month IN ('Jan','May','Mar')
group by Month, DayOfWeek
order by count(*) desc;
-- January Mondays have the most accidents, followed by May Mondays then March Wednesdays

-- For the months of January, March, and May, which weeks and days of the week have the highest number of accidents?
SELECT Month, WeekOfMonth, DayOfWeek, COUNT(*) AS day_of_week_count
FROM time
WHERE Month IN ('Jan','May','Mar')
GROUP BY Month, WeekOfMonth, DayOfWeek
ORDER BY COUNT(*) DESC;
-- Jan Week 2, Mondays have the highest accidents counting at 74
-- May week 2 Mondays follow counting at 64
-- Jan week 1 Mondays counting at 63
-- May week 5 on Friday counting 1 and being the least with accidents

-- which day of the week has most accidents?
select DayOfWeek, count(*) as dayofweek_count
from time
group by DayOfWeek
order by dayofweek_count desc;
-- overall Monday has the most accidents and Sunday has the least

-- which make of car appear to be involved in accidents?
select Make, count(*) as vehicle_count
from vehicle
group by Make
order by count(*) desc;
-- Null values score the highest(these could be car makes that we don't know, doesn't necessarily mean accidents didnt happen)
-- followed by Pontiac, Toyota and Honda
-- Lexus, Ferrari and Mercedes are the cars that are least involved in accidents, including Porche and Jaguar

-- which gender drives the make involved in accidents?
select v.Make,ph.Sex,count(*) AS TotalAccidents
from policyholder ph
join vehicle v on ph.PolicyNumber = v.PolicyNumber
group by v.Make, ph.Sex
order by TotalAccidents desc
limit 3;
-- Males seem to be involved in the top 3 accidents
-- with cars involving, Pontiac, Toyota and Honda

-- What is the marital status of gender involved in accidents(limit to 5)?
select MaritalStatus, Sex, count(*) as TotalAccidents
from policyholder
group by MaritalStatus, Sex
order by TotalAccidents desc
limit 5;
-- Married male cause the most accidents(9300) followed by single male(3652) but thats a huge gap
-- Divorced females cause the least accidents(they dont have stress)

-- What is the age group that is mostly involved in accidents?
select 
    CASE 
        WHEN Age < 18 THEN 'Under 18'
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 50 THEN '36-50'
        WHEN Age BETWEEN 51 AND 65 THEN '51-65'
        else '66+'
    end as AgeGroup,
    COUNT(*) as TotalPolicyholders
from policyholder
group by AgeGroup
order by TotalPolicyholders desc;
-- Age group 26-35 are the ones involved in the most accidents(High risk in insurance)
-- Those aged 66+ are good to offer insurance because they dont cause accidents

-- who is usually at fault, policyholder or third party?
select Fault, count(*) as AtFault
from accident
group by Fault;
-- policy holders are the ones involved in accidents(11229)
-- third party are the least involved in accidents(4190)

-- What is the Policy Type mostly associated with accidents>
select PolicyType, count(*) as Policies
from policy
group by PolicyType
order by Policies asc;
-- Sedan-Collision, Sedan-Liability and Sedan-All Perils are the top three policies
-- with just a change in the query, from desc to asc, Sport-Liability, Utility-Liability, Sport-All Perils are the least

-- What are the top 10 policyNumbers always involved in car accidents?
select PolicyNumber, COUNT(*) as PeopleInAccidents
from policy
group by PolicyNumber
having COUNT(*) > 1
order by PeopleInAccidents desc
limit 10;
-- None of the policy holders have claimed more than once

-- Who are the representatives always handling cases?
select RepNumber, count(*) as InsuranceRepresentatives
from policy
group by  RepNumber
order by InsuranceRepresentatives asc;
-- Rep 7 handled 1069, rep 9 handled 999, rep 1 and 5 handled 987
-- changing desc to asc, rep 13 handled the least ampunt of cases(892)

-- Count how many of the cases they handled where fraudulent
select p.RepNumber, count(*) as FraudClaims
from policy p
join accident a on p.PolicyNumber = a.PolicyNumber
where a.FraudFound_P = 1
group by p.RepNumber
having COUNT(*) > 1
order by FraudClaims asc;
-- Rep 7 had the most fraudulent claims given(but we probably should fire them because they also have the highest claim entry)
-- followed by 10, 6, 9 and 1
-- Rep 12 has the least fraudulent claims

-- Which deductible amounts are associacted with fraud?
select p.Deductible, count(*) FraudulentAmounts
from policy p
join accident a on p.PolicyNumber = a.PolicyNumber
where FraudFound_P = 1
group by Deductible
order by FraudulentAmounts desc;
-- the amount 400 is the most fraudulent amount added before the insurance payouts
-- with 300 being the least appearing on fraudulent payouts

-- How are the drivers involved in accidents rated?
select DriverRating, count(*) as RatingsOfDrivers
from policyholder
group by DriverRating;
-- most drivers involved in accidents are rated 1(that's pretty bad) at 3944
-- but 3791 of them are rated 4 

-- Which Driver rating is mostly associated with fraudulent claims?
select ph.DriverRating, count(*) as driverswithfrauds
from policyholder ph
join accident a on ph.policynumber = a.policynumber
where a.fraudfound_p = 1
group by ph.driverrating
order by driverswithfrauds desc;
-- drivers with a rating of 3 are the top ones involved in fraudulent claims 

-- Police reports filed against fraudulent claims?
select PoliceReportFiled, count(*) as fraudulentreports
from accident
where FraudFound_P = 1
group by PoliceReportFiled
order by fraudulentreports desc;
-- fraudulent claims made without police report being filed are 907
-- fraudulent claims made with police report being filed are 16
-- I guess it's hard to involve police false claims

-- Police reports filed with witnesses present
select PoliceReportFiled, count(*) as reportswithwitnesses
from accident
where WitnessPresent = "Yes"
group by PoliceReportFiled
order by reportswithwitnesses desc;
-- when a police report was filed, there were 40 witnesses
-- when a police report was not filed there were 47 witnesses(might even be actors posed as witnesses)

-- Agent type associated with fraud
select p.AgentType, count(*) as agentswithfraud
from policy p
join accident a on p.PolicyNumber = a.PolicyNumber
where FraudFound_P = 1
group by AgentType
order by agentswithfraud desc;
-- external agents involved with fraud at a count of 919
-- internal agents involved with fraud count at 4(was expecting 0 but at least we dont have to fire alot of people)

-- Most appearing policy package in claims
select BasePolicy, count(*) as policypackages
from policy
group by BasePolicy
order by policypackages desc;
-- Collision is leading with 5962, followed by Liability at 5009 then All Perils as 4448