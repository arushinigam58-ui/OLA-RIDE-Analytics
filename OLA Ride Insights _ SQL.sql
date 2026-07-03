Drop table if exists OLA_Ride_Insights;

--create table OLA_Ride_Insights
create table OLA_Ride_Insights(
Date date,
Time time,
Booking_ID varchar(50),
Booking_Status varchar(50),
Customer_ID varchar(50),
Vehicle_Type varchar(50),
Pickup_Location varchar(50),
Drop_Location varchar(50),
V_TAT int,
C_TAT int,
Canceled_Rides_by_Customer varchar(50),
Canceled_Rides_by_Driver varchar(50),
Incomplete_Rides varchar(50),
Incomplete_Rides_Reason varchar(50),
Booking_Value int,
Payment_Method varchar(50),
Ride_Distance int,
Driver_Ratings float,
Customer_Rating float
);

select * from  OLA_Ride_Insights;

--SQL Query

--1. Retrieve all successful bookings:
select * from OLA_Ride_Insights
where booking_status='Success';

--2. Find the average ride distance for each vehicle type:
select vehicle_type,
round(avg(ride_distance),2) as avg_distance
from OLA_Ride_Insights
group by vehicle_type;

--3. Get the total number of cancelled rides by customers:
select 
count(canceled_rides_by_customer) as count_cancellation
from OLA_Ride_Insights;

--4. List the top 5 customers who booked the highest number of rides:
select customer_id ,
count(*) as total_booking
from OLA_Ride_Insights
group by customer_id
order by total_booking desc
limit 5;

--5. Get the number of rides cancelled by drivers due to personal and car-related issues:
select  canceled_rides_by_driver, 
count(*) as total_rides
from OLA_Ride_Insights
where canceled_rides_by_driver ='Personal & Car related issue'
group by canceled_rides_by_driver ;




--6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
select 
max(driver_ratings) as max_rating,
min(driver_ratings) as min_rating
from OLA_Ride_Insights
where vehicle_type='Prime Sedan';



--7. Retrieve all rides where payment was made using UPI:
select * from  OLA_Ride_Insights
where payment_method='UPI';


--8. Find the average customer rating per vehicle type:
select vehicle_type,
avg(customer_rating) as avg_rating
from  OLA_Ride_Insights
group by vehicle_type;



--9. Calculate the total booking value of rides completed successfully:
select booking_status,
sum(booking_value) as total_booking
from  OLA_Ride_Insights
where booking_status= 'Success'
group by booking_status;



--10. List all incomplete rides along with the reason
select booking_id,customer_id, vehicle_type,
incomplete_rides_reason
from  OLA_Ride_Insights
where incomplete_rides= 'Yes';

