Create Database Jomato
use Jomato;
select * from [dbo].[Jomato];
--ASSIGNMENT 2--
--DATASET:JOMATO--
CREATE TABLE Restaurants (
    OrderId INT,
    RestaurantName NVARCHAR(255),
    RestaurantType NVARCHAR(100),
    Rating FLOAT,
    No_of_Rating INT,
    AverageCost INT,
    OnlineOrder NVARCHAR(10),
    TableBooking NVARCHAR(10),
    CuisinesType NVARCHAR(255),
    Area NVARCHAR(100),
    LocalAddress NVARCHAR(255),
    Delivery_time INT
);

INSERT INTO Restaurants VALUES 
(1, 'L-81 Cafe', 'Quick Bites', 3.9, 48, 400, 'Yes', 'No', 'Fast Food, Beverages', 'Byresandra,Tavarekere,Madiwala', 'HSR', 59),
(2, 'refuel', 'Cafe', 3.7, 37, 400, 'Yes', 'No', 'Cafe, Beverages', 'Bannerghatta Road', 'Bannerghatta Road', 56),
(3, 'Biryani Central', 'Casual Dining', 2.7, 135, 550, 'Yes', 'No', 'Biryani, Mughlai, Chinese', 'Marathahalli', 'Marathahalli', 50),
(4, 'The Bbq', 'Casual Dining', 2.8, 40, 700, 'Yes', 'No', 'BBQ, Continental, North Indian, Chinese, Beverages', 'Bellandur', 'Bellandur', 57),
(5, 'The Bbq', 'Takeaway, Delivery', 3.4, 37, 200, 'No', 'No', 'Mughlai, Biryani, Chinese, North Indian', 'Whitefield', 'Whitefield', 63);
INSERT INTO Restaurants VALUES
(6, 'Italy', 'Casual Dining', 4.1, 305, 700, 'Yes', 'No', 'Italian', 'Banashankari', 'Kumaraswamy Layout', 56),
(7, 'North Parontha Hut', 'Takeaway, Delivery', 2.8, 40, 300, 'No', 'No', 'North Indian', 'Indiranagar', 'Old Airport Road', 53),
(8, '1000 B.C', 'Quick Bites', 3.2, 49, 300, 'Yes', 'No', 'Arabian, Sandwich, Rolls, Burger', 'Byresandra,Tavarekere,Madiwala', 'Koramangala 5th Block', 57),
(9, '1Q1', 'Casual Dining', 3.7, 41, 450, 'No', 'No', 'Biryani, North Indian', 'Byresandra,Tavarekere,Madiwala', 'BTM', 57),
(10, '11 to 11 Express Biriyanis', 'Quick Bites', 3.5, 22, 300, 'Yes', 'No', 'Biryani, Kebab', 'Electronic City', 'Electronic City', 57);

select * from Restaurants

--Tasks to be performed:

--1. Create a user-defined functions to stuff the Chicken into 'Quick Bites'. Eg: 'Quick Chicken Bites'.
CREATE FUNCTION dbo.fn_StuffChickenInQuickBites (@RestaurantType NVARCHAR(100))
RETURNS NVARCHAR(100)
AS
BEGIN
    DECLARE @Result NVARCHAR(100)

    IF @RestaurantType = 'Quick Bites'
        SET @Result = 'Quick Chicken Bites'
    ELSE
        SET @Result = @RestaurantType

    RETURN @Result
END;
select * from Restaurants

--2. Use the function to display the restaurant name and cuisine type which has the maximum number of rating.
SELECT RestaurantName, CuisinesType, No_of_Rating
FROM Restaurants
WHERE No_of_Rating = (
    SELECT MAX(No_of_Rating) FROM Restaurants
);

/*3. Create a Rating Status column to display the rating as 'Excellent' if it has more the 4 start rating, 
'Good' if it has above 3.5 and below 5 star rating, 'Average' if it is above 3 and below 3.5 and 'Bad' 
if it is below 3 star rating.*/
SELECT RestaurantName, Rating,
  CASE 
    WHEN Rating > 4 THEN 'Excellent'
    WHEN Rating > 3.5 AND Rating <= 4 THEN 'Good'
    WHEN Rating > 3 AND Rating <= 3.5 THEN 'Average'
    ELSE 'Bad'
  END AS RatingStatus
FROM Restaurants
WHERE Rating IS NOT NULL;

/*4. Find the Ceil, floor and absolute values of the rating column and display the current date and 
separately displaythe year, month_name and day.*/
SELECT 
  RestaurantName,
  Rating,
  CEILING(Rating) AS CeilRating,         
  FLOOR(Rating) AS FloorRating,
  ABS(Rating) AS AbsoluteRating,
  GETDATE() AS CurrentDate,              
  YEAR(GETDATE()) AS Year,
  DATENAME(MONTH, GETDATE()) AS Month,   
  DAY(GETDATE()) AS Day
FROM dbo.Restaurants                     
WHERE Rating IS NOT NULL;

--5. Display the restaurant type and total average cost using rollup.
SELECT RestaurantType, SUM(AverageCost) AS TotalCost
FROM Restaurants
WHERE AverageCost IS NOT NULL
GROUP BY RestaurantType WITH ROLLUP;