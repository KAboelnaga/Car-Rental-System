create table MainUser(
    Email Varchar(50) not null PRIMARY KEY,
    PASSWORD varchar(50) not null,
    Birthdate Date,
    SSN int(50) not null,
    CONSTRAINT FOREIGN KEY (SSN)
    REFERENCES Client (SSN));



    Create table Client(
        SSN int(50) not null PRIMARY KEY,
        FirstName Varchar(20),
        LastName varchar(20),
        Age int(3));
                Create TABLE Phone(
                    SSN int(50),
                    Phone int(13),
                    PRIMARY KEY(SSN, Phone),
                    FOREIGN KEY(SSN)
                    REFERENCES Client(SSN));


CREATE TABLE Car(
	Manufacturer VARCHAR(15),
	Model VARCHAR(15) NOT NULL,
	PLATE VARCHAR(20) NOT NULL PRIMARY KEY,
	Region VARCHAR(20) NOT NULL,
	CarStatus VARCHAR(20) NOT NULL,
	Color VARCHAR(10),
	Year int(4) NOT NULL,
	Price int(8),
	OfficeNumber int(3) not null,
	CONSTRAINT FOREIGN KEY (OfficeNumber)
    	REFERENCES office (OfficeNumber)
	);

CREATE TABLE Office(
    region varchar(20),
    OfficeNumber int(3) PRIMARY KEY not null);

CREATE TABLE Employee(
    ID int(5) NOT null PRIMARY KEY,
    ManagerID int(5),
    FirstName varchar(20),
    LasteName varchar(20),
    Address varchar(50),
    OfficeNumber int(3) not null,
    CONSTRAINT FOREIGN KEY (OfficeNumber)
    	REFERENCES office (OfficeNumber));

CREATE TABLE Mechanic(
    Speciality varchar(5) not null,
    ID int(5) not null,
    MaintenanceDate Date,
    PRIMARY KEY(ID,Speciality),
    FOREIGN key(ID)
REFERENCES Employee(ID));

Create TABLE Reservation(
    CPlate varchar(5),
    ReturnDate date,
    TotalPrice int(7),
    Email varchar(20),
    ReservationNumber int(5) not null primary key,
    PLATE varchar(20) not null,
    CONSTRAINT FOREIGN KEY (PLATE)
    	REFERENCES Car (PLATE));

CREATE table CNumber(
    SSN int(50) not null,
    CPhoneNum int(11) not null,
    PRIMARY key(SSN, CPhoneNum),
    FOREIGN KEY(SSN)
    REFERENCES client(SSN));