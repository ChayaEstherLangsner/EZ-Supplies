use EZSuppliesDB
go 
delete Customer 
go
insert Customer(ShopName, FirstName, LastName, StreetAddress, City, StateCode, Zip, PhoneNumber, YearCreated, AmountPurchased2021, AmountPurchased2022, Terms, TotalPaid)
select 'Printing Plus', 'Josh', 'Kushner', '46 Cross St.', 'Jackson Township', 'NJ', '08527', '732-227-5897', 2005, 20000, 7000, 'COD', 15000
union select 'Excellent Printing', 'Donald', 'Smith', '52 Main Ave', 'Passaic', 'NJ', '07055', '973-556-9999', 2020, 250000, 375000, 'Net 60', 400000
union select 'Universal Printing', 'James', 'Martinis', '3506 Edwin St', 'Silver Spring', 'MD', '20902', '240-562-9856', 1999, 75000, 78000, 'COD', 153000
union select 'Better Graphics and Printing', 'Kim', 'Kimberly', '265 W 37th', 'New York', 'NY', '10018', '646-441-1236', 2006, 60000, 80000, 'Net 15', 200000
union select 'City Printing', 'Chaim', 'Schwartz', '2974 John F. Kennedy Blvd', 'Jersey City', 'NJ', '07306', '201-456-7412', 2000, 250, 700, 'Net 30', 250
union select 'Unique Print', 'Mark', 'Turner', '3819 24th St', 'Long Island City', 'NY', '11101', '718-232-3699', 1981, 90000, 110000, 'COD', 150000
union select 'Print Easy', 'Steve', 'Smith', '27 Orchard St', 'Monsey', 'NY', '10952', '845-761-1123', '2003', 20000, 30000, 'COD', 50000
go
select * from Customer 