use EZSuppliesDB
go
drop table if exists Customer
go
create table dbo.Customer(
    CustomerId int not null identity primary key,
    ShopName varchar(50) not null constraint ck_Customer_ShopName_cannot_be_blank check(ShopName <> ''),
    FirstName varchar(30) not null constraint ck_Customer_FirstName_cannot_be_blank check(FirstName <> ''),
    LastName varchar(30) not null constraint ck_Customer_LastName_cannot_be_blank check(LastName <> ''),
    StreetAddress varchar(50) not null constraint ck_Customer_StreetAddress_cannot_be_blank check(StreetAddress <> ''),
    City varchar(30) not null constraint ck_Customer_City_cannot_be_blank check(City <> ''),
    StateCode char(2) not null constraint ck_Customer_StateCode_cannot_be_either_NJ_NY_MD_or_PA check(StateCode in ('NJ', 'NY', 'MD', 'PA')),
    Zip varchar(5) not null constraint ck_Customer_Zip_must_be_between_5_and_10_digits check(len(Zip) between 5 and 10),

    PhoneNumber varchar(15) not null constraint ck_Customer_PhoneNumber_must_be_between_10_and_15_digits check(len(PhoneNumber) between 10 and 15),
    YearCreated int not null constraint ck_Customer_YearCreated_must_be_greater_than_or_equal_to_1980 check(YearCreated >= 1980),
    AmountPurchased2021 int not null constraint ck_Customer_AmountPurchased2021_must_be_equal_to_or_greater_than_200 check(AmountPurchased2021 >= 200),
--2022 is not over yet
    AmountPurchased2022 int not null constraint ck_Customer_AmountPurchased2022_must_be_equal_or_greater_than_200 check(AmountPurchased2022 >= 200),
--cel why is the varchar 200 if 'COD', 'Net 15', 'Net 30'and 'Net 60' are the only options
--cel why are blanks allowed
    Terms varchar(200) not null default '' constraint ck_Customer_terms_must_be_COD_Net15_Net30_Net60_or_blank check(Terms in ('COD', 'Net 15', 'Net 30', 'Net 60', '')),
    TotalPaid int not null constraint ck_Customer_TotalPaid_must_be_greater_than_zero check(TotalPaid > 0),
--cel CustomerCode needs to be unique itself
    CustomerCode as concat(substring(ShopName, 1, 3), substring(FirstName, 1, 3), right(PhoneNumber, 4)),
    constraint u_Customer_ShopName_CustomerCode unique(ShopName, CustomerCode)
)
go
