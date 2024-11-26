create database Question3;
use Question3;

CREATE TABLE Sailors (
  Sid INT PRIMARY KEY,
  Sname VARCHAR(255),
  Rating INT,
  Age FLOAT
);

INSERT INTO Sailors (Sid, Sname, Rating, Age) VALUES
(22, 'Dustin', 7, 45),
(29, 'Brutus', 1, 33),
(31, 'Lubber', 8, 55.5),
(32, 'Andy', 8, 25.5),
(58, 'Rusty', 10, 35),
(64, 'Horatio', 7, 35),
(71, 'Zorba', 10, 16),
(74, 'Horatio', 9, 40),
(85, 'Art', 3, 25.5),
(95, 'Bob', 3, 63.5);

CREATE TABLE Boats (
  Bid INT PRIMARY KEY,
  Bname VARCHAR(255),
  Color VARCHAR(255)
);


INSERT INTO Boats (bid, bname, color) VALUES
(101, 'Interlake', 'blue'),
(102, 'Interlake', 'red'),
(103, 'Clipper', 'green'),
(104, 'Marine', 'red');



CREATE TABLE Reserves (
  Sid INT,
  Bid INT,
  Day DATE,
  PRIMARY KEY (Sid, Bid, Day),
  FOREIGN KEY (Sid) REFERENCES Sailors(Sid),
  FOREIGN KEY (Bid) REFERENCES Boats(Bid)
);

INSERT INTO Reserves (sid, bid, day) VALUES
(22, 101, '1998-10-10'),
(22, 102, '1998-10-10'),
(22, 103, '1998-10-8'),
(22, 104, '1998-10-7'),
(31, 102, '1998-11-10'),
(31, 103, '1998-11-6'),
(31, 104, '1998-11-12'),
(64, 101, '1998-9-5'),
(64, 102, '1998-9-8'),
(74, 103, '1998-9-8');


SELECT * 
FROM Sailors S 
JOIN Reserves R ON S.sid = R.sid 
WHERE R.bid = 101;

SELECT B.bname 
FROM Sailors S 
JOIN Reserves R ON S.sid = R.sid 
JOIN Boats B ON R.bid = B.bid 
WHERE S.sname = 'Bob';

SELECT S.sname 
FROM Sailors S 
JOIN Reserves R ON S.sid = R.sid 
JOIN Boats B ON R.bid = B.bid 
WHERE B.color = 'red' 
ORDER BY S.age;

SELECT DISTINCT S.sname 
FROM Sailors S 
JOIN Reserves R ON S.sid = R.sid;

SELECT S.sid, S.sname 
FROM Sailors S 
JOIN Reserves R ON S.sid = R.sid 
GROUP BY S.sid, R.day 
HAVING COUNT(DISTINCT R.bid) >= 2;

SELECT DISTINCT S.sid 
FROM Sailors S 
JOIN Reserves R ON S.sid = R.sid 
JOIN Boats B ON R.bid = B.bid 
WHERE B.color = 'red' OR B.color = 'green';

SELECT S.sname, S.age 
FROM Sailors S 
ORDER BY S.age 
LIMIT 1;

SELECT COUNT(DISTINCT S.sname) 
FROM Sailors S;

SELECT S.rating, AVG(S.age) AS avg_age 
FROM Sailors S 
GROUP BY S.rating;

SELECT S.rating, AVG(S.age) AS avg_age 
FROM Sailors S 
GROUP BY S.rating 
HAVING COUNT(S.sid) >= 2;





