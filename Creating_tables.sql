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

INSERT INTO Notarized_Office (Off_location, Not_ID, Not_Names, Cont_No, Tel_number)
VALUES ('Gasabo', '19967890123', 'Kasiim Afrique', '999/001', '0789356700');

INSERT INTO Notarized_Office (Off_location, Not_ID, Not_Names, Cont_No, Tel_number)
VALUES ('Remera', '19953456891', 'Eric RUGAMBA', '999/321', '0791234678');

INSERT INTO Notarized_Office (Off_location, Not_ID, Not_Names, Cont_No, Tel_number)
VALUES ('Kimiromko', '19874567234', 'Felicien MANZI', '999/212', '0785623450');

ALTER TABLE Land
MODIFY L_Location VARCHAR(50);

 CREATE TABLE Commissioner (
    C_ID integer primary key,
    Names varchar(20),
    C_SSN integer,
    C_Zone CHAR(30),
    Phone_number VARCHAR(15)
);
INSERT INTO Commissioner (C_ID, Names, C_SSN, C_ZONE, Phone_number)
VALUES (10001, 'Caleb MUSA', 35678, 'Nyarutarama', '0785671990');

INSERT INTO Commissioner (C_ID, Names, C_SSN, C_ZONE, Phone_number)
VALUES (20002, 'Venuste Kubwayo', 90871, 'Remera', '0786723312');

INSERT INTO Commissioner (C_ID, Names, C_SSN, C_ZONE, Phone_number)
VALUES (30003, 'Apolinaire KARAKE', 08912, 'Nyarugenge', '0726478212');
 
select * from Land;

UPDATE Land SET L_Location='KK 23 ave, Kicukiro' where Owner_SSN=12900921;

DELETE Land where Owner_SSN=78451089;
