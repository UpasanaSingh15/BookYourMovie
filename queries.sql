CREATE DATABASE BookMovie;

USE BookMovie;


CREATE TABLE booking_details(
book_no INT PRIMARY KEY AUTO_INCREMENT,
name varchar(30),
gender varchar(10),
age int,
phone_no int,
ticket_price int
);


CREATE TABLE seat_details(
row_no INT,
column_no INT,
Availability_status varchar(20),
book_no INT,
FOREIGN KEY(book_no) REFERENCES booking_details(book_no));

INSERT INTO seat_details VALUES(1,1,'Vacant',NULL);
INSERT INTO seat_details VALUES(1,2,'Vacant',NULL);
INSERT INTO seat_details VALUES(1,3,'Vacant',NULL);
INSERT INTO seat_details VALUES(1,4,'Vacant',NULL);
INSERT INTO seat_details VALUES(1,5,'Vacant',NULL);
INSERT INTO seat_details VALUES(1,6,'Vacant',NULL);
INSERT INTO seat_details VALUES(1,7,'Vacant',NULL);
INSERT INTO seat_details VALUES(1,8,'Vacant',NULL);
INSERT INTO seat_details VALUES(1,9,'Vacant',NULL);
INSERT INTO seat_details VALUES(1,10,'Vacant',NULL);
INSERT INTO seat_details VALUES(2,1,'Vacant',NULL);
INSERT INTO seat_details VALUES(2,2,'Vacant',NULL);
INSERT INTO seat_details VALUES(2,3,'Vacant',NULL);
INSERT INTO seat_details VALUES(2,4,'Vacant',NULL);
INSERT INTO seat_details VALUES(2,5,'Vacant',NULL);
INSERT INTO seat_details VALUES(2,6,'Vacant',NULL);
INSERT INTO seat_details VALUES(2,7,'Vacant',NULL);
INSERT INTO seat_details VALUES(2,8,'Vacant',NULL);
INSERT INTO seat_details VALUES(2,9,'Vacant',NULL);
INSERT INTO seat_details VALUES(2,10,'Vacant',NULL);
INSERT INTO seat_details VALUES(3,1,'Vacant',NULL);
INSERT INTO seat_details VALUES(3,2,'Vacant',NULL);
INSERT INTO seat_details VALUES(3,3,'Vacant',NULL);
INSERT INTO seat_details VALUES(3,4,'Vacant',NULL);
INSERT INTO seat_details VALUES(3,5,'Vacant',NULL);
INSERT INTO seat_details VALUES(3,6,'Vacant',NULL);
INSERT INTO seat_details VALUES(3,7,'Vacant',NULL);
INSERT INTO seat_details VALUES(3,8,'Vacant',NULL);
INSERT INTO seat_details VALUES(3,9,'Vacant',NULL);
INSERT INTO seat_details VALUES(3,10,'Vacant',NULL);
INSERT INTO seat_details VALUES(4,1,'Vacant',NULL);
INSERT INTO seat_details VALUES(4,2,'Vacant',NULL);
INSERT INTO seat_details VALUES(4,3,'Vacant',NULL);
INSERT INTO seat_details VALUES(4,4,'Vacant',NULL);
INSERT INTO seat_details VALUES(4,5,'Vacant',NULL);
INSERT INTO seat_details VALUES(4,6,'Vacant',NULL);
INSERT INTO seat_details VALUES(4,7,'Vacant',NULL);
INSERT INTO seat_details VALUES(4,8,'Vacant',NULL);
INSERT INTO seat_details VALUES(4,9,'Vacant',NULL);
INSERT INTO seat_details VALUES(4,10,'Vacant',NULL);
INSERT INTO seat_details VALUES(5,1,'Vacant',NULL);
INSERT INTO seat_details VALUES(5,2,'Vacant',NULL);
INSERT INTO seat_details VALUES(5,3,'Vacant',NULL);
INSERT INTO seat_details VALUES(5,4,'Vacant',NULL);
INSERT INTO seat_details VALUES(5,5,'Vacant',NULL);
INSERT INTO seat_details VALUES(5,6,'Vacant',NULL);
INSERT INTO seat_details VALUES(5,7,'Vacant',NULL);
INSERT INTO seat_details VALUES(5,8,'Vacant',NULL);
INSERT INTO seat_details VALUES(5,9,'Vacant',NULL);
INSERT INTO seat_details VALUES(5,10,'Vacant',NULL);
INSERT INTO seat_details VALUES(6,1,'Vacant',NULL);
INSERT INTO seat_details VALUES(6,2,'Vacant',NULL);
INSERT INTO seat_details VALUES(6,3,'Vacant',NULL);
INSERT INTO seat_details VALUES(6,4,'Vacant',NULL);
INSERT INTO seat_details VALUES(6,5,'Vacant',NULL);
INSERT INTO seat_details VALUES(6,6,'Vacant',NULL);
INSERT INTO seat_details VALUES(6,7,'Vacant',NULL);
INSERT INTO seat_details VALUES(6,8,'Vacant',NULL);
INSERT INTO seat_details VALUES(6,9,'Vacant',NULL);
INSERT INTO seat_details VALUES(6,10,'Vacant',NULL);
INSERT INTO seat_details VALUES(7,1,'Vacant',NULL);
INSERT INTO seat_details VALUES(7,2,'Vacant',NULL);
INSERT INTO seat_details VALUES(7,3,'Vacant',NULL);
INSERT INTO seat_details VALUES(7,4,'Vacant',NULL);
INSERT INTO seat_details VALUES(7,5,'Vacant',NULL);
INSERT INTO seat_details VALUES(7,6,'Vacant',NULL);
INSERT INTO seat_details VALUES(7,7,'Vacant',NULL);
INSERT INTO seat_details VALUES(7,8,'Vacant',NULL);
INSERT INTO seat_details VALUES(7,9,'Vacant',NULL);
INSERT INTO seat_details VALUES(7,10,'Vacant',NULL);
INSERT INTO seat_details VALUES(8,1,'Vacant',NULL);
INSERT INTO seat_details VALUES(8,2,'Vacant',NULL);
INSERT INTO seat_details VALUES(8,3,'Vacant',NULL);
INSERT INTO seat_details VALUES(8,4,'Vacant',NULL);
INSERT INTO seat_details VALUES(8,5,'Vacant',NULL);
INSERT INTO seat_details VALUES(8,6,'Vacant',NULL);
INSERT INTO seat_details VALUES(8,7,'Vacant',NULL);
INSERT INTO seat_details VALUES(8,8,'Vacant',NULL);
INSERT INTO seat_details VALUES(8,9,'Vacant',NULL);
INSERT INTO seat_details VALUES(8,10,'Vacant',NULL);
INSERT INTO seat_details VALUES(9,1,'Vacant',NULL);
INSERT INTO seat_details VALUES(9,2,'Vacant',NULL);
INSERT INTO seat_details VALUES(9,3,'Vacant',NULL);
INSERT INTO seat_details VALUES(9,4,'Vacant',NULL);
INSERT INTO seat_details VALUES(9,5,'Vacant',NULL);
INSERT INTO seat_details VALUES(9,6,'Vacant',NULL);
INSERT INTO seat_details VALUES(9,7,'Vacant',NULL);
INSERT INTO seat_details VALUES(9,8,'Vacant',NULL);
INSERT INTO seat_details VALUES(9,9,'Vacant',NULL);
INSERT INTO seat_details VALUES(9,10,'Vacant',NULL);
INSERT INTO seat_details VALUES(10,1,'Vacant',NULL);
INSERT INTO seat_details VALUES(10,2,'Vacant',NULL);
INSERT INTO seat_details VALUES(10,3,'Vacant',NULL);
INSERT INTO seat_details VALUES(10,4,'Vacant',NULL);
INSERT INTO seat_details VALUES(10,5,'Vacant',NULL);
INSERT INTO seat_details VALUES(10,6,'Vacant',NULL);
INSERT INTO seat_details VALUES(10,7,'Vacant',NULL);
INSERT INTO seat_details VALUES(10,8,'Vacant',NULL);
INSERT INTO seat_details VALUES(10,9,'Vacant',NULL);
INSERT INTO seat_details VALUES(10,10,'Vacant',NULL);

