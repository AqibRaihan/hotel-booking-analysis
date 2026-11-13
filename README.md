**Hotel Booking Analysis Using SQL Server and Power BI**

A beginner portfolio project exploring hotel booking revenue, stay patterns, and parking requests using SQL Server and Power BI.

This project followed a tutorial and helped me practice importing data, combining tables, joining lookup data, creating calculations, and designing an interactive dashboard.

**Project Questions**

How does estimated booking revenue vary across years and hotel types?
What patterns appear in revenue over time?
How do parking requests compare with total booked nights?

**Tools Used**

SQL Server and SQL Server Management Studio
Power BI Desktop
Power Query and DAX

**Project Workflow**

I imported the yearly hotel booking CSV files into SQL Server and combined the 2018, 2019, and 2020 tables using a CTE and UNION.
I joined the combined bookings with market segment and meal cost lookup tables, then connected the prepared data to Power BI.
I created calculations for revenue, total nights, average ADR, average discount, and parking requests.
I built and customized the dashboard using summary cards, trend charts, a yearly matrix, and a donut chart.

**Dashboard Features**

The dashboard includes summary cards for revenue, average ADR, total nights, average discount, and parking requests.
Small trend charts appear beneath selected cards. The main revenue chart compares City Hotel and Resort Hotel over time.
A yearly table summarizes revenue and parking requests, while a donut chart shows revenue share by hotel type.
Filters allow users to explore reservation status dates, hotel types, and guest countries.

**Observations from the Dashboard**

The revenue card displays approximately 29.13 million.

Average ADR is 104.44, and total booked nights are approximately 367.94 thousand.
The yearly table shows the highest revenue in 2019, at approximately 15.50 million.
Revenue is fairly evenly split between the two hotel types, at approximately 51.68 percent and 48.32 percent.
The yearly table shows 8,692 parking requests and a ratio of parking requests to booked nights of 2.36 percent.
These observations describe the saved dashboard view. Results can change when filters are applied.

**Metric Definitions**

Revenue before discounts in SQL is calculated by multiplying total stay nights by ADR and summing the results across bookings.

Estimated revenue in Power BI is calculated by multiplying total stay nights by ADR and by one minus the discount, then summing the results across bookings.
Total Nights is the sum of weeknight stays and weekend stays across bookings.
Average ADR is the average of the ADR field across booking records.
Average Discount is the average of the joined discount field.
Parking Requests is the sum of required car parking spaces.
Parking Percentage is calculated by dividing parking requests by total nights and multiplying by one hundred.

**Interpretation Notes**

Revenue is an estimate based on booking records. It does not represent verified collected revenue or profit.

The revenue calculation does not explicitly exclude canceled bookings.
The SQL revenue query calculates revenue before discounts, while the Power BI calculation includes discounts.
Parking Percentage measures requests relative to booked nights. It does not measure parking occupancy or the percentage of bookings requesting parking.
Guest country refers to the country of the guest, not the location of the hotel.
Date coverage and filter settings should be considered before interpreting differences between years as growth or decline.
UNION removes exact duplicate rows across the selected columns.

**Repository Contents**

The repository contains the original saved SQL queries, the Power BI report, a dashboard screenshot, and a project overview presentation.
It also contains the booking data for 2018, 2019, and 2020, the corrected market segment lookup, and the meal cost lookup.
The older market segment file is retained in the repository. The main join uses the corrected market segment lookup.

**How to Explore the Project**

View the dashboard screenshot to see the report layout.
Download the PBIX file and open it in Power BI Desktop.
Use the filters to explore the saved report data.
Review the SQL script to understand the table combination, joins, and revenue aggregation.
To refresh the report, import the source CSV files into SQL Server and update the report connection settings to your own server and database.
**
**SQL Execution Note****

The SQL file is preserved as originally saved during the learning process.

In SQL Server, a CTE is available only to the statement immediately following it. The later revenue query references hotels again, so running the entire saved script unchanged will produce an error at that statement unless a separate object named hotels exists.
To run that aggregation independently, repeat the CTE immediately before it.

**What I Learned**

I practiced importing CSV data and troubleshooting data types.
I learned to combine yearly tables using UNION and a CTE and to join booking records with lookup tables.
I developed a better understanding of revenue before and after discounts.
I practiced creating Power BI calculations and interactive visuals.
I improved the dashboard formatting, spacing, labels, and readability.
**Tutorial and Data Credit****

This project follows the Hotel Booking Analysis tutorial by Absent Data and uses the hotel booking files provided with the tutorial.

I customized the dashboard layout, formatting, labels, and presentation as part of my learning.

This is an educational portfolio project, not a commissioned business analysis.

Author

Aqib Raihan
