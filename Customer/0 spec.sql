/*
Customer
    CustomerId pk
    ShopName varchar(50) not null not blank
    FirstName varchar(30) not null not blank
    LastName varchar(30) not null not blank
    StreetAddress varchar(50) not null not blank
    City varchar(30) not null not blank
    StateCode char(2) not null not blank, statecode must be NJ NY MD or PA
    Zip varchar(5) not null must be between 5 and 10 digits
    PhoneNumber varchar(15) must be between 10 and 15 digits
    YearCreated int not null greater than 1980
    AmoutPurchased2021 int not null greater than 200
    AmoutPurchased2022 int not null greater than zero
    Terms varchar(6) not null must be 'cod', 'net 15', 'net 30', 'net 60'
    Total Paid int not null must be greater than zero
    CustomerCode computed unique
*/