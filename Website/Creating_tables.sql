CREATE TABLE Land (
    Land_UPI VARCHAR(20) primary key,
    Owner_SSN integer,
    L_Location VARCHAR(20),
    Purpose_of_the_land char(30),
    FOREIGN KEY (Owner_SSN) REFERENCES Land_Owner(Owner_ID)
);
CREATE TABLE Land_Owner (
    Owner_ID integer primary key,
    L_UPI VARCHAR(50),
    Names CHAR(30),
    Address_ VARCHAR(20),
    B_Date date,
    Phone_No VARCHAR(10),
    FOREIGN KEY (L_UPI) REFERENCES Land(Land_UPI)
);
CREATE TABLE Tenant (
    Tenant_ID integer primary key,
    T_SSN integer,
    T_Names char(20),
    T_address VARCHAR(20),
    Age integer
);

CREATE TABLE Contract(
    contract_no VARCHAR(20) primary key,
    L_UPI VARCHAR(20),
    Com_ID integer,
    T_ID integer,
    Owner_ID integer,
    Signing_date date,   
    Amount integer,
    FOREIGN KEY (Com_ID) REFERENCES Commisioner(C_ID),
    FOREIGN KEY (T_ID) REFERENCES Tenant(Tenant_ID),
    FOREIGN KEY (L_UPI) REFERENCES Land(Land_UPI),
    FOREIGN KEY (Owner_ID) REFERENCES Land_Owner(Owner_ID)
);
CREATE TABLE Notarized_Office (
    Off_Location CHAR(20) primary key,
    Not_ID integer,
    Not_Names char(50),
    Cont_No VARCHAR(20),
    Tel_Number integer
);

select * from Land;

UPDATE Land SET L_Location='KK 23 ave, Kicukiro' where Owner_SSN=12900921;

DELETE Land where Owner_SSN=78451089;
