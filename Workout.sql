CREATE TABLE customer (
name varchar(255),
CustomerID int NOT NULL,
Phone_Number int,
age int,
weight int,
goal varchar(255),
TrainerID int NOT NULL,
Subscription_ID varchar(255) NOT NULL,

PRIMARY KEY (CustomerID)
);

--customer values--
INSERT INTO customer VALUES ('Sam', 222, 6037141718, 21, 200, 'Weight Loss', 1, 'Basic');
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

CREATE TABLE trainer (
TrainerID int NOT NULL,
name varchar(255),
age int,
availibility varchar(255),

PRIMARY KEY (TrainerID)
);

INSERT INTO trainer VALUES (1, 'Jessica', 25, 'M-F');

CREATE TABLE activity (
activity_name varchar(255) NOT NULL,
TrainerID int NOT NULL,
ActivityTypeID int NOT NULL,

PRIMARY KEY (activity_name)
);

INSERT INTO activity VALUES ('Jump rope', 1, 945);

CREATE TABLE activity_type (
ActivityTypeID int NOT NULL,
type_of_activity varchar(255) NOT NULL,
difficult_level varchar(255),

PRIMARY KEY (ActivityTypeID)
);

INSERT INTO activity_type VALUES (945, 'cardio', 'easy');

CREATE TABLE subscription (
Subscription_ID varchar(255),
length_days int,
price int,
priority varchar(255),
CHECK(priority = 'y' or priority = 'n'),

PRIMARY KEY (Subscription_ID)
);

INSERT INTO subscription VALUES ('Basic', 60, 75, 'y');
