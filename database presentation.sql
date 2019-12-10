CREATE TABLE customer (
userid int,
phonenumber int, 
age int,
weight int,
goal char,
username char,

PRIMARY KEY (userid)
);

CREATE TABLE customer (
userid int,
phonenumber int, 
age int,
weight int,
goal char,
username char,

PRIMARY KEY (userid)
);

alter table customer
add primary key (userid);

create table meals (
estcalories int,
foodgroup char,
timeeaten int,
foodname char,
primary key (foodname)
);

create table activity (
activityname char,
actduration int,
intensitylevel int,
CHECK (intensitylevel>= 1 AND intensitylevel <=10),
primary key (activityname)
);

create table trainer (
trainerid int,
specialty char,
age int,
trainername char,
traineravailability char,
primary key (trainerid)
);

create table calories (
activityid int,
avgcalburned int,
mealid int,
avgcalgained int,
netcalintake int,
primary key (activityid)
);

create table progress (
userid int,
beginningweight int,
endweight int,
weightloss int,
timeline char,
continuation varchar(255),
bmi int,
CHECK(continuation = 'y' or continuation = 'n')
);

alter table progress
add primary key (userid);

alter table customer
add foreign key (userid) references progress(userid);

alter table trainer
add clientid int;

alter table trainer
add foreign key (clientid) references customer(userid);

alter table trainer
add clientworkout char;

alter table trainer
DROP COLUMN userworkout;

alter table customer
add userworkout char;

alter table customer
add foreign key (userworkout) references trainer(clientworkout);

