
## LAND MANAGEMENT SYSTEM:
In Kigali City, every piece of land must have it’s owner. The land itself is identified by its unique UPI address, owner’s SSN, location, and the purpose of the land. The Landowner has to have a unique ID and SSN, First Name, Last name, Address, age, and phone number. Each buyer or Tenant is also identified by a unique Tenant ID, SSN, Address, and Age. A buyer can obtain as many pieces of land as he needs where as the landowner only owns a maximum of one piece of land. If a commissioner is needed, the commissioner must have a commissioner’s ID, SSN, age, and phone number. A commissioner is allowed to commission as many houses as he can to as many potential buyers or Tenants. A landowner can contract with many commissioners and a commissioner can contract with many landowners. For each contract, you have to store a start date, end date, amount of the land and the contract number. The amount to which the land is bought must not be empty. A landowner is also required to notarize the documents as soon as he gives out the land with an official land officer who is identified by a unique officer ID, First name, last name, SSN, Government Department, and phone number.

## CONCEPTUAL DIAGRAM
![Conceptual diagram](https://github.com/user-attachments/assets/200c5aca-e0f0-479c-933c-e23cbdbb51ab)

## TABLE CREATIONS:
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

