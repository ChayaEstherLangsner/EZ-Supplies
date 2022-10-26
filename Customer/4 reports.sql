--These 2 could not be included in the table so I did them as reports.
--cel include all necessary columns
--Any customer that spent less than $1,000 since 2021 should have the words 'Red Flag' in double quotes added after the name of the printing shop
--cel calculation is wrong, it's when the total of the 2 years is less than 1000
select ShopName = case
                     when c.AmountPurchased2022 - c.AmountPurchased2021 < 1000 then concat(c.ShopName, ' "Red Flag"') 
                     else c.ShopName 
                  end  
from customer c
--cel should be amt purchased - total paid, not the other way around, and it's only if their terms are COD
--Customers that owe $10,000 or more and are COD, should have the words 'Credit Hold' instead of their address displayed, this is because we can't deliver to them until they pay what they owe.
select StreetAddress = case 
                         when ((c.TotalPaid - (c.AmountPurchased2021 + c.AmountPurchased2022)) >= 10000) then replace(c.StreetAddress, c.StreetAddress, 'Credit Hold') 
                         else c.StreetAddress 
                       end
from customer c

--Reports:

--1) We want to see which customers are increasing in sales when comparing 2021 to 2022. 
--Please add a growing/dropping column calculating if each customer is growing based on the amount purchased per month in 2021 vs 2022, For 2021, divide the year sales into 12 to get the total per month and for 2022, which ever month you are in when entering this data is the amount you should divide the sales by. 
--Because of inflation in order to be considered growing they need to have at least a 10% increase per month. 
--cel if it's 'c.AmountPurchased2022 / 10' then it will always only calculate it to be in the month of October 
--cel the 10% increase should be for 2022 
select 'Growing/Dropping' = 
    case 
        when (c.AmountPurchased2022 / 10) >= ( 1.1 * (c.AmountPurchased2021 / 12)) then 'Growing' 
        else 'Dropping' 
    end, CustomerName = concat(c.FirstName, ' ', c.LastName)
from customer c
--2) Everything till 2021 is paid up in full but in 2021 some of our staff left and we fell behind in making sure everyone paid. Show us how much money each customer owes, if they are up to date in payment(it should say UTD, or if they paid too much, how much they owe (should be a negative number).
--cel UTD is only if paid in full, if paid more, show how much extra they paid
select AmountOwes = 
case
when (c.TotalPaid - (c.AmountPurchased2021 + c.AmountPurchased2022)) >= 0 then 'UTD'
else convert(varchar,(c.TotalPaid - (c.AmountPurchased2021 + c.AmountPurchased2022)))
end 
, CUstomerName = concat(c.FirstName,  ' ', c.LastName)
from customer c 
--3) Show us the total amount of sales per year, per State (2022, what we have so far), excluding customers that owe more than 30,000 and are COD
--cel it should be EXcluding any customers that owe more than 30,000 and are COD, show each states sales(meaning amount purchased) for the year
select TotalSales2022 = sum(c.TotalPaid - c.AmountPurchased2022), c.StateCode
from customer c
where (c.TotalPaid - c.AmountPurchased2022) < 30000
and Terms <> 'COD'
group by c.StateCode

select TotalSales2021 = sum(c.TotalPaid - c.AmountPurchased2021), c.StateCode
from customer c
where (c.TotalPaid - c.AmountPurchased2021) < 30000
and Terms <> 'COD'
group by c.StateCode


