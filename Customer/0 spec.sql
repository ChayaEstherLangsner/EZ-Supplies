/*
Customer
    ShopName varchar(30) not null not blank
    FirstName varchar(30) not null not blank
    LastName varchar(30) not null not blank
    StreetAddress varchar(30) not null not blank
    City varchar(30) not null not blank
    StateCode varchar(20) not null not blank
    Zip varchar(10) not null must be between 5 and 10 digits
    PhoneNumber varchar(15) must be between 10 and 15 digits
    YearCreated int not null greater than zero
    AmoutPurchased2021 int not null greater than zero
    AmoutPurchased2022 int not null greater than zero
    Terms varchar(100) not null 
    Total Paid int not null must be greater than zero
*/