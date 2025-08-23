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
There are 31 features all explained below:
Month – Month of the accident.
WeekOfMonth – Which week of the month the accident occurred.
DayOfWeek – Day of the week the accident occurred.
Make – Car manufacturer (e.g., Honda, Toyota).
AccidentArea – Where the accident happened (Urban or Rural).
DayOfWeekClaimed – Day of the week the claim was filed.
MonthClaimed – Month the claim was filed.
WeekOfMonthClaimed – Which week of the month the claim was filed.
Sex – Gender of the policyholder.
MaritalStatus – Marital status of the policyholder.
Age – Age group of the policyholder.
Fault – Indicates who was at fault (Policyholder or Third Party).
PolicyType – Type of insurance policy.
VehicleCategory – Category of the insured vehicle.
VehiclePrice – Price range of the vehicle.
FraudFound_P – Indicates if the claim was fraudulent (0 = No, 1 = Yes).
PolicyNumber – Insurance policy identifier.
RepNumber – ID of the claims representative or report number.
Deductible – Amount the policyholder pays before insurance covers the rest.
DriverRating – Rating of the driver’s risk profile.
Days_Policy_Accident – Days between policy start and accident date.
Days_Policy_Claim – Days between policy start and claim date.
PastNumberOfClaims – Number of previous claims by the policyholder.
AgeOfVehicle – Age range of the vehicle.
AgeOfPolicyHolder – Age range of the policyholder.
PoliceReportFiled – Was a police report filed? (Yes/No).
WitnessPresent – Was there a witness to the accident? (Yes/No).
AgentType – Type of insurance agent handling the policy.
NumberOfSuppliments – Number of additional claim adjustments after initial report.
AddressChange_Claim – How recently the policyholder changed address.
NumberOfCars – Number of cars owned by the policyholder.
Year – Year the claim was recorded.
BasePolicy – Basic policy package.

## 5. Contributing
I will assume that you have cloned the repo. Then create a branch with your full name. Upload any file you might want to add on your branch and the create a pull request, I will merge(I am always monitoring my emails). To avoid merge conflicts, use the same file name I used. I will also add you as a contributor on the readMe ile. Have Fun!

## 6. License
CC0: Public Domain

## 7. Contact
Email: motshabimohola@gmail.com
Kaggle link: https://www.kaggle.com/datasets/shivamb/vehicle-claim-fraud-detection/data

## 8. Contributors
Motshabi Gope Mohola
