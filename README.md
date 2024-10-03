# LAND_MANAGEMENT_SYSTEM
In Kigali City, every piece of land must have it’s owner. The land itself is identified by its unique UPI address, owner’s SSN, location, and the purpose of the land. The Landowner has to have a unique ID and SSN, First Name, Last name, Address, age, and phone number. Each buyer or Tenant is also identified by a unique Tenant ID, SSN, Address, and Age. A buyer can obtain as many pieces of land as he needs where as the landowner only owns a maximum of one piece of land. If a commissioner is needed, the commissioner must have a commissioner’s ID, SSN, age, and phone number. A commissioner is allowed to commission as many houses as he can to as many potential buyers or Tenants. A landowner can contract with many commissioners and a commissioner can contract with many landowners. For each contract, you have to store a start date, end date, amount of the land and the contract number. The amount to which the land is bought must not be empty. A landowner is also required to notarize the documents as soon as he gives out the land with an official land officer who is identified by a unique officer ID, First name, last name, SSN, Government Department, and phone number.

## Table Structures

### LIST OF Plots available:

```sql
CREATE TABLE Land (
    Land_UPI VARCHAR(20) primary key,
    Owner_SSN integer,
    L_Location VARCHAR(20),
    Purpose_of_the_land char(30),
    FOREIGN KEY (Owner_SSN) REFERENCES Land_Owner(Owner_ID)
);
```

## Land_Owners Table

```sql
CREATE TABLE Land_Owner (
    Owner_ID integer primary key,
    L_UPI VARCHAR(50),
    Names CHAR(30),
    Address_ VARCHAR(20),
    B_Date date,
    Phone_No VARCHAR(10),
    FOREIGN KEY (L_UPI) REFERENCES Land(Land_UPI)
);

```

## Tenants Table

```sql

CREATE TABLE Tenant (
    Tenant_ID integer primary key,
    T_SSN integer,
    T_Names char(20),
    T_address VARCHAR(20),
    Age integer
);
```

## Contracts Table

```sql
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
```

## Notarization_Office Table
```sql

CREATE TABLE Notarized_Office (
    Off_Location CHAR(20) primary key,
    Not_ID integer,
    Not_Names char(50),
    Cont_No VARCHAR(20),
    Tel_Number integer
);
```


# Inserting Records

To insert records into the tables, you can use the following examples:

## Insert PLOTS AVAILABLE

```sql
INSERT INTO Land (Land_UPI, Owner_SSN, L_Location, Purpose_of_the_land)
VALUES ('1/02/14/031631', '12900921', 'KN 5 ave, Nyarugenge', 'Residence');

INSERT INTO Land (Land_UPI, Owner_SSN, L_Location, Purpose_of_the_land)
VALUES ('1/03/06/03/515', '21091290', 'KK 509 st, Niboye', 'Business');

INSERT INTO Land (Land_UPI, Owner_SSN, L_Location, Purpose_of_the_land)
VALUES ('4/04/13/03/525', '34904387', 'KG 20 ave, Remera', 'Residence');

INSERT INTO Land (Land_UPI, Owner_SSN, L_Location, Purpose_of_the_land)
VALUES ('2/08/01/04/336', '34567214', 'KK 45 St, Gatenga', 'Agriculture');

INSERT INTO Land (Land_UPI, Owner_SSN, L_Location, Purpose_of_the_land)
VALUES ('2/06/04/01/067', '54327890', 'KG 78 ave, Nyarutarama', 'Business');

INSERT INTO Land (Land_UPI, Owner_SSN, L_Location, Purpose_of_the_land)
VALUES ('1/09/13/110456', '17895243', 'KK 89 st, Kanombe', 'Education');

INSERT INTO Land (Land_UPI, Owner_SSN, L_Location, Purpose_of_the_land)
VALUES ('3/10/04/058902', '78451089', 'KK 321 St, Niboye', 'Residence');


```

## INSERT LAND_OWNERS

```sql 
INSERT INTO Land_Owner (Owner_ID, L_UPI, Names, Address_, B_Date, Phone_No)
VALUES (199470468, '1/02/14/031631', 'Alex SALEM', 'KG 234 Ave', TO_DATE('1999/01/01', 'YYYY/MM/DD'), '0789345673');
INSERT INTO Land_Owner (Owner_ID, L_UPI, Names, Address_, B_Date, Phone_No)
VALUES (199867890, '1/03/06/03/515', 'Francois MIKA', 'KN 67 Ave', TO_DATE('1987/09/23', 'YYYY/MM/DD'), '0783201578');
INSERT INTO Land_Owner (Owner_ID, L_UPI, Names, Address_, B_Date, Phone_No)
VALUES (200067843, '4/04/13/03/525', 'Promise ELLY', 'KK 367 St', TO_DATE('1995/01/05', 'YYYY/MM/DD'), '0791704056');
INSERT INTO Land_Owner (Owner_ID, L_UPI, Names, Address_, B_Date, Phone_No)
VALUES (199956731, '2/08/01/04/336', 'Titus MUKAMA', 'KG 294 St', TO_DATE('2001/08/29', 'YYYY/MM/DD'), '0783278564');
INSERT INTO Land_Owner (Owner_ID, L_UPI, Names, Address_, B_Date, Phone_No)
VALUES (200408210, '2/06/04/01/067', 'Louis DANI', 'KG 102 Ave', TO_DATE('1988/05/29', 'YYYY/MM/DD'), '0786161784');
INSERT INTO Land_Owner (Owner_ID, L_UPI, Names, Address_, B_Date, Phone_No)
VALUES (197830023, '1/09/13/110456', 'Zenith NANDO', 'KG 30 Ave', TO_DATE('1978/03/16', 'YYYY/MM/DD'), '0787725254');
INSERT INTO Land_Owner (Owner_ID, L_UPI, Names, Address_, B_Date, Phone_No)
VALUES (197704467, '3/10/04/058902', 'Albert TRISH', 'KN 199 St', TO_DATE('1977/02/19', 'YYYY/MM/DD'), '0785345909');

```
## Insert TENANTS

```sql
INSERT INTO Tenant (Tenant_ID, T_SSN, T_NAMES, T_address, Age)
VALUES (20007312, 10920, 'Job WAILES', 'KK 332 St', 23);
INSERT INTO Tenant (Tenant_ID, T_SSN, T_NAMES, T_address, Age)
VALUES (10028381, 78903, 'Boby WAYNE', 'KG 551 St', 43);
INSERT INTO Tenant (Tenant_ID, T_SSN, T_NAMES, T_address, Age)
VALUES (29311441, 14139, 'Bruce WAYNE', 'KN 101 Ave', 21);
INSERT INTO Tenant (Tenant_ID, T_SSN, T_NAMES, T_address, Age)
VALUES (89472411, 29910, 'Stacy KING', 'KK 901 Ave', 32);
INSERT INTO Tenant (Tenant_ID, T_SSN, T_NAMES, T_address, Age)
VALUES (34871931, 21741, 'Layla DENIS', 'KK 99 St', 20);


```

## Insert Contracts

```sql
INSERT INTO Contract (Contract_no, L_UPI, Com_ID, T_ID, Owner_ID, Signing_date, Amount)
VALUES ('999/001', '1/02/14/031631', 20002, 20007312, 199470468, TO_DATE('2020/09/03', 'YYYY/MM/DD'), 15000000);
INSERT INTO Contract (Contract_no, L_UPI, Com_ID, T_ID, Owner_ID, Signing_date, Amount)
VALUES ('999/002', '1/03/06/03/515', 30003, 10028381, 199867890, TO_DATE('2019/06/23', 'YYYY/MM/DD'), 35000000);
INSERT INTO Contract (Contract_no, L_UPI, Com_ID, T_ID, Owner_ID, Signing_date, Amount)
VALUES ('999/321', '2/06/04/01/067', 20002, 29311441, 200408210, TO_DATE('2022/03/04', 'YYYY/MM/DD'), 28000000);
INSERT INTO Contract (Contract_no, L_UPI, Com_ID, T_ID, Owner_ID, Signing_date, Amount)
VALUES ('999/212', '1/09/13/110456', 20002, 89472411, 197830023, TO_DATE('2018/07/21', 'YYYY/MM/DD'), 20000000);
INSERT INTO Contract (Contract_no, L_UPI, Com_ID, T_ID, Owner_ID, Signing_date, Amount)
VALUES ('999/818', '3/10/04/058902', 10001, 34871931, 197704467, TO_DATE('2017/06/30', 'YYYY/MM/DD'), 17000000);

```

## Insert Notarization_Office

```sql
INSERT INTO Notarized_Office (Off_location, Not_ID, Not_Names, Cont_No, Tel_number)
VALUES ('Gasabo', '19967890123', 'Kasiim Afrique', '999/001', '0789356700');
INSERT INTO Notarized_Office (Off_location, Not_ID, Not_Names, Cont_No, Tel_number)
VALUES ('Remera', '19953456891', 'Eric RUGAMBA', '999/321', '0791234678');
INSERT INTO Notarized_Office (Off_location, Not_ID, Not_Names, Cont_No, Tel_number)
VALUES ('Kimiromko', '19874567234', 'Felicien MANZI', '999/212', '0785623450');

```

## Conceptual, Logical and Physical Data Model

![alt text](Conceptual diagram.jpg)

## UPDATING RECORDS
```sql
UPDATE Land SET L_Location='KK 23 ave, Kicukiro' where Owner_SSN=12900921;
```

## DELETING DATA FROM ALREADY EXISTING TABLE
```sql
DELETE Land where Owner_SSN=78451089;
```


