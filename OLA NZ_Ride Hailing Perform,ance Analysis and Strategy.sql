create database Ola_Analytics

use Ola_Analytics

SELECT DISTINCT
    PERCENTILE_CONT(0.5) 
        WITHIN GROUP (ORDER BY avg_vtat) 
        OVER () AS Median_avg_vtat
FROM ola
WHERE avg_vtat IS NOT NULL;

UPDATE ola
SET avg_vtat = 5.78999996185303
WHERE avg_vtat = 0;

UPDATE ola
SET avg_vtat = 5.78999996185303
WHERE avg_ctat = 0;

select * from ola

-----------------------------------------------------------------------------
select * from customers 

CREATE TABLE dim_customers (
    customer_id INT PRIMARY KEY,
    full_name NVARCHAR(100),
    gender CHAR(1),
    signup_date DATE,
    city NVARCHAR(50),
    loyalty_tier NVARCHAR(20)
);

INSERT INTO dim_customers VALUES
(1, 'Olivia Smith', 'F', '2023-01-15', 'Auckland', 'Gold'),
(2, 'Liam Johnson', 'M', '2023-02-10', 'Wellington', 'Silver'),
(3, 'Noah Williams', 'M', '2023-03-05', 'Christchurch', 'Platinum'),
(4, 'Emma Brown', 'F', '2023-04-20', 'Auckland', 'Gold'),
(5, 'Ava Jones', 'F', '2023-05-12', 'Hamilton', 'Bronze'),
(6, 'William Davis', 'M', '2023-06-01', 'Auckland', 'Silver'),
(7, 'Sophia Miller', 'F', '2023-06-15', 'Wellington', 'Gold'),
(8, 'Mason Wilson', 'M', '2023-07-03', 'Christchurch', 'Bronze'),
(9, 'Isabella Taylor', 'F', '2023-07-20', 'Auckland', 'Platinum'),
(10, 'James Anderson', 'M', '2023-08-05', 'Hamilton', 'Silver'),
(11, 'Charlotte Thomas', 'F', '2023-08-18', 'Auckland', 'Gold'),
(12, 'Benjamin Moore', 'M', '2023-09-01', 'Wellington', 'Bronze'),
(13, 'Amelia Martin', 'F', '2023-09-15', 'Christchurch', 'Silver'),
(14, 'Lucas Jackson', 'M', '2023-10-02', 'Auckland', 'Gold'),
(15, 'Mia White', 'F', '2023-10-18', 'Hamilton', 'Platinum'),
(16, 'Ethan Harris', 'M', '2023-11-05', 'Auckland', 'Silver'),
(17, 'Harper Clark', 'F', '2023-11-20', 'Wellington', 'Gold'),
(18, 'Alexander Lewis', 'M', '2023-12-02', 'Christchurch', 'Bronze'),
(19, 'Ella Young', 'F', '2023-12-15', 'Auckland', 'Silver'),
(20, 'Henry King', 'M', '2024-01-05', 'Hamilton', 'Gold');

-----------------------------------

CREATE TABLE dim_drivers (
    driver_id INT PRIMARY KEY,
    full_name NVARCHAR(100),
    vehicle_type NVARCHAR(50),
    join_date DATE,
    city NVARCHAR(50),
    avg_rating DECIMAL(3,2)
);

INSERT INTO dim_drivers VALUES
(101, 'James Taylor', 'Sedan', '2022-11-01', 'Auckland', 4.85),
(102, 'Isabella Martin', 'SUV', '2022-12-15', 'Wellington', 4.70),
(103, 'Ethan Lee', 'Hatchback', '2023-01-20', 'Christchurch', 4.90),
(104, 'Mia White', 'Electric', '2023-02-05', 'Auckland', 4.95),
(105, 'Lucas Harris', 'Sedan', '2023-03-18', 'Hamilton', 4.60),
(106, 'Ava Scott', 'SUV', '2023-04-10', 'Auckland', 4.75),
(107, 'Noah Adams', 'Hatchback', '2023-04-25', 'Wellington', 4.80),
(108, 'Olivia Baker', 'Electric', '2023-05-12', 'Christchurch', 4.88),
(109, 'Liam Carter', 'Sedan', '2023-05-28', 'Auckland', 4.65),
(110, 'Sophia Evans', 'SUV', '2023-06-15', 'Hamilton', 4.72),
(111, 'Mason Foster', 'Hatchback', '2023-07-01', 'Auckland', 4.68),
(112, 'Charlotte Gray', 'Electric', '2023-07-20', 'Wellington', 4.90),
(113, 'Benjamin Hill', 'Sedan', '2023-08-05', 'Christchurch', 4.77),
(114, 'Amelia Hughes', 'SUV', '2023-08-18', 'Auckland', 4.82),
(115, 'Lucas James', 'Hatchback', '2023-09-01', 'Hamilton', 4.66),
(116, 'Mia Kelly', 'Electric', '2023-09-15', 'Auckland', 4.93),
(117, 'Ethan Long', 'Sedan', '2023-10-02', 'Wellington', 4.70),
(118, 'Harper Morgan', 'SUV', '2023-10-18', 'Christchurch', 4.85),
(119, 'Alexander Parker', 'Hatchback', '2023-11-05', 'Auckland', 4.64),
(120, 'Ella Reed', 'Electric', '2023-11-20', 'Hamilton', 4.91);

--- 

CREATE TABLE dim_locations (
    location_id INT PRIMARY KEY,
    area_name NVARCHAR(100),
    city NVARCHAR(50),
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6)
);


INSERT INTO dim_locations VALUES
(201, 'Queen Street', 'Auckland', -36.8485, 174.7633),
(202, 'Lambton Quay', 'Wellington', -41.2865, 174.7762),
(203, 'Cathedral Square', 'Christchurch', -43.5309, 172.6365),
(204, 'Victoria Street', 'Hamilton', -37.7870, 175.2793),
(205, 'Ponsonby Road', 'Auckland', -36.8550, 174.7460),
(206, 'Karangahape Road', 'Auckland', -36.8570, 174.7590),
(207, 'Cuba Street', 'Wellington', -41.2924, 174.7740),
(208, 'Riccarton Road', 'Christchurch', -43.5300, 172.5990),
(209, 'Anglesea Street', 'Hamilton', -37.7830, 175.2810),
(210, 'Parnell Road', 'Auckland', -36.8600, 174.7760),
(211, 'Courtenay Place', 'Wellington', -41.2920, 174.7830),
(212, 'Ferry Road', 'Christchurch', -43.5430, 172.6530),
(213, 'Te Rapa Road', 'Hamilton', -37.7460, 175.2400),
(214, 'Dominion Road', 'Auckland', -36.8840, 174.7440),
(215, 'Willis Street', 'Wellington', -41.2880, 174.7740),
(216, 'Moorhouse Avenue', 'Christchurch', -43.5400, 172.6360),
(217, 'Peachgrove Road', 'Hamilton', -37.7835, 175.2770),
(218, 'Symonds Street', 'Auckland', -36.8530, 174.7690),
(219, 'Ghuznee Street', 'Wellington', -41.2925, 174.7745),
(220, 'Manchester Street', 'Christchurch', -43.5340, 172.6368);

---

CREATE TABLE dim_payments (
    payment_id INT PRIMARY KEY,
    method NVARCHAR(50),
    discount_amount DECIMAL(6,2),
    tip_amount DECIMAL(6,2)
);

INSERT INTO dim_payments VALUES
(301, 'Credit Card', 2.50, 1.00),
(302, 'Debit Card', 0.00, 0.50),
(303, 'Cash', 0.00, 0.00),
(304, 'Ola Money', 1.00, 0.00),
(305, 'PayPal', 0.50, 0.75),
(306, 'Credit Card', 0.00, 2.00),
(307, 'Debit Card', 1.50, 0.00),
(308, 'Cash', 0.00, 1.50),
(309, 'Ola Money', 2.00, 0.50),
(310, 'PayPal', 0.00, 0.25),
(311, 'Credit Card', 1.00, 0.00),
(312, 'Debit Card', 0.50, 0.50),
(313, 'Cash', 0.00, 0.00),
(314, 'Ola Money', 0.75, 0.25),
(315, 'PayPal', 1.25, 0.00),
(316, 'Credit Card', 0.00, 1.50),
(317, 'Debit Card', 0.00, 0.75),
(318, 'Cash', 0.00, 0.25),
(319, 'Ola Money', 1.50, 0.00),
(320, 'PayPal', 0.00, 1.00) ;

--------------------

CREATE TABLE dim_date (
    date_key DATE PRIMARY KEY,
    day INT,
    month INT,
    year INT,
    weekday NVARCHAR(10),
    is_weekend BIT
);

INSERT INTO dim_date VALUES
('2024-07-01', 1, 7, 2024, 'Monday', 0),
('2024-07-02', 2, 7, 2024, 'Tuesday', 0),
('2024-07-03', 3, 7, 2024, 'Wednesday', 0),
('2024-07-04', 4, 7, 2024, 'Thursday', 0),
('2024-07-05', 5, 7, 2024, 'Friday', 0),
('2024-07-06', 6, 7, 2024, 'Saturday', 1),
('2024-07-07', 7, 7, 2024, 'Sunday', 1),
('2024-07-08', 8, 7, 2024, 'Monday', 0),
('2024-07-09', 9, 7, 2024, 'Tuesday', 0),
('2024-07-10', 10, 7, 2024, 'Wednesday', 0),
('2024-07-11', 11, 7, 2024, 'Thursday', 0),
('2024-07-12', 12, 7, 2024, 'Friday', 0),
('2024-07-13', 13, 7, 2024, 'Saturday', 1),
('2024-07-14', 14, 7, 2024, 'Sunday', 1),
('2024-07-15', 15, 7, 2024, 'Monday', 0),
('2024-07-16', 16, 7, 2024, 'Tuesday', 0),
('2024-07-17', 17, 7, 2024, 'Wednesday', 0),
('2024-07-18', 18, 7, 2024, 'Thursday', 0),
('2024-07-19', 19, 7, 2024, 'Friday', 0),
('2024-07-20', 20, 7, 2024, 'Saturday', 1);

-------------------------------

CREATE TABLE fact_bookings (
    booking_id INT PRIMARY KEY,
    customer_id INT FOREIGN KEY REFERENCES dim_customers(customer_id),
    driver_id INT FOREIGN KEY REFERENCES dim_drivers(driver_id),
    pickup_id INT FOREIGN KEY REFERENCES dim_locations(location_id),
    drop_id INT FOREIGN KEY REFERENCES dim_locations(location_id),
    booking_datetime DATETIME,
    status NVARCHAR(20),
    fare_amount DECIMAL(8,2),
    distance_km DECIMAL(5,2),
    payment_id INT FOREIGN KEY REFERENCES dim_payments(payment_id)
);

INSERT INTO fact_bookings VALUES
(5001, 1, 101, 201, 205, '2024-07-01 08:30', 'Completed', 25.50, 8.2, 301),
(5002, 2, 102, 202, 201, '2024-07-01 09:15', 'Cancelled', 0.00, 0.0, 302),
(5003, 3, 103, 203, 204, '2024-07-02 10:00', 'Completed', 18.75, 5.5, 303),
(5004, 4, 104, 205, 201, '2024-07-02 11:45', 'Completed', 30.00, 10.0, 304),
(5005, 5, 105, 204, 203, '2024-07-03 12:30', 'Completed', 22.40, 7.0, 305),
(5006, 6, 106, 206, 210, '2024-07-03 14:15', 'Completed', 15.20, 4.8, 306),
(5007, 7, 107, 207, 211, '2024-07-04 09:00', 'Completed', 19.80, 6.2, 307),
(5008, 8, 108, 208, 212, '2024-07-04 17:45', 'Completed', 27.50, 9.0, 308),
(5009, 9, 109, 209, 213, '2024-07-05 08:10', 'Cancelled', 0.00, 0.0, 309),
(5010, 10, 110, 210, 214, '2024-07-05 19:30', 'Completed', 35.00, 12.0, 310),
(5011, 11, 111, 214, 218, '2024-07-06 07:50', 'Completed', 16.75, 5.0, 311),
(5012, 12, 112, 215, 219, '2024-07-06 20:15', 'Completed', 28.90, 8.5, 312),
(5013, 13, 113, 216, 220, '2024-07-07 09:25', 'Completed', 21.60, 6.8, 313),
(5014, 14, 114, 217, 213, '2024-07-07 18:40', 'Completed', 24.50, 7.5, 314),
(5015, 15, 115, 218, 214, '2024-07-08 08:05', 'Completed', 19.00, 6.0, 315),
(5016, 16, 116, 219, 215, '2024-07-08 21:00', 'Completed', 33.20, 11.0, 316),
(5017, 17, 117, 220, 216, '2024-07-09 10:50', 'Completed', 26.40, 8.0, 317),
(5018, 18, 118, 213, 217, '2024-07-09 16:25', 'Cancelled', 0.00, 0.0, 318),
(5019, 19, 119, 214, 218, '2024-07-10 07:30', 'Completed', 20.50, 6.5, 319),
(5020, 20, 120, 215, 219, '2024-07-10 19:15', 'Completed', 29.80, 9.2, 320);


--------------

CREATE TABLE fact_ratings (
    rating_id INT PRIMARY KEY,
    booking_id INT FOREIGN KEY REFERENCES fact_bookings(booking_id),
    customer_rating INT,
    driver_rating INT,
    feedback NVARCHAR(255)
);

INSERT INTO fact_ratings VALUES
(9001, 5001, 5, 5, 'Smooth ride, friendly driver'),
(9002, 5002, NULL, NULL, 'Cancelled before pickup'),
(9003, 5003, 4, 5, 'Quick and comfortable'),
(9004, 5004, 5, 5, 'Excellent EV experience'),
(9005, 5005, 4, 4, 'Good ride, slight delay'),
(9006, 5006, 5, 5, 'Driver was very polite'),
(9007, 5007, 4, 4, 'Clean car, safe driving'),
(9008, 5008, 5, 5, 'Great service, on time'),
(9009, 5009, NULL, NULL, 'Cancelled by customer'),
(9010, 5010, 5, 4, 'Comfortable SUV ride'),
(9011, 5011, 4, 5, 'Driver knew the best route'),
(9012, 5012, 5, 5, 'Excellent night ride'),
(9013, 5013, 4, 4, 'Smooth but slightly late'),
(9014, 5014, 5, 5, 'Very friendly driver'),
(9015, 5015, 4, 4, 'Good ride overall'),
(9016, 5016, 5, 5, 'Luxury EV experience'),
(9017, 5017, 4, 4, 'Safe and steady driving'),
(9018, 5018, NULL, NULL, 'Cancelled by driver'),
(9019, 5019, 5, 5, 'Perfect morning commute'),
(9020, 5020, 5, 4, 'Smooth evening ride, driver was courteous');

======================================================================================


1. Which city is generating the highest revenue from completed rides? -- (JOIN + GROUP BY)

SELECT dl.city AS City, SUM(fb.fare_amount) AS Total_revenue
FROM fact_bookings fb
JOIN dim_locations dl ON fb.pickup_id = dl.location_id
WHERE fb.status = 'Completed'
GROUP BY dl.city
ORDER BY total_revenue DESC;

Q2. What is the cancellation rate in each city, and where is it the worst? --- (CASE + GROUP BY)

SELECT dl.city as City ,
       round(100.0 * SUM(CASE WHEN fb.status = 'Cancelled' THEN 1 ELSE 0 END) / COUNT(*),2)  AS Cancellation_Rate
FROM fact_bookings fb
JOIN dim_locations dl ON fb.pickup_id = dl.location_id
GROUP BY dl.city
ORDER BY cancellation_rate DESC;

Q3. At what times of the day do we see the highest ride demand? --- (DATEPART + GROUP BY)

SELECT DATEPART(HOUR, fb.booking_datetime) AS Hour_of_Day,
       COUNT(*) AS Total_Rides
FROM fact_bookings fb
WHERE fb.status = 'Completed'
GROUP BY DATEPART(HOUR, fb.booking_datetime)
ORDER BY total_rides DESC;

Q4. Which drivers are bringing in the most revenue for Ola NZ? -- (JOIN + TOP + ORDER BY)

SELECT TOP 5 dd.Full_name, SUM(fb.fare_amount) AS Total_revenue
FROM fact_bookings fb
JOIN dim_drivers dd ON fb.driver_id = dd.driver_id
WHERE fb.status = 'Completed'
GROUP BY dd.full_name
ORDER BY total_revenue DESC;


Q5. Which vehicle type earns the highest fare per kilometre? -- (JOIN + Aggregation + NULLIF)


SELECT dd.vehicle_type, 
       AVG(fb.fare_amount / NULLIF(fb.distance_km,0)) AS avg_fare_per_km
FROM fact_bookings fb
JOIN dim_drivers dd ON fb.driver_id = dd.driver_id
WHERE fb.status = 'Completed'
GROUP BY dd.vehicle_type;

Q6. Which payment method is most preferred by customers? -- (JOIN + GROUP BY)

SELECT dp.method AS Method , COUNT(*) AS Usage_count
FROM fact_bookings fb
JOIN dim_payments dp ON fb.payment_id = dp.payment_id
GROUP BY dp.method
ORDER BY usage_count DESC;

Q7. Which city has the highest average customer rating? -- (JOIN + GROUP BY)

SELECT dl.city, AVG(fr.customer_rating) AS avg_rating
FROM fact_ratings fr
JOIN fact_bookings fb ON fr.booking_id = fb.booking_id
JOIN dim_locations dl ON fb.pickup_id = dl.location_id
WHERE fr.customer_rating IS NOT NULL
GROUP BY dl.city
ORDER BY avg_rating DESC;

Q8. How does loyalty tier affect ride frequency? -- (JOIN + GROUP BY)

SELECT dc.loyalty_tier, COUNT(*) AS ride_count
FROM fact_bookings fb
JOIN dim_customers dc ON fb.customer_id = dc.customer_id
WHERE fb.status = 'Completed'
GROUP BY dc.loyalty_tier
ORDER BY ride_count DESC;

Q9. Which drivers have the highest number of cancellations? -- (JOIN + ORDER BY)

SELECT dd.full_name, COUNT(*) AS cancellations
FROM fact_bookings fb
JOIN dim_drivers dd ON fb.driver_id = dd.driver_id
WHERE fb.status = 'Cancelled'
GROUP BY dd.full_name
ORDER BY cancellations DESC;

Q10. What percentage of rides come from repeat customers? --- (Subquery)

SELECT 
    (SELECT COUNT(DISTINCT customer_id) FROM fact_bookings WHERE status='Completed') AS total_customers,
    (SELECT COUNT(customer_id) - COUNT(DISTINCT customer_id) FROM fact_bookings WHERE status='Completed') AS repeat_rides;

Q11. Which pickup–drop route is most frequently travelled? -- (JOIN + GROUP BY)

SELECT p.area_name AS Pickup_Area, d.area_name AS Drop_Area, COUNT(*) AS Ride_Count
FROM fact_bookings fb
JOIN dim_locations p ON fb.pickup_id = p.location_id
JOIN dim_locations d ON fb.drop_id = d.location_id
WHERE fb.status = 'Completed'
GROUP BY p.area_name, d.area_name
ORDER BY ride_count DESC;

Q12. How do drivers rank based on total revenue earned? -- (Window Function + RANK)

SELECT dd.full_name, SUM(fb.fare_amount) AS total_revenue,
       RANK() OVER (ORDER BY SUM(fb.fare_amount) DESC) AS revenue_rank
FROM fact_bookings fb
JOIN dim_drivers dd ON fb.driver_id = dd.driver_id
WHERE fb.status = 'Completed'
GROUP BY dd.full_name;

Q13. How does daily revenue trend over the month? -- (CTE + Aggregation)

WITH DailyRevenue AS (
    SELECT CAST(fb.booking_datetime AS DATE) AS ride_date,
           SUM(fb.fare_amount) AS total_revenue
    FROM fact_bookings fb
    WHERE fb.status = 'Completed'
    GROUP BY CAST(fb.booking_datetime AS DATE)
)
SELECT * FROM DailyRevenue ORDER BY ride_date;

Q14. Can we get a quick performance summary for any city on demand? -- (Stored Procedure)

CREATE PROCEDURE usp_GetCityPerformance
    @City NVARCHAR(50)
AS
BEGIN
    SELECT dl.city, COUNT(*) AS total_rides, 
           SUM(fb.fare_amount) AS total_revenue,
           AVG(fr.customer_rating) AS avg_rating
    FROM fact_bookings fb
    JOIN dim_locations dl ON fb.pickup_id = dl.location_id
    LEFT JOIN fact_ratings fr ON fb.booking_id = fr.booking_id
    WHERE dl.city = @City
    GROUP BY dl.city;
END;

EXEC usp_GetCityPerformance 
 @City = 'Auckland'

SELECT * FROM DIM_LOCATIONS