CREATE TABLE customer (
name varchar(255),
CustomerID int NOT NULL,
Phone_Number int,
age int,
weight int,
goal varchar(255),
TrainerID int NOT NULL,
Subscription_ID varchar(255) NOT NULL,

CHECK(age>=18),
PRIMARY KEY (CustomerID)
);

--customer values--
INSERT INTO customer VALUES ('Sam Lademan', 222, 6037141718, 21, 200, 'Weight Loss', 1, 'Basic');
INSERT INTO customer VALUES ('Stephen Wickwire', 111, 7203337777, 20, 175, 'Muscle Gain', 4, 'Pro');
INSERT INTO customer VALUES ('Nell Hanna', 123, 8091156969, 24, 140, 'Muscle Gain', 2, 'Basic');
INSERT INTO customer VALUES ('Rinear Dougherty', 666, 8008675309, 42, 60, 'Weight Gain', 2, 'VIP');

--------------------

CREATE TABLE progress(
ProgNum int NOT NULL,
CustomerID int NOT NULL,
Starting_Weight int,
Current_Weight int, 
timeline varchar(255),
continuation varchar(255),
bmi int,
CHECK(continuation = 'y' or continuation = 'n'),

PRIMARY KEY (ProgNum)
);

INSERT INTO progress VALUES (1, 222, 220, 200, 'four months', 'y', 26);
INSERT INTO progress VALUES (2, 111, 160, 175, 'five months', 'y', 19);
INSERT INTO progress VALUES (3, 123, 130, 140, 'two months', 'y', 18);
INSERT INTO progress VALUES (4, 666, 50, 60, 'ten months', 'n', 16);

CREATE TABLE trainer (
TrainerID int NOT NULL,
name varchar(255),
age int,
availibility varchar(255),

PRIMARY KEY (TrainerID)
);

INSERT INTO trainer VALUES (1, 'Jessica', 25, 'M-F');
INSERT INTO trainer VALUES (2, 'Fabio', 29, 'M-F');
INSERT INTO trainer VALUES (4, 'James', 27, 'S-S');

CREATE TABLE activity (
activity_name varchar(255) NOT NULL,
TrainerID int NOT NULL,
ActivityTypeID int NOT NULL,

PRIMARY KEY (activity_name)
);

INSERT INTO activity VALUES ('Jump rope', 1, 945);
INSERT INTO activity VALUES ('Bench Press', 2, 100);
INSERT INTO activity VALUES ('Stationary Bike', 4, 900);
INSERT INTO activity VALUES ('Tire Push', 2, 320);
INSERT INTO activity VALUES ('Squats', 4, 950);

CREATE TABLE activity_type (
ActivityTypeID int NOT NULL,
type_of_activity varchar(255) NOT NULL,
difficult_level varchar(255),

PRIMARY KEY (ActivityTypeID)
);

INSERT INTO activity_type VALUES (945, 'cardio', 'easy');
INSERT INTO activity_type VALUES (100, 'chest', 'medium');
INSERT INTO activity_type VALUES (900, 'cardio', 'easy');
INSERT INTO activity_type VALUES (320, 'diverse', 'hard');
INSERT INTO activity_type VALUES (950, 'legs', 'medium');

CREATE TABLE subscription (
Subscription_ID varchar(255),
length_days int,
price int,
priority varchar(255),
CHECK(priority = 'y' or priority = 'n'),

PRIMARY KEY (Subscription_ID)
);

INSERT INTO subscription VALUES ('Child', 60, 60, 'n');
INSERT INTO subscription VALUES ('Basic', 60, 75, 'y');
INSERT INTO subscription VALUES ('Pro', 180, 100, 'n');
INSERT INTO subscription VALUES ('Expert', 180, 120, 'y');
INSERT INTO subscription VALUES ('VIP', 360, 200, 'y');

