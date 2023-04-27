/* All Columns in Smart Watchs */

Select * from public."Smart Watchs";

/* Number of brands in smart watch's */

Select Distinct Count("Brand") from public."Smart Watchs";

/* Which Apple Model has highest price */

Select "Brand","Model","Price (USD)" from public."Smart Watchs" 
Where "Brand" = 'Apple'
order by "Price (USD)" desc limit 1

/* Which Top 5 watch brands and their model have large display */

Select "Brand","Model","Display Size (inches)" from public."Smart Watchs" 
Where "Display Size (inches)" is not null
and "Display Size (inches)" != 'N/A'
order by "Water Resistance (meters)" desc limit 5

/* Top 5 watch's having highest water resistant in terms of meters */

Select "Brand","Model","Water Resistance (meters)" from public."Smart Watchs" 
Where "Water Resistance (meters)" is not null
and "Water Resistance (meters)" != 'Not specified'
order by "Water Resistance (meters)" desc limit 5


/* Which watch have highest battery life (top 5) */

Select distinct "Brand","Model","Battery Life (days)" from public."Smart Watchs" 
Where "Water Resistance (meters)" is not null
order by "Battery Life (days)" desc limit 5 


/* Which watch have least Battery life */

Select distinct "Brand","Model","Battery Life (days)" from public."Smart Watchs" 
Where "Water Resistance (meters)" is not null
order by "Battery Life (days)" asc limit 5


/* How many watch's have NFC feature */

Select distinct count("Model") from public."Smart Watchs" 
Where "NFC" = 'Yes' 


/* How many watch's have GPS feature */

Select distinct count("Model") from public."Smart Watchs" 
Where "GPS" = 'Yes'


/* what are the types of display available in smart watch'smart */

Select distinct "Display Type" from public."Smart Watchs" 
where "Display Type" is Not null

/* Which Smart watch brand has highest price */

Select distinct "Brand","Model","Price (USD)" from public."Smart Watchs" 
order by "Price (USD)" limit 1