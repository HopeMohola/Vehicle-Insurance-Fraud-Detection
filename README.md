# Vehicle-Insurance-Fraud-Detection
This project detects whether or not a claim is fraudulent. 

# Badges
![Build Status](https://img.shields.io/badge/build-passing-brightgreen)
![License](https://img.shields.io/badge/license-CC0%201.0-lightgrey)

# Background
I was watching reels on Facebook when a reel about car accident popped up. What was funny about this accident was that it was not coincidental. The driver ahead kept braking, on the highway. It didnt make sense because it was on the fast lane. When the car behind tried to overtake it, it would make sure that it doesn't pass. Up until it hit the brakes and the car behind hit it. You may wonder how I saw this, the car behind had a dashcam. I also went through the comments and discovered that this is a common scam of vehicle insurance claims. And then it hit me, what if the car behind did not have a dashcam? How could we know that a claim is fraudulent or not? What makes a claim fraudulent?

## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [Skills/Tools](#Skills/Tools)
- [Features](#features)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#Contact)
- [Contributors](#Contributors)

## 1. Installation
1. Clone the repo:
   ```bash
   git clone https://github.com/username/project.git
2. Install dependencies
pip install -r requirements.txt

## 2. Usage
You can use the SQL file in mySQL and the data visualization file in PowerBI.

## 3.Skills/Tools Used
1. SQL
2. Power BI

## 4. Features
There are 33 features all explained below:
1. Month – Month of the accident.
2. WeekOfMonth – Which week of the month the accident occurred.
3. DayOfWeek – Day of the week the accident occurred.
4. Make – Car manufacturer (e.g., Honda, Toyota).
5. AccidentArea – Where the accident happened (Urban or Rural).
6. DayOfWeekClaimed – Day of the week the claim was filed.
7. MonthClaimed – Month the claim was filed.
8. WeekOfMonthClaimed – Which week of the month the claim was filed.
9. Sex – Gender of the policyholder.
10. MaritalStatus – Marital status of the policyholder.
11. Age – Age group of the policyholder.
12. Fault – Indicates who was at fault (Policyholder or Third Party).
13. PolicyType – Type of insurance policy.
14. VehicleCategory – Category of the insured vehicle.
15. VehiclePrice – Price range of the vehicle.
16. FraudFound_P – Indicates if the claim was fraudulent (0 = No, 1 = Yes).
17. PolicyNumber – Insurance policy identifier.
18. RepNumber – ID of the claims representative or report number.
19. Deductible – Amount the policyholder pays before insurance covers the rest.
20. DriverRating – Rating of the driver’s risk profile.
21. Days_Policy_Accident – Days between policy start and accident date.
22. Days_Policy_Claim – Days between policy start and claim date.
23. PastNumberOfClaims – Number of previous claims by the policyholder.
24. AgeOfVehicle – Age range of the vehicle.
25. AgeOfPolicyHolder – Age range of the policyholder.
26. PoliceReportFiled – Was a police report filed? (Yes/No).
27. WitnessPresent – Was there a witness to the accident? (Yes/No).
28. AgentType – Type of insurance agent handling the policy.
29. NumberOfSuppliments – Number of additional claim adjustments after initial report.
30. AddressChange_Claim – How recently the policyholder changed address.
31. NumberOfCars – Number of cars owned by the policyholder.
32. Year – Year the claim was recorded.
33. BasePolicy – Basic policy package.

## 5. Contributing
I will assume that you have cloned the repo. Then create a branch with your full name. Upload any file you might want to add on your branch and the create a pull request, I will merge(I am always monitoring my emails). To avoid merge conflicts, use the same file name I used. I will also add you as a contributor on the readMe ile. Have Fun!

## 6. License
CC0: Public Domain

## 7. Contact
Email: motshabimohola@gmail.com
Kaggle link: https://www.kaggle.com/datasets/shivamb/vehicle-claim-fraud-detection/data
Please Note: When I downloaded the dataset, it was in the form of a .xls file with 33 features. I saved it as a .csv file and imported it into mySQL. Then from there I created 5 Tables using those features, namely:
         1. accident
         2. policy
         3. policyholder
         4. time
         5. vehicle
I have uploaded the database on this repo and you can use it as you see fit.

## 8. Contributors
Motshabi Gope Mohola
