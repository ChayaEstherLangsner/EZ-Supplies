/*
Customer
--cel missing CustomerID column
--cel diff varchar allowance in table
    ShopName varchar(30) not null not blank
    FirstName varchar(30) not null not blank
    LastName varchar(30) not null not blank
--cel diff varchar allowance in table
    StreetAddress varchar(30) not null not blank
    City varchar(30) not null not blank
    StateCode char(2) not null not blank, statecode must be NJ NY MD or PA
    Zip varchar(5) not null must be between 5 and 10 digits
    PhoneNumber varchar(15) must be between 10 and 15 digits
--cel diff constraint in table 
    YearCreated int not null greater than zero
--cel diff constraint in table 
    AmoutPurchased2021 int not null greater than zero
--cel diff constraint in table 
    AmoutPurchased2022 int not null greater than zero
--cel diff in table 
    Terms varchar(100) not null 
    Total Paid int not null must be greater than zero
--cel you didnt write the persisted columns and multi column constraints
*/