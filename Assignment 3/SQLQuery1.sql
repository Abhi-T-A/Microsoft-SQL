--ASSIGNMENT 3--
USE Jomato;
select * from [dbo].[Jomato];
CREATE TABLE restaurant (
    restaurant_id INT PRIMARY KEY IDENTITY(1,1), 
    restaurant_name VARCHAR(100),
    type VARCHAR(50),
    cuisine VARCHAR(50),
    table_booking INT,
    area VARCHAR(100),
    rating FLOAT
);
select * from Restaurant
SET IDENTITY_INSERT restaurant ON;

INSERT INTO restaurant 
(restaurant_id, restaurant_name, type, cuisine, table_booking, area, rating)
VALUES
(1, 'Spice Villa', 'Casual Dining', 'North Indian', 1, 'Indiranagar', 4.5),
(2, 'Cafe Brew', 'Cafe', 'Cafe', 0, 'MG Road', 4.0),
(3, 'Ocean Bites', 'Fine Dining', 'Seafood', 2, 'Koramangala', 4.8),
(4, 'Tandoori Flames', 'Casual Dining', 'Tandoori', 1, 'Whitefield', 4.3),
(5, 'Veggie Delights', 'Cafe', 'Cafe', 3, 'HSR Layout', 4.2),
(6, 'Biryani House', 'Quick Bites', 'Hyderabadi', 0, 'Jayanagar', 3.9),
(7, 'Noodle Nation', 'Casual Dining', 'Chinese', 2, 'BTM Layout', 4.6),
(8, 'Grill Master', 'Fine Dining', 'Barbecue', 1, 'Koramangala', 4.7),
(9, 'Taco Town', 'Quick Bites', 'Mexican', 0, 'Indiranagar', 4.1),
(10, 'Sweet Tooth', 'Dessert Parlor', 'Desserts', 1, 'HSR Layout', 4.4);

select * from Restaurant

 --Tasks to be performed:--
 /*1. Create a stored procedure to display the restaurant name, type and cuisine where the
 table booking is not zero.*/
CREATE PROCEDURE GetRestaurantsWithBooking
AS
BEGIN
    SELECT restaurant_name, type, cuisine
    FROM restaurant
    WHERE table_booking > 0;
END;
EXEC GetRestaurantsWithBooking;

select * from Restaurant

/*2.Create a transaction and update the cuisine type ‘Cafe’ to ‘Cafeteria’. Check the result
 and rollback it.*/
 BEGIN TRANSACTION;

-- Update 'Cafe' to 'Cafeteria'
UPDATE restaurant
SET cuisine = 'Cafeteria'
WHERE cuisine = 'Cafe';

select * from Restaurant
-- Check the result of the update
SELECT * FROM restaurant WHERE cuisine = 'Cafeteria';

-- Rollback the transaction
ROLLBACK;
select * from Restaurant
-- Verify that the rollback worked
SELECT * FROM restaurant WHERE cuisine = 'Cafe';

/*3. Generate a row number column and find the top 5 areas with the highest rating of
 restaurants.*/
WITH RankedAreas AS (
    SELECT 
        area,
        rating,
        ROW_NUMBER() OVER (PARTITION BY area ORDER BY rating DESC) AS row_num
    FROM restaurant
)
SELECT TOP 5 area, rating AS highest_rating
FROM RankedAreas
WHERE row_num = 1
ORDER BY rating DESC;
--4.Use the while loop to display the 1 to 50.
DECLARE @i INT = 1;

WHILE @i <= 50
BEGIN
    PRINT @i;
    SET @i = @i + 1;
END;

/* 5. Write a query to Create a Top rating view to store the generated top 5 highest rating of
 restaurants.
*/
CREATE VIEW TopRatingView AS
WITH RankedRestaurants AS (
    SELECT 
        area,
        rating,
        ROW_NUMBER() OVER (PARTITION BY area ORDER BY rating DESC) AS row_num
    FROM restaurant
)
SELECT TOP 5 area, rating
FROM RankedRestaurants
WHERE row_num = 1
ORDER BY rating DESC;

SELECT * FROM TopRatingView;

-- 6. Create a trigger that give an message whenever a new record is inserted.
CREATE TRIGGER trg_AfterInsertRestaurant
ON restaurant
AFTER INSERT
AS
BEGIN
    PRINT 'A new restaurant record has been inserted.';
END;
