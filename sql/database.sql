/* create employee table */
create table employee (
	employeeId VARCHAR(10) not null,
    employeeName varchar(30) not null,
    dob date not null,
    contact varchar(10) not null,
    jobTitle varchar(30) not null,
    
    constraint employee_pk primary key(employeeId)
);

/* create user table */
CREATE TABLE user(
    userId VARCHAR(10) NOT NULL,
    firstName VARCHAR(20) NOT NULL,
    lastName VARCHAR(20) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    mobileNumber VARCHAR(10) NOT NULL,
    email VARCHAR(50) NOT NULL,
    address VARCHAR(150) NOT NULL,
    dob DATE NOT NULL,
    planId VARCHAR(10) NOT NULL,
    password VARCHAR(30) NOT NULL,

    CONSTRAINT user_pk PRIMARY KEY(userId)
);

/* insert values to user table */
INSERT INTO user 
VALUES ('u1', 'Pavan', 'Uthsara', 'male', '0714169538', 'pavan@shieldplus.com', 'No.2, Welthera mawatha, Kothalawala', '2003-08-29', 'p1', 'uthsara');

/* insert values into user table */
INSERT INTO user 
VALUES ('u2', 'Tharindu', 'Silva', 'male', '0771234567', 'tharindu@gmail.com', 'No.15, Devananda Mawatha, Colombo 05', '1995-05-12', 'p2', 'silva'),
        ('u3', 'Samantha', 'Perera', 'female', '0762345678', 'samantha@yahoo.com', 'No.7, Anura Mawatha, Kandy', '1988-11-23', 'p3', 'perera'),
        ('u4', 'Dilshan', 'Fernando', 'male', '0703456789', 'dilshan@hotmail.com', 'No.25, Senarath Mawatha, Negombo', '1979-03-17', 'p4', 'fernando'),
        ('u5', 'Nadeesha', 'Bandara', 'female', '0724567890', 'nadeesha@outlook.com', 'No.9, Karunaratne Mawatha, Galle', '1992-09-30', 'p5', 'bandara'),
        ('u6', 'Rangana', 'Jayawardena', 'male', '0785678901', 'rangana@gmail.com', 'No.33, Rathnayake Mawatha, Matara', '1983-06-14', 'p1', 'jayawardena'); 

/* create admin table */
CREATE TABLE admin(
    adminId varchar(6) NOT NULL,
    firstName varchar(20) NOT NULL,
    lastName varchar(20) NOT NULL,
    password varchar(30) NOT NULL,

    CONSTRAINT admin_pK PRIMARY KEY(adminId)
);


/* insert values to admin table */
INSERT INTO admin 
VALUES ('a1', 'Kasun', 'Herath', 'kasun1');

INSERT INTO admin 
VALUES ('a2', 'Saduni', 'Perera', 'saduni2');

/* create admin table */
CREATE TABLE plan(
    planId varchar(6) NOT NULL, 
    planName varchar(100) NOT NULL,
    planFee int, 
    planDescription varchar(200),
    duration varchar(20),

    CONSTRAINT plan_pk PRIMARY KEY(planId)
);

/* insert data into plan table */
INSERT INTO plan VALUES ('p1', 'Emergency Coverage', 150000, '', '1 Year'), 
                        ('p2', 'Complete Coverage', 240000, '', '1 Year'),
                        ('p3', 'Family All in One', 290000, '', '1 Year'),
                        ('p4', 'Elder Care', 120000, '', '1 Year'),
                        ('p5', "Children's plan", 130000, '', '1 Year');
/* alter plan description column */    

/* add foreign key as plan id in user table */
ALTER TABLE user 
ADD CONSTRAINT user_fk
    FOREIGN KEY(planId) REFERENCES plan(planId);

