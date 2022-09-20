/*
Our company name is EZ Supplies.
We are a distributer of printing supplies to printing shops since 1980.
We are working on expanding our business, we want to be every printing shop's main supplier.
In order to buy from us you need to open an account. 
We want to keep track of all our customers that have accounts with us, to know if they are growing customers and if they are up to date on payment.

We want to know  about each customer 
	- Name of customer's shop
	- Contact name- how ever customer wants to be called, first and last name, just first name, just last name…
	- Address, split up into street, city, state, zip 
	- Phone number 
	- Year customer's account was created 
	- Amount customer purchased in 2021
	- Amount customer purchased in 2022 so far- up to when this data is inserted 
	- Customer's terms-if customer has to pay COD (payment before or by delivery) or if they have net terms set up (ex: Net 30 means they have 30 days to pay), then specify the terms
	- The total amount customer paid since the beginning of 2021, up to when this data is inserted

Each account has a unique customer code, which is the first 3 letters of the shop name, the first 3 letters of the contact name and the last 4 digits of the phone number.

Any customer that spent less than $1,000 since 2021 should have the words 'Red Flag' in double quotes added after the name of the printing shop

Customers that owe $10,000 or more and are COD, should have the words 'Credit Hold' instead of their address displayed, this is because we can't deliver to them until they pay what they owe.

We didn’t get any new customers since 2020 

In order to have account with us customers need to spend at least $200 a year 

Questions:

Q: What's the highest a customer would spend per year?
A: An average customer spends between $50,000 to $100,000 per year,
the bigger customers could go up to about $500,000 a year

Q: Can there be more than 1 printing shop with the same name?
A: yes, but their customer code must be different

Q: How many kinds of net terms are their?
A: 3, there is Net 15, Net 30, Net 60,  this is how many days the customer can owe money for

Q: Can you deliver anywhere? Or where do you deliver?
A: We have our own trucks and we only deliver to NJ, NY, MD, PA, we only take customers from these states


Reports:

	1) We want to see which customers are increasing in sales when comparing 2021 to 2022. Please add a growing/dropping column calculating if each customer is growing based on the amount purchased per month in 2021 vs 2022, For 2021, divide the year sales into 12 to get the total per month and for 2022, which ever month you are in when entering this data is the amount you should divide the sales by. 
	Because of inflation in order to be considered growing they need to have at least a 10% increase per month. 
	
	2) Everything till 2021 is paid up in full but in 2021 some of our staff left and we fell behind in making sure everyone paid. Show us how much money each customer owes, if they are up to date in payment(it should say UTD, or if they paid too much, how much they owe (should be a negative number).
	
	3) Show us the total amount of sales per year, per State (2022, what we have so far), excluding customers that owe more than 30,000 and are COD
	
Sample Data:
Printing Plus, Josh, 46 Cross St. Jackson Township NJ, 08527, 732-227-5897, 2005, $20,000, $7,000, COD, 15000
Excellent Printing, Mr. Smith, 52 Main Ave, Passaic, NJ, 07055, 973-556-9999, 2020, $250,000, $375,000, Net 60, $400,000
Universal Printing, James Martinis, 3506 Edwin St, Silver Spring, MD, 20902, 240-562-9856, 1999, $75,000, $78,000, COD,$153,000
Better Graphics and Printing, Kim Kimberly, 265 W 37th, New York, NY 10018, 646-441-1236, 2006, $60,000, $80,000, Net 15, $200,000
City Printing, Schwartz, 2974 John F. Kennedy Blvd, Jersey City, NJ 07306, 201-456-7412, 2000, $250, $700, Net 30, $250
Unique Print, Mark Turner, 3819 24th St, Long Island City, NY 11101, 718-232-3699, 1981, $90,000, $110,000, COD, $150,000
Print Easy, John, 27 Orchard St, Monsey, NY 10952, 845-761-1123, 2003, $20,000, $30,000, COD, 50,000
	
*/