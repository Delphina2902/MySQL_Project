create database project1;
use project1;
-- Table: Users
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Table: Destination
CREATE TABLE Destination (
    destination_id INT PRIMARY KEY,
    destination_name VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    description varchar(255),
    attractions varchar(255)
);

-- Table: Trips
CREATE TABLE Trips (
    trip_id INT PRIMARY KEY,
    user_id INT,
    destination_id INT,
    start_date DATE,
    end_date DATE,
    budget DECIMAL(10, 2),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (destination_id) REFERENCES Destinations(destination_id)
);

-- Table: Activities
CREATE TABLE Activities (
    activity_id INT PRIMARY KEY,
    destination_id INT,
    activity_name VARCHAR(255) NOT NULL,
    description varchar(255),
    cost DECIMAL(10, 2),
    FOREIGN KEY (destination_id) REFERENCES Destinations(destination_id)
);

-- Table: Reviews 
CREATE TABLE Reviews (
    review_id INT PRIMARY KEY,
    user_id INT,
    destination_id INT,
    activity_id INT,
    rating INT,
    comments varchar(255),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (destination_id) REFERENCES Destinations(destination_id),
    FOREIGN KEY (activity_id) REFERENCES Activities(activity_id)
);

-- Inserting values into Users table
INSERT INTO Users (user_id, username, email, password) VALUES
(1, 'Anthony_Delphina', 'anthonydelphina29@gmail.com', 'Ammu@2029'),
(2, 'Anto_Nitta', 'antonitta21@gmail.com', 'Nitta@2112'),
(3, 'Michael_Stalin', 'michaelstalin@gmail.com', 'Stalin#123'),
(4, 'Anthony_Albert', 'anthonyalbert13@gmail.com', 'Albert$11'),
(5, 'David_Wilson', 'davidwilson@gmail.com', 'david@3478'),
(6, 'John_Britto', 'johnbritto@gmail.com', 'Britto#27'),
(7, 'Chris_Taylor', 'christaylor@gmail.com', 'Welcome@89'),
(8, 'Anush_Kumar', 'anushkumar@gmail.com', 'GBSUAUK@1234'),
(9, 'Alwyn_Peter', 'alwynpeter04@gmail.com', 'Peter@0904'),
(10, 'Laura_Garcia', 'lauragarcia@gmail.com', 'Laura$5678');

-- Inserting values into Destination table
INSERT INTO Destination (destination_id, destination_name, country, description, attractions) VALUES
(1, 'Paris', 'France', 'City of Love', 'Eiffel Tower, Louvre Museum, Notre-Dame Cathedral'),
(2, 'Rome', 'Italy', 'Eternal City', 'Colosseum, Vatican City, Trevi Fountain'),
(3, 'Tokyo', 'Japan', 'Capital of Japan', 'Tokyo Tower, Senso-ji Temple, Shibuya Crossing'),
(4, 'New York City', 'USA', 'City that never sleeps', 'Statue of Liberty, Central Park, Times Square'),
(5, 'London', 'UK', 'Capital of England', 'Big Ben, Buckingham Palace, Tower of London'),
(6, 'Sydney', 'Australia', 'Harbor City', 'Sydney Opera House, Sydney Harbour Bridge, Bondi Beach'),
(7, 'Dubai', 'UAE', 'City of Gold', 'Burj Khalifa, Palm Jumeirah, Dubai Mall'),
(8, 'Barcelona', 'Spain', 'City of Gaudi', 'Sagrada Familia, Park Guell, Gothic Quarter'),
(9, 'Rio de Janeiro', 'Brazil', 'Marvelous City', 'Christ the Redeemer, Copacabana Beach, Sugarloaf Mountain'),
(10, 'Cape Town', 'South Africa', 'Mother City', 'Table Mountain, Robben Island, Victoria & Alfred Waterfront');

-- Inserting values into Trips table
INSERT INTO Trips (trip_id, user_id, destination_id, start_date, end_date, budget) VALUES
(1, 1, 1, '2024-05-01', '2024-05-10', 3000),
(2, 2, 3, '2024-06-15', '2024-06-25', 2500),
(3, 3, 5, '2024-07-10', '2024-07-20', 3500),
(4, 4, 7, '2024-08-05', '2024-08-15', 4000),
(5, 5, 9, '2024-09-20', '2024-09-30', 2800),
(6, 6, 2, '2024-10-12', '2024-10-22', 3200),
(7, 7, 4, '2024-11-03', '2024-11-13', 3800),
(8, 8, 6, '2024-12-08', '2024-12-18', 2700),
(9, 9, 8, '2025-01-14', '2025-01-24', 4200),
(10, 10, 10, '2025-02-20', '2025-03-02', 3000);

-- Inserting values into Activities table
INSERT INTO Activities (activity_id, destination_id, activity_name, description, cost) VALUES
(1, 1, 'Eiffel Tower Tour', 'Guided tour to the iconic Eiffel Tower', 50),
(2, 2, 'Vatican Museums Tour', 'Explore the art collections in the Vatican Museums', 40),
(3, 3, 'Tokyo Disneyland', 'Fun-filled day at Tokyo Disneyland', 60),
(4, 4, 'Statue of Liberty Cruise', 'Cruise around the Statue of Liberty', 30),
(5, 5, 'London Eye Experience', 'Panoramic views of London from the London Eye', 25),
(6, 6, 'Sydney Harbour Cruise', 'Sightseeing cruise around Sydney Harbour', 45),
(7, 7, 'Burj Khalifa Observation Deck', 'Visit the observation deck of the tallest building in the world', 55),
(8, 8, 'Sagrada Familia Tour', 'Guided tour of the iconic Sagrada Familia', 35),
(9, 9, 'Christ the Redeemer Tour', 'Visit the famous Christ the Redeemer statue', 40),
(10, 10, 'Table Mountain Hike', 'Hiking adventure to the top of Table Mountain', 20);

-- Inserting values into Reviews table
INSERT INTO Reviews (review_id, user_id, destination_id, activity_id, rating, comments) VALUES
(1, 1, 1, 1, 5, 'Amazing experience at the Eiffel Tower!'),
(2, 2, 2, 2, 4, 'Vatican Museums were breathtaking'),
(3, 3, 3, 3, 5, 'Tokyo Disneyland was so much fun!'),
(4, 4, 4, 4, 4, 'Enjoyed the Statue of Liberty cruise'),
(5, 5, 5, 5, 5, 'London Eye offered great views of the city'),
(6, 6, 6, 6, 4, 'Sydney Harbour Cruise was relaxing'),
(7, 7, 7, 7, 5, 'Burj Khalifa provided stunning views of Dubai'),
(8, 8, 8, 8, 4, 'Sagrada Familia Tour was informative'),
(9, 9, 9, 9, 5, 'Christ the Redeemer Tour was unforgettable'),
(10, 10, 10, 10, 4, 'Table Mountain Hike offered breathtaking views');

select * from users;
select * from destination;
select * from trips;
select * from activities;
select * from reviews;

desc users;
desc destination;
desc trips;
desc activities;
desc reviews;

-- Subquery
-- To retrive average rating for a destination
SELECT destination_name, 
       (SELECT AVG(rating) FROM Reviews WHERE Reviews.destination_id = Destination.destination_id) AS avg_rating
FROM Destination;

-- to find trip budget above average budget
SELECT *
FROM Trips
WHERE budget > (SELECT AVG(budget) FROM Trips);

-- to count total activities for each destination
SELECT destination_name, 
       (SELECT COUNT(*) FROM Activities WHERE Activities.destination_id = Destination.destination_id) AS total_activities
FROM Destination;

-- to retrive users  who booked trips to a specific destination 
SELECT username
FROM Users
WHERE user_id IN (SELECT user_id FROM Trips WHERE destination_id = 1);

-- Joins
-- to retrive all trips along with the corresponding user details
SELECT *
FROM Trips
INNER JOIN Users ON Trips.user_id = Users.user_id;

-- to retrive all destinations including those that have no corredponding trip
-- Left join
SELECT *
FROM Destination
LEFT JOIN Trips ON Destination.destination_id = Trips.destination_id;

-- to retrive all activities including those that have no corresponding review
-- right join
SELECT *
FROM Activities
RIGHT JOIN Reviews ON Activities.activity_id = Reviews.activity_id;

-- to compare rows within the same table. In this case,
-- we use it to find users who have planned trips to the same destination, 
-- allowing for potential collaboration or group travel arrangements.
-- Self join
SELECT u1.username AS User1, u2.username AS User2
FROM Trips AS t
JOIN Users AS u1 ON t.user_id = u1.user_id
JOIN Users AS u2 ON t.destination_id = u2.user_id;



