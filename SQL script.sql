create database ROS;
use ROS;

create table Admin(
Admin_ID varchar(10)primary key,
First_name varchar(45),
Middle_name varchar(45),
Last_name varchar(45),
Joining_date date,
Owner_ID varchar(10) references Owner_Details(Owner_ID)
);
insert into Admin values('ADM001', 'John', 'A.', 'Doe', '2023-07-15', 'OWN1'),
 ('ADM002', 'Jane', NULL, 'Smith', '2023-08-01', 'OWN1');

create table Supplier_Details(
Supplier_ID varchar(10) primary key,
Bussiness_Name varchar(45),
Email varchar(45),
Phone_Number int,
Trade_Name varchar(45),
Telephone int,
Fax int,
Invoice_Invoice_ID varchar(45),
foreign key(Inovice_Invoice_ID) references Invoice_Details(Invoice_ID)
);
INSERT INTO Supplier_Details VALUES ('SUP001', 'ABC Suppliers', 'abc@example.com', 1234567890, 'ABC Trading', 9876543210, 1112223334, 'INV001'),
('SUP002', 'XYZ Enterprises', 'xyz@example.com', 9876543210, 'XYZ Traders', 8887776665, 5554443332, 'INV002'),
('SUP003', 'PQR Suppliers', 'pqr@example.com', 5678901234, 'PQR Trading', 1112223334, 2223334446, 'INV003'),
('SUP004', 'LMN Enterprises', 'lmn@example.com', 3456789012, 'LMN Traders', 2223334445, 7778889993, 'INV004'),
('SUP005', 'EFG Suppliers', 'efg@example.com', 9012345678, 'EFG Trading', 3334445556, 8889990001, 'INV005');

create table Product_Master(
Product_Code int primary key,
Product_Name varchar(45),
Product_Type varchar(45),
Unit_Measurment varchar(45),
Price_Per_Unit int,
Vat varchar(45),
Actual_Price double,
Effective_Date date,
Supplier_Supplier_ID varchar(10),
foreign key(Supplier_Supplier_ID) references Supplier_Details(Supplier_ID)
);
INSERT INTO Product_Master VALUES (1001, 'Rice', 'Grocery', 'kg', 50, '5%', 52.50, '2023-08-01', 'SUP005'),
(1002, 'Tomatoes', 'Vegetables', 'kg', 30, '5%', 31.50, '2023-08-01', 'SUP004'),
(1003, 'Chicken Breast', 'Meat', 'kg', 150, '10%', 165.00, '2023-08-01', 'SUP003'),
(1004, 'Eggs', 'Dairy', 'dozen', 25, '5%', 26.25, '2023-08-01', 'SUP001'),
(1005, 'Bread', 'Bakery', 'loaf', 20, '5%', 21.00, '2023-08-01', 'SUP002'),
(1006, 'Onions', 'Vegetables', 'kg', 40, '5%', 42.00, '2023-08-01', 'SUP004'),
(1007, 'Milk', 'Dairy', '1 liter', 35, '5%', 36.75, '2023-08-01', 'SUP001'),
(1008, 'Potatoes', 'Vegetables', 'kg', 30, '5%', 31.50, '2023-08-01', 'SUP004'),
(1009, 'Fish Fillet', 'Seafood', 'kg', 200, '10%', 220.00, '2023-08-01', 'SUP003'),
(1010, 'Apples', 'Fruits', 'kg', 60, '5%', 63.00, '2023-08-01', 'SUP004'),
(1011, 'Carrots', 'Vegetables', 'kg', 35, '5%', 36.75, '2023-08-01', 'SUP004'),
(1012, 'Pork Chops', 'Meat', 'kg', 180, '10%', 198.00, '2023-08-01', 'SUP003'),
(1013, 'Oranges', 'Fruits', 'kg', 50, '5%', 52.50, '2023-08-01', 'SUP004'),
(1014, 'Cheese', 'Dairy', 'kg', 120, '10%', 132.00, '2023-08-01', 'SUP001'),
(1015, 'Bananas', 'Fruits', 'kg', 40, '5%', 42.00, '2023-08-01', 'SUP004'),
(1016, 'Lettuce', 'Vegetables', 'kg', 25, '5%', 26.25, '2023-08-01', 'SUP004'),
(1017, 'Cucumbers', 'Vegetables', 'kg', 20, '5%', 21.00, '2023-08-01', 'SUP004'),
(1018, 'Salmon Fillet', 'Seafood', 'kg', 250, '10%', 275.00, '2023-08-01', 'SUP003'),
(1019, 'Strawberries', 'Fruits', 'kg', 70, '5%', 73.50, '2023-08-01', 'SUP004'),
(1020, 'Yogurt', 'Dairy', '500g', 15, '5%', 15.75, '2023-08-01', 'SUP001');

create table Suppliers_Address_Details(
Address_ID varchar(10) primary key,
Street varchar(45),
City varchar(45),
State varchar(45),
Country varchar(45),
Zip_code int,
Supplier_Supplier_ID varchar(10),
foreign key(Supplier_Supplier_ID) references Supplier_Details(Supplier_ID)
);
INSERT INTO Suppliers_Address_Details VALUES ('ADDR001', '123 Main Street', 'New York', 'NY', 'USA', 10001, 'SUP001'),
('ADDR002', '456 Elm Avenue', 'Los Angeles', 'CA', 'USA', 90001, 'SUP002'),
('ADDR003', '789 Oak Lane', 'Chicago', 'IL', 'USA', 60007, 'SUP003'),
('ADDR004', '101 Maple Street', 'Houston', 'TX', 'USA', 77002, 'SUP004'),
('ADDR005', '321 Pine Road', 'Miami', 'FL', 'USA', 33101, 'SUP005');

create table Supplier_Bank_Information(
Bank_ID varchar(10) primary key,
Name varchar(45),
Bank_Account int,
Account_Number int,
Account_Holder_Name varchar(45),
Bank_Sort_Code int,
Supplier_Supplier_ID varchar(10),
foreign key(Supplier_Supplier_ID) references Supplier_Details(Supplier_ID)
);
INSERT INTO Supplier_Bank_Information VALUES ('BANK001', 'ABC Bank', 12345, 9876543210, 'John Doe', 54321, 'SUP001'),
('BANK002', 'XYZ Bank', 67890, 1234567890, 'Jane Smith', 98765, 'SUP002'),
('BANK003', 'PQR Bank', 13579, 2468135790, 'William Johnson', 24680, 'SUP003'),
('BANK004', 'LMN Bank', 24680, 1357924680, 'Emily Brown', 13579, 'SUP004'),
('BANK005', 'EFG Bank', 98765, 6789012345, 'Michael Wilson', 67890, 'SUP005');

create table Order_Details(
Order_Number varchar(10) primary key,
Date date,
Type_Of_Food varchar(45),
Value double,
Status varchar(45),
Rejection_Date date,
Qty int,
Supplier_Supplier_ID varchar(10),
Product_Product_ID varchar(10),
foreign key(Supplier_Supplier_ID) references Supplier_Details(Supplier_ID),
foreign key(Product_Product_ID) references Product_Master(Product_ID)
);
INSERT INTO Order_Details VALUES ('ORD001', '2023-08-05', 'Grocery', 250.00, 'Delivered', NULL, 5, 'SUP005', '1001'),
('ORD002', '2023-08-06', 'Vegetables', 100.00, 'In Progress', NULL, 2, 'SUP004', '1002'),
('ORD003', '2023-08-07', 'Meat', 450.00, 'Delivered', NULL, 3, 'SUP003', '1003'),
('ORD004', '2023-08-08', 'Dairy', 75.00, 'Rejected', '2023-08-09', 1, 'SUP001', '1004'),
('ORD005', '2023-08-09', 'Bakery', 40.00, 'Delivered', NULL, 4, 'SUP002', '1005'),
('ORD006', '2023-08-10', 'Fruits', 80.00, 'In Progress', NULL, 2, 'SUP004', '1006'),
('ORD007', '2023-08-11', 'Seafood', 300.00, 'Delivered', NULL, 3, 'SUP003', '1007'),
('ORD008', '2023-08-12', 'Vegetables', 50.00, 'Delivered', NULL, 1, 'SUP004', '1008'),
('ORD009', '2023-08-13', 'Meat', 200.00, 'In Progress', NULL, 2, 'SUP003', '1009'),
('ORD010', '2023-08-14', 'Fruits', 60.00, 'Delivered', NULL, 3, 'SUP004', '1010');


create table Invoice_Details(
Invoice_ID varchar(10),
Date date,
Total int,
Supplier_Supplier_ID varchar(10),
Order_Order_Number varchar(10),
foreign key(Supplier_Supplier_ID) references Supplier_Details(Supplier_ID),
foreign key(Order_Order_Number ) references Order_Details(Order_Number)
);

INSERT INTO Invoice_Details (Invoice_ID, Date, Total, Supplier_Supplier_ID, Order_Order_Number)
VALUES
    ('INV001', '2023-08-16', 300, 'SUP003', 'ORD001'),
    ('INV002', '2023-08-17', 120, 'SUP001', 'ORD002'),
    ('INV003', '2023-08-18', 450, 'SUP004', 'ORD003'),
    ('INV004', '2023-08-19', 40, 'SUP005', 'ORD004'),
    ('INV005', '2023-08-20', 160, 'SUP002', 'ORD005');
 

create table Stock_balance_Details(
Stock_Balance_Details_ID varchar(10) primary key,
Date date,
Opening_Qty int,
Orderd_Qty int,
Total varchar(45),
Stock_Stock_ID varchar(10),
foreign key(Stock_Stock_ID) references Stock_Management(Stock_ID)
);
INSERT INTO Stock_balance_Details VALUES('SB001', '2023-01-01', 100, 20, '120', 'ST001'),
('SB002', '2023-01-02', 150, 30, '180', 'ST002'),
('SB003', '2023-01-03', 200, 25, '225', 'ST003'),
('SB004', '2023-01-04', 50, 10, '60', 'ST004'),
('SB005', '2023-01-05', 300, 40, '340', 'ST005'),
('SB006', '2023-01-06', 75, 15, '90', 'ST006'),
('SB007', '2023-01-07', 180, 22, '202', 'ST007'),
('SB008', '2023-01-08', 250, 18, '268', 'ST008'),
('SB009', '2023-01-09', 120, 28, '148', 'ST009'),
('SB010', '2023-01-10', 90, 12, '102', 'ST010'),
('SB011', '2023-01-11', 170, 32, '202', 'ST011'),
('SB012', '2023-01-12', 220, 24, '244', 'ST012'),
('SB013', '2023-01-13', 40, 8, '48', 'ST013'),
('SB014', '2023-01-14', 280, 36, '316', 'ST014'),
('SB015', '2023-01-15', 130, 16, '146', 'ST015'),
('SB016', '2023-01-16', 60, 14, '74', 'ST016'),
('SB017', '2023-01-17', 190, 26, '216', 'ST017'),
('SB018', '2023-01-18', 240, 38, '278', 'ST018'),
('SB019', '2023-01-19', 110, 21, '131', 'ST019'),
('SB020', '2023-01-20', 80, 11, '91', 'ST020');

 

create table Stock_Management(
Stock_ID varchar(10) primary key,
Stock_Start_Date date,
Stock_End_Date date,
Opening_Stock_Vale decimal,
Closing_Stock_Vale decimal,
Cost_Of_Sale decimal
);
INSERT INTO Stock_Management VALUES('ST001', '2023-01-01', '2023-01-31', 10000.00, 9500.00, 1500.00),
('ST002', '2023-01-01', '2023-01-31', 15000.00, 14200.00, 2200.00),
('ST003', '2023-01-01', '2023-01-31', 8000.00, 7500.00, 1200.00),
('ST004', '2023-01-01', '2023-01-31', 12000.00, 11800.00, 1800.00),
('ST005', '2023-01-01', '2023-01-31', 18000.00, 17200.00, 2700.00),
('ST006', '2023-01-01', '2023-01-31', 6000.00, 5800.00, 900.00),
('ST007', '2023-01-01', '2023-01-31', 9500.00, 9200.00, 1400.00),
('ST008', '2023-01-01', '2023-01-31', 13500.00, 13200.00, 2000.00),
('ST009', '2023-01-01', '2023-01-31', 7500.00, 7200.00, 1100.00),
('ST010', '2023-01-01', '2023-01-31', 11000.00, 10500.00, 1600.00),
('ST011', '2023-01-01', '2023-01-31', 13000.00, 12600.00, 1900.00),
('ST012', '2023-01-01', '2023-01-31', 17000.00, 16400.00, 2500.00),
('ST013', '2023-01-01', '2023-01-31', 9500.00, 9200.00, 1400.00),
('ST014', '2023-01-01', '2023-01-31', 11500.00, 11000.00, 1700.00),
('ST015', '2023-01-01', '2023-01-31', 15500.00, 14800.00, 2300.00),
('ST016', '2023-01-01', '2023-01-31', 10500.00, 9800.00, 1500.00),
('ST017', '2023-01-01', '2023-01-31', 14500.00, 13800.00, 2100.00),
('ST018', '2023-01-01', '2023-01-31', 18500.00, 17800.00, 2800.00),
('ST019', '2023-01-01', '2023-01-31', 12500.00, 12000.00, 1800.00),
('ST020', '2023-01-01', '2023-01-31', 9500.00, 9200.00, 1400.00);

 

create table Open_Stock(
Dtae date,
Unit_Measurment Varchar(45),
Perice_per_unit decimal,
Qty int,
Product_Product_code int,
foreign key (Product_Product_code )references Product_Master(Product_Code)
);
INSERT INTO Open_Stock VALUES('2023-01-01', 'pcs', 10.50, 200, 101),
('2023-01-01', 'kg', 5.75, 150, 102),
('2023-01-01', 'lit', 2.20, 300, 103),
('2023-01-01', 'pcs', 8.00, 100, 104),
('2023-01-01', 'kg', 6.50, 180, 105),
('2023-01-01', 'lit', 2.50, 250, 106),
('2023-01-01', 'pcs', 12.75, 220, 107),
('2023-01-01', 'kg', 4.80, 130, 108),
('2023-01-01', 'lit', 1.90, 270, 109),
('2023-01-01', 'pcs', 9.30, 160, 110);
 
 create table Wastage(
 Date date,
 Unit_Measurement varchar(45),
 Price_PEr_Unite decimal,
 Product_Product_code varchar(10),
 foreign key( Product_Product_code )references Product_Master(Product_Code)
 );
 INSERT INTO Wastage VALUES('2023-01-01', 'pcs', 0.50, 'P101'),
('2023-01-02', 'kg', 1.20, 'P102'),
('2023-01-03', 'lit', 0.80, 'P103'),
('2023-01-04', 'pcs', 0.75, 'P104'),
('2023-01-05', 'kg', 1.50, 'P105');

 
create table Employee_Type(
Employee_Type_ID varchar(10)primary key,
Employee_Type_Name varchar(45)
);
INSERT INTO Employee_Type (Employee_Type_ID, Employee_Type_Name)
VALUES
('ET001', 'Waiter'),
('ET002', 'Chef'),
('ET003', 'Bartender'),
('ET004', 'Host/Hostess'),
('ET005', 'Kitchen Staff'),
('ET006', 'Busser'),
('ET007', 'Server'),
('ET008', 'Dishwasher'),
('ET009', 'Manager'),
('ET010', 'Cashier'),
('ET011', 'Sous Chef'),
('ET012', 'Food Runner'),
('ET013', 'Barista'),
('ET014', 'Line Cook'),
('ET015', 'Food Expeditor'),
('ET016', 'Catering Staff'),
('ET017', 'Greeter'),
('ET018', 'Sommelier'),
('ET019', 'Pastry Chef'),
('ET020', 'Delivery Driver');

create table Admin_Suplier(
Admin_ID varchar(10) references Admin(Admin_ID),
Supplier_ID varchar(10) references Supplier_Details(Supplier_ID)
);
INSERT INTO Admin_Supplier VALUES('A101', 'S201'),
('A102', 'S202');


create table Employee_Address_Info(
Address_ID varchar(10)primary key,
ZipCode integer,
City varchar(45),
State varchar(45),
Email varchar(45),
Mobile_Number integer,
Telephone integer,
Contry_ID varchar(10) references Country(Country_Details),
Employee_ID varchar(10) references Employee(Employee_ID)
);
INSERT INTO Employee_Address_Info VALUES('AID001', 12345, 'New York', 'NY', 'employee1@example.com', 1234567890, 9876543210, 'C001', 'E001'),
('AID002', 54321, 'Los Angeles', 'CA', 'employee2@example.com', 2345678901, 8765432109, 'C002', 'E002'),
('AID003', 67890, 'Chicago', 'IL', 'employee3@example.com', 3456789012, 7654321098, 'C001', 'E003'),
('AID004', 45678, 'Houston', 'TX', 'employee4@example.com', 4567890123, 6543210987, 'C003', 'E004'),
('AID005', 98765, 'Miami', 'FL', 'employee5@example.com', 5678901234, 5432109876, 'C004', 'E005'),
('AID006', 23456, 'San Francisco', 'CA', 'employee6@example.com', 6789012345, 4321098765, 'C002', 'E006'),
('AID007', 87654, 'Seattle', 'WA', 'employee7@example.com', 7890123456, 3210987654, 'C005', 'E007'),
('AID008', 34567, 'Boston', 'MA', 'employee8@example.com', 8901234567, 2109876543, 'C006', 'E008'),
('AID009', 56789, 'Atlanta', 'GA', 'employee9@example.com', 9012345678, 1098765432, 'C007', 'E009'),
('AID010', 78901, 'Denver', 'CO', 'employee10@example.com', 1234567890, 9876543210, 'C008', 'E010'),
('AID011', 65432, 'Phoenix', 'AZ', 'employee11@example.com', 2345678901, 8765432109, 'C009', 'E011'),
('AID012', 21098, 'Portland', 'OR', 'employee12@example.com', 3456789012, 7654321098, 'C010', 'E012'),
('AID013', 98701, 'Dallas', 'TX', 'employee13@example.com', 4567890123, 6543210987, 'C003', 'E013'),
('AID014', 43210, 'San Diego', 'CA', 'employee14@example.com', 5678901234, 5432109876, 'C002', 'E014'),
('AID015', 87654, 'Detroit', 'MI', 'employee15@example.com', 6789012345, 4321098765, 'C011', 'E015'),
('AID016', 56789, 'Minneapolis', 'MN', 'employee16@example.com', 7890123456, 3210987654, 'C012', 'E016'),
('AID017', 34567, 'Philadelphia', 'PA', 'employee17@example.com', 8901234567, 2109876543, 'C013', 'E017'),
('AID018', 23456, 'Las Vegas', 'NV', 'employee18@example.com', 9012345678, 1098765432, 'C014', 'E018'),
('AID019', 67890, 'New Orleans', 'LA', 'employee19@example.com', 1234567890, 9876543210, 'C015', 'E019'),
('AID020', 98765, 'San Antonio', 'TX', 'employee20@example.com', 2345678901, 8765432109, 'C003', 'E020');

create table Country(
Country_ID varchar(10)primary key,
Country_Name varchar(45),
Country_Code integer
);
INSERT INTO Country VALUES('C001', 'United States', 1),
('C002', 'Canada', 1),
('C003', 'United Kingdom', 44),
('C004', 'Australia', 61),
('C005', 'Germany', 49),
('C006', 'France', 33),
('C007', 'India', 91),
('C008', 'Mexico', 52),
('C009', 'Brazil', 55),
('C010', 'Japan', 81),
('C011', 'South Korea', 82),
('C012', 'China', 86),
('C013', 'Italy', 39),
('C014', 'Spain', 34),
('C015', 'Netherlands', 31),
('C016', 'Russia', 7),
('C017', 'Switzerland', 41),
('C018', 'Sweden', 46),
('C019', 'Norway', 47),
('C020', 'Singapore', 65);


create table Employee(
Employee_ID varchar(10)primary key,
First_Name varchar(45),
Middle_Name varchar(45),
Last_Name varchar(45),
Joining_Date date,
Department_ID varchar(10) references Department(Department_ID),
Position_ID varchar(10) references Position_Info(Position_ID),
Kin_ID varchar(10) references Kin_Info(Kin_ID),
Employee_Type_ID varchar(10) references Employee_Type(Employee_Type_ID),
Document_ID varchar(10) references Document(Document_ID),
Statutory_ID varchar(10) references Statutory(Statutory_ID),
Employee_Status_ID varchar(10) references Employee_Status(Employee_Status_ID),
Admin_Id varchar(10) references Admin(Admin_ID)
);
INSERT INTO Employee VALUES('E001', 'John', 'Michael', 'Doe', '2023-01-01', 'D001', 'P001', 'KIN001', 'ET001', 'DOC001', 'STAT001', 'EST001', 'A101'),
('E002', 'Jane', 'Marie', 'Smith', '2023-01-02', 'D002', 'P002', 'KIN002', 'ET002', 'DOC002', 'STAT002', 'EST001', 'A102'),
('E003', 'Robert', 'Lee', 'Johnson', '2023-01-03', 'D001', 'P003', 'KIN003', 'ET003', 'DOC003', 'STAT003', 'EST002', 'A101'),
('E004', 'Emily', 'Grace', 'Williams', '2023-01-04', 'D003', 'P004', 'KIN004', 'ET004', 'DOC004', 'STAT004', 'EST002', 'A103'),
('E005', 'David', 'Charles', 'Brown', '2023-01-05', 'D002', 'P005', 'KIN005', 'ET005', 'DOC005', 'STAT005', 'EST001', 'A104'),
('E006', 'Olivia', 'Rose', 'Miller', '2023-01-06', 'D003', 'P006', 'KIN006', 'ET006', 'DOC006', 'STAT006', 'EST003', 'A105'),
('E007', 'Michael', 'John', 'Davis', '2023-01-07', 'D001', 'P007', 'KIN007', 'ET007', 'DOC007', 'STAT007', 'EST002', 'A101'),
('E008', 'Sophia', 'Elizabeth', 'Garcia', '2023-01-08', 'D002', 'P008', 'KIN008', 'ET008', 'DOC008', 'STAT008', 'EST004', 'A102'),
('E009', 'William', 'Joseph', 'Martinez', '2023-01-09', 'D003', 'P009', 'KIN009', 'ET009', 'DOC009', 'STAT009', 'EST002', 'A103'),
('E010', 'Isabella', 'Maria', 'Jones', '2023-01-10', 'D001', 'P010', 'KIN010', 'ET010', 'DOC010', 'STAT010', 'EST005', 'A104'),
('E011', 'James', 'Andrew', 'Hernandez', '2023-01-11', 'D002', 'P011', 'KIN011', 'ET011', 'DOC011', 'STAT011', 'EST003', 'A105'),
('E012', 'Emma', 'Anna', 'Lopez', '2023-01-12', 'D003', 'P012', 'KIN012', 'ET012', 'DOC012', 'STAT012', 'EST006', 'A101'),
('E013', 'Benjamin', 'Matthew', 'Wilson', '2023-01-13', 'D001', 'P013', 'KIN013', 'ET013', 'DOC013', 'STAT013', 'EST005', 'A102'),
('E014', 'Ava', 'Grace', 'Gonzalez', '2023-01-14', 'D002', 'P014', 'KIN014', 'ET014', 'DOC014', 'STAT014', 'EST004', 'A103'),
('E015', 'Ethan', 'Ryan', 'Rodriguez', '2023-01-15', 'D003', 'P015', 'KIN015', 'ET015', 'DOC015', 'STAT015', 'EST006', 'A104'),
('E016', 'Mia', 'Sofia', 'Moore', '2023-01-16', 'D001', 'P016', 'KIN016', 'ET016', 'DOC016', 'STAT016', 'EST001', 'A105'),
('E017', 'Alexander', 'Daniel', 'Jackson', '2023-01-17', 'D002', 'P017', 'KIN017', 'ET017', 'DOC017', 'STAT017', 'EST002', 'A101'),
('E018', 'Abigail', 'Chloe', 'White', '2023-01-18', 'D003', 'P018', 'KIN018', 'ET018', 'DOC018', 'STAT018', 'EST003', 'A102'),
('E019', 'Daniel', 'Matthew', 'Taylor', '2023-01-19', 'D001', 'P019', 'KIN019', 'ET019', 'DOC019', 'STAT019', 'EST004', 'A103'),
('E020', 'Ella', 'Avery', 'Anderson', '2023-01-20', 'D002', 'P020', 'KIN020', 'ET020', 'DOC020', 'STAT020', 'EST005', 'A104');

CREATE TABLE Employee_Status(
Employee_Status_ID varchar(10) PRIMARY KEY,
Statement text,
Student_Loan boolean,
Medical_Condition text
);
INSERT INTO Employee_Status VALUES('EST001', 'Active employee', false,'None'),
('EST002', 'Active employee', true, 'None'),
('EST003', 'On leave', false, 'None'),
('EST004', 'Active employee', false, 'Diabetes'),
('EST005', 'Terminated', false, 'Asthma'),
('EST006', 'On leave', false, 'None'),
('EST007', 'Active employee', false, NULL),
('EST008', 'Terminated', false, 'Hypertension'),
('EST009', 'Active employee', false, 'None'),
('EST010', 'On leave', false, 'Migraine'),
('EST011', 'Active employee', true, 'None'),
('EST012', 'Active employee', false, 'None'),
('EST013', 'Terminated', false, 'Allergies'),
('EST014', 'On leave', false, 'None'),
('EST015', 'Active employee', false, NULL),
('EST016', 'Active employee', true, 'None'),
('EST017', 'On leave', false, 'None'),
('EST018', 'Active employee', false, 'Arthritis'),
('EST019', 'Active employee', false, 'None'),
('EST020', 'Terminated', false, 'Depression');

CREATE TABLE Department(
Department_ID varchar(10) PRIMARY KEY,
Department_Name varchar(45)
);
INSERT INTO Department VALUES('D001', 'Kitchen'),
('D002', 'Front of House'),
('D003', 'Management');


CREATE TABLE Document(
Document_ID varchar(10) PRIMARY KEY,
Document_Name varchar(45),
Type varchar(45),
Description varchar(45),
Image blob
);
INSERT INTO Document VALUES
('DOC001', 'Aadhar Card', 'Identification', 'Government-issued ID', NULL),
('DOC002', 'PAN Card', 'Identification', 'Income tax-related ID', NULL),
('DOC003', 'Passport', 'Identification', 'International travel ID', NULL),
('DOC004', 'Drivers License', 'Identification', 'Driving privileges ID', NULL),
('DOC005', 'Voter ID', 'Identification', 'Voting privileges ID', NULL),
('DOC006', 'Bank Statement', 'Financial', 'Proof of financial transactions', NULL),
('DOC007', 'Insurance Policy', 'Financial', 'Proof of insurance coverage', NULL),
('DOC008', 'Degree Certificate', 'Education', 'Academic qualification', NULL),
('DOC009', 'Diploma Certificate', 'Education', 'Specialized education qualification', NULL),
('DOC010', 'Training Certificate', 'Education', 'Professional training completion', NULL),
('DOC011', 'Experience Letter', 'Employment', 'Proof of past work experience', NULL),
('DOC012', 'Offer Letter', 'Employment', 'Job offer acceptance letter', NULL),
('DOC013', 'Appointment Letter', 'Employment', 'Letter of job appointment', NULL),
('DOC014', 'Resignation Letter', 'Employment', 'Letter of job resignation', NULL),
('DOC015', 'NOC (No Objection Certificate)', 'Legal', 'Permission for specific activity', NULL),
('DOC016', 'Lease Agreement', 'Legal', 'Rental property agreement', NULL),
('DOC017', 'Medical Certificate', 'Health', 'Proof of medical condition', NULL),
('DOC018', 'Marriage Certificate', 'Personal', 'Proof of marriage', NULL),
('DOC019', 'Birth Certificate', 'Personal', 'Proof of birth', NULL),
('DOC020', 'Address Proof', 'Identification', 'Proof of residential address', NULL);


CREATE TABLE Statutory(
Statutory_ID varchar(10) PRIMARY KEY,
Nationality varchar(45),
Place_Of_Birth varchar(45),
Date_Of_Birth date,
Gender varchar(45),
Age integer,
Maritual_Status varchar(45),
Passport_Number varchar(45),
NI_Number varchar(45),
Tax_P45 varchar(45)
);
INSERT INTO Statutory VALUES('STAT001', 'American', 'New York, USA', '1990-05-15', 'Male', 32, 'Single', 'US123456', '123-45-6789', 'P45ABC'),
('STAT002', 'Canadian', 'Toronto, Canada', '1985-12-10', 'Female', 37, 'Married', 'CA789012', '987-65-4321', 'P45XYZ'),
('STAT003', 'British', 'London, UK', '1993-07-22', 'Male', 28, 'Single', 'UK456789', '567-89-0123', 'P45LMN'),
('STAT004', 'Australian', 'Sydney, Australia', '1988-09-05', 'Female', 33, 'Divorced', 'AU234567', '234-56-7890', 'P45DEF'),
('STAT005', 'German', 'Berlin, Germany', '1995-02-28', 'Male', 26, 'Single', 'DE678901', '345-67-8901', 'P45HIJ'),
('STAT006', 'French', 'Paris, France', '1991-11-18', 'Female', 30, 'Married', 'FR345678', '456-78-9012', 'P45KLM'),
('STAT007', 'Indian', 'Mumbai, India', '1987-04-25', 'Male', 34, 'Married', 'IN456789', '567-89-0123', 'P45OPQ'),
('STAT008', 'Mexican', 'Mexico City, Mexico', '1994-08-08', 'Female', 27, 'Single', 'MX567890', '678-90-1234', 'P45RST'),
('STAT009', 'Brazilian', 'Rio de Janeiro, Brazil', '1992-01-12', 'Male', 29, 'Married', 'BR678901', '789-01-2345', 'P45UVW'),
('STAT010', 'Japanese', 'Tokyo, Japan', '1989-06-20', 'Female', 32, 'Single', 'JP789012', '890-12-3456', 'P45XYZ'),
('STAT011', 'South Korean', 'Seoul, South Korea', '1986-03-02', 'Male', 35, 'Married', 'KR890123', '901-23-4567', 'P45ABC'),
('STAT012', 'Chinese', 'Beijing, China', '1997-10-07', 'Female', 24, 'Single', 'CN901234', '012-34-5678', 'P45LMN'),
('STAT013', 'Italian', 'Rome, Italy', '1990-09-14', 'Male', 31, 'Divorced', 'IT012345', '123-45-6789', 'P45DEF'),
('STAT014', 'Spanish', 'Madrid, Spain', '1993-12-30', 'Female', 28, 'Single', 'ES123456', '234-56-7890', 'P45GHI'),
('STAT015', 'Dutch', 'Amsterdam, Netherlands', '1988-07-05', 'Male', 33, 'Married', 'NL234567', '345-67-8901', 'P45JKL'),
('STAT016', 'Russian', 'Moscow, Russia', '1985-11-01', 'Female', 36, 'Widowed', 'RU345678', '456-78-9012', 'P45MNO'),
('STAT017', 'Swiss', 'Zurich, Switzerland', '1992-04-09', 'Male', 29, 'Single', 'CH456789', '567-89-0123', 'P45PQR'),
('STAT018', 'Swedish', 'Stockholm, Sweden', '1989-08-17', 'Female', 32, 'Married', 'SE567890', '678-90-1234', 'P45STU'),
('STAT019', 'Norwegian', 'Oslo, Norway', '1991-03-26', 'Male', 30, 'Single', 'NO678901', '789-01-2345', 'P45VWX'),
('STAT020', 'Singaporean', 'Singapore', '1996-06-15', 'Female', 25, 'Single', 'SG789012', '890-12-3456', 'P45YZA');

CREATE TABLE Kin_Info (
Kin_ID varchar(10) primary key,
First_Name varchar(45),
Middle_Name varchar(45),
Last_Name varchar(45),
Address varchar(45),
ZipCode integer,
Email varchar(45),
Mobile_Number integer,
Telephone integer,
Relation varchar(45)
);
INSERT INTO Kin_Info VALUES('KIN001', 'Mary', 'Elizabeth', 'Doe', '123 Main St', 12345, 'mary@example.com', 1234567890, 9876543210, 'Mother'),
('KIN002', 'John', 'William', 'Smith', '456 Elm Ave', 54321, 'john@example.com', 2345678901, 8765432109, 'Father'),
('KIN003', 'Sarah', 'Anne', 'Johnson', '789 Oak Rd', 67890, 'sarah@example.com', 3456789012, 7654321098, 'Sister'),
('KIN004', 'Michael', 'James', 'Williams', '101 Pine St', 45678, 'michael@example.com', 4567890123, 6543210987, 'Brother'),
('KIN005', 'Emily', 'Grace', 'Brown', '202 Cedar Ln', 98765, 'emily@example.com', 5678901234, 5432109876, 'Sister'),
('KIN006', 'Daniel', 'Robert', 'Miller', '303 Maple Ave', 23456, 'daniel@example.com', 6789012345, 4321098765, 'Brother'),
('KIN007', 'Olivia', 'Sophia', 'Davis', '404 Birch Rd', 87654, 'olivia@example.com', 7890123456, 3210987654, 'Sister'),
('KIN008', 'Ethan', 'Noah', 'Garcia', '505 Oak St', 34567, 'ethan@example.com', 8901234567, 2109876543, 'Brother'),
('KIN009', 'Ava', 'Emma', 'Martinez', '606 Pine Ave', 56789, 'ava@example.com', 9012345678, 1098765432, 'Sister'),
('KIN010', 'William', 'Alexander', 'Jones', '707 Elm Rd', 78901, 'william@example.com', 1234567890, 9876543210, 'Brother'),
('KIN011', 'Sofia', 'Mia', 'Hernandez', '808 Maple Ln', 65432, 'sofia@example.com', 2345678901, 8765432109, 'Sister'),
('KIN012', 'Benjamin', 'James', 'Lopez', '909 Cedar Ave', 21098, 'benjamin@example.com', 3456789012, 7654321098, 'Brother'),
('KIN013', 'Emma', 'Chloe', 'Wilson', '1010 Pine Rd', 98701, 'emma@example.com', 4567890123, 6543210987, 'Sister'),
('KIN014', 'Alexander', 'Liam', 'Gonzalez', '1111 Oak St', 43210, 'alexander@example.com', 5678901234, 5432109876, 'Brother'),
('KIN015', 'Mia', 'Avery', 'Taylor', '1212 Elm Ave', 87654, 'mia@example.com', 6789012345, 4321098765, 'Sister'),
('KIN016', 'Ethan', 'Daniel', 'Jackson', '1313 Maple Ln', 56789, 'ethan@example.com', 7890123456, 3210987654, 'Brother'),
('KIN017', 'Ava', 'Sophia', 'White', '1414 Cedar Rd', 34567, 'ava@example.com', 8901234567, 2109876543, 'Sister'),
('KIN018', 'Noah', 'William', 'Rodriguez', '1515 Pine Ave', 23456, 'noah@example.com', 9012345678, 1098765432, 'Brother'),
('KIN019', 'Emma', 'Olivia', 'Anderson', '1616 Oak St', 67890, 'emma@example.com', 1234567890, 9876543210, 'Sister'),
('KIN020', 'Liam', 'James', 'Martinez', '1717 Elm Rd', 98765, 'liam@example.com', 2345678901, 8765432109, 'Brother');

CREATE TABLE Restaurant_Location (
Location_ID varchar(10) Primary key,
Country varchar(45),
City varchar(45),
State varchar(45),
Address varchar(45),
ZipCode integer,
Employee_ID varchar(10) references Employee(Employee_ID)
);
INSERT INTO Restaurant_Location VALUES('LOC001', 'United States', 'New York', 'NY', '123 Main St', 12345, 'E001'),
('LOC002', 'Canada', 'Toronto', 'ON', '456 Elm Ave', 54321, 'E002'),
('LOC003', 'United Kingdom', 'London', NULL, '789 Oxford Rd', 67890, 'E003'),
('LOC004', 'Australia', 'Sydney', 'NSW', '101 Bond St', 45678, 'E004'),
('LOC005', 'Germany', 'Berlin', NULL, '202 Brandenburg St', 98765, 'E005'),
('LOC006', 'France', 'Paris', NULL, '303 Champs Elysees', 23456, 'E006'),
('LOC007', 'India', 'Mumbai', 'MH', '404 Marine Drive', 87654, 'E007'),
('LOC008', 'Mexico', 'Mexico City', 'DF', '505 Reforma Ave', 34567, 'E008'),
('LOC009', 'Brazil', 'Rio de Janeiro', 'RJ', '606 Copacabana Beach', 56789, 'E009'),
('LOC010', 'Japan', 'Tokyo', NULL, '707 Shibuya Crossing', 78901, 'E010');

CREATE TABLE Leave_Info (
Leave_ID varchar(10) primary key, 
Date date,
Start_Date date,
End_Date date,
Status varchar(45),
Comments varchar(45),
Total_Holidays integer,
Employee_ID varchar(10) references Employee(Employee_ID),
Department_ID varchar(10) references Department(Department_ID)
);
INSERT INTO Leave_Info VALUES('LID001', '2023-07-01', '2023-07-10', '2023-07-15', 'Approved', 'Vacation', 6, 'E001', 'D001'),
('LID002', '2023-07-15', '2023-07-20', '2023-07-22', 'Pending', 'Family event', 3, 'E002', 'D002'),
('LID003', '2023-08-05', '2023-08-08', '2023-08-10', 'Approved', 'Sick leave', 3, 'E003', 'D001'),
('LID004', '2023-08-12', '2023-08-15', '2023-08-18', 'Approved', 'Vacation', 4, 'E004', 'D003'),
('LID005', '2023-09-02', '2023-09-05', '2023-09-07', 'Rejected', 'Personal reasons', 3, 'E005', 'D002'),
('LID006', '2023-09-10', '2023-09-15', '2023-09-20', 'Pending', 'Travel plans', 6, 'E006', 'D001'),
('LID007', '2023-10-01', '2023-10-05', '2023-10-10', 'Approved', 'Vacation', 6, 'E007', 'D002'),
('LID008', '2023-11-15', '2023-11-20', '2023-11-22', 'Pending', 'Family event', 3, 'E008', 'D003'),
('LID009', '2023-11-20', '2023-11-25', '2023-11-28', 'Approved', 'Sick leave', 4, 'E009', 'D001'),
('LID010', '2023-12-10', '2023-12-15', '2023-12-20', 'Approved', 'Vacation', 6, 'E010', 'D002');

CREATE TABLE Shifts (
Shift_ID varchar(10) primary key, 
Shift_Date date,
Start_Time time,
End_Time time,
Break time,
Status varchar(45),
Employee_ID varchar(10) references Employee(Employee_ID),
Location_ID varchar(10) references Restaurant_Location(Location_ID) 
);
INSERT INTO Shifts VALUES('SHIFT001', '2023-07-01', '08:00:00', '16:00:00', '01:00:00', 'Completed', 'E001', 'LOC001'),
('SHIFT002', '2023-07-15', '12:00:00', '20:00:00', '01:30:00', 'Completed', 'E002', 'LOC002'),
('SHIFT003', '2023-08-05', '09:30:00', '17:30:00', '01:00:00', 'Completed', 'E003', 'LOC003'),
('SHIFT004', '2023-08-12', '10:00:00', '18:00:00', '00:45:00', 'Completed', 'E004', 'LOC004'),
('SHIFT005', '2023-09-02', '14:00:00', '22:00:00', '01:15:00', 'Completed', 'E005', 'LOC005'),
('SHIFT006', '2023-09-10', '11:30:00', '19:30:00', '01:00:00', 'Completed', 'E006', 'LOC006'),
('SHIFT007', '2023-10-01', '09:00:00', '17:00:00', '01:30:00', 'Completed', 'E007', 'LOC007'),
('SHIFT008', '2023-11-15', '12:30:00', '20:30:00', '01:15:00', 'Completed', 'E008', 'LOC008'),
('SHIFT009', '2023-11-20', '08:30:00', '16:30:00', '01:00:00', 'Completed', 'E009', 'LOC009'),
('SHIFT010', '2023-12-10', '15:00:00', '23:00:00', '01:30:00', 'Completed', 'E010', 'LOC010');

CREATE TABLE Position_Info(
Position_ID varchar(10) primary key,
Postion_Name varchar(45),
Department_ID varchar(10) references Department(Department_ID)
);
INSERT INTO Position_Info VALUES('POS001', 'Chef', 'D001'),
('POS002', 'Server', 'D002'),
('POS003', 'Manager', 'D003'),
('POS004', 'Sous Chef', 'D001'),
('POS005', 'Bartender', 'D002'),
('POS006', 'Host/Hostess', 'D002'),
('POS007', 'Kitchen Porter', 'D001'),
('POS008', 'Waitstaff', 'D002'),
('POS009', 'General Manager', 'D003'),
('POS010', 'Line Cook', 'D001'),
('POS011', 'Dishwasher', 'D001'),
('POS012', 'Assistant Manager', 'D003'),
('POS013', 'Cashier', 'D002'),
('POS014', 'Shift Supervisor', 'D003'),
('POS015', 'Pastry Chef', 'D001'),
('POS016', 'Sommelier', 'D002'),
('POS017', 'Restaurant Manager', 'D003'),
('POS018', 'Food Runner', 'D002'),
('POS019', 'Prep Cook', 'D001'),
('POS020', 'Bar Manager', 'D003');

create table Owner_Details(
Owner_ID varchar(10) primary key,
First_name varchar(45),
Middle_name varchar(45),
Last_name varchar(45),
Joining_Date date,
Mobile_number int,
Telephone int,
Email varchar(45)
);
INSERT INTO Owner_Details VALUES('OWN001', 'John', 'William', 'Smith', '2020-01-15', 1234567890, 9876543210, 'john@example.com');

create table Restaurent_Details(
Restaurant_ID varchar(10) primary key,
Business_name varchar(45),
Legal_name varchar(45),
Started_Date date,
Contact_number int,
Location_ID varchar(10) references Restaurant_Location(Location_ID),
Admin_ID varchar(10) references Admin(Admin_Id),
Owner_ID varchar(10) references Owner_Details(Owner_ID)
);
INSERT INTO Restaurent_Details VALUES('REST001', 'Tasty Bites', 'Tasty Bites Inc.', '2019-05-10', 1234567890, 'LOC001', 'ADM001', 'OWN001'),
('REST002', 'Flavor Haven', 'Flavor Haven LLC', '2020-03-20', 9876543210, 'LOC002', 'ADM001', 'OWN001'),
('REST003', 'Culinary Delights', 'Culinary Delights Ltd.', '2018-11-08', 2345678901, 'LOC003', 'ADM002', 'OWN001'),
('REST004', 'Gourmet Junction', 'Gourmet Junction Pvt. Ltd.', '2021-09-15', 3456789012, 'LOC004', 'ADM002', 'OWN001'),
('REST005', 'Epicurean Eats', 'Epicurean Eats Co.', '2017-07-03', 4567890123, 'LOC005', 'ADM001', 'OWN001'),
('REST006', 'Savor Central', 'Savor Central Group', '2019-01-25', 5678901234, 'LOC006', 'ADM002', 'OWN001'),
('REST007', 'Gastronomy Galore', 'Gastronomy Galore Enterprises', '2022-04-18', 6789012345, 'LOC007', 'ADM001', 'OWN001'),
('REST008', 'Palate Pleasers', 'Palate Pleasers Ltd.', '2016-10-12', 7890123456, 'LOC008', 'ADM001', 'OWN001'),
('REST009', 'Delish Diner', 'Delish Diner Co.', '2020-08-30', 8901234567, 'LOC009', 'ADM002', 'OWN001'),
('REST010', 'Savory Spots', 'Savory Spots Inc.', '2015-12-05', 9012345678, 'LOC010', 'ADM002', 'OWN001');

create table Bank_Info(
Bank_info_ID varchar(10) primary key,
Bank_name varchar(45),
Bank_account varchar(45),
Holder_name varchar(45),
Bank_sort_code varchar(45),
Account_number int,
Salary float,
Employee_Type_ID varchar(10) references Employee_Type(Employee_Type_ID),
Employee_ID varchar(10) references Employee(Employee_ID)
);
INSERT INTO Bank_Info VALUES('BANK001', 'ABC Bank', '12345678', 'John Doe', '112233', 9876543210, 50000.00, 'ET001', 'E001'),
('BANK002', 'XYZ Bank', '87654321', 'Jane Smith', '445566', 2345678901, 55000.00, 'ET002', 'E002'),
('BANK003', 'PQR Bank', '56789012', 'Michael Johnson', '778899', 3456789012, 60000.00, 'ET001', 'E003'),
('BANK004', 'LMN Bank', '23456789', 'Emily Williams', '223344', 4567890123, 52000.00, 'ET002', 'E004'),
('BANK005', 'DEF Bank', '67890123', 'Daniel Brown', '556677', 5678901234, 58000.00, 'ET001', 'E005'),
('BANK006', 'GHI Bank', '34567890', 'Olivia Miller', '990011', 6789012345, 54000.00, 'ET002', 'E006'),
('BANK007', 'JKL Bank', '89012345', 'Ethan Wilson', '001122', 7890123456, 62000.00, 'ET001', 'E007'),
('BANK008', 'MNO Bank', '45678901', 'Sofia Martinez', '334455', 8901234567, 56000.00, 'ET002', 'E008'),
('BANK009', 'STU Bank', '90123456', 'Ava Garcia', '667788', 9012345678, 53000.00, 'ET001', 'E009'),
('BANK010', 'VWX Bank', '56789012', 'Liam Lopez', '889900', 1234567890, 59000.00, 'ET002', 'E010'),
('BANK011', 'ABC Bank', '23456789', 'Sofia Hernandez', '112233', 2345678901, 60000.00, 'ET001', 'E011'),
('BANK012', 'XYZ Bank', '90123456', 'William Jackson', '445566', 3456789012, 52000.00, 'ET002', 'E012'),
('BANK013', 'PQR Bank', '34567890', 'Olivia White', '778899', 4567890123, 56000.00, 'ET001', 'E013'),
('BANK014', 'LMN Bank', '67890123', 'Liam Rodriguez', '223344', 5678901234, 54000.00, 'ET002', 'E014'),
('BANK015', 'DEF Bank', '23456789', 'Emma Anderson', '556677', 6789012345, 58000.00, 'ET001', 'E015'),
('BANK016', 'GHI Bank', '90123456', 'Noah Gonzalez', '990011', 7890123456, 60000.00, 'ET002', 'E016'),
('BANK017', 'JKL Bank', '56789012', 'Ava Taylor', '001122', 8901234567, 52000.00, 'ET001', 'E017'),
('BANK018', 'MNO Bank', '23456789', 'Ethan Jackson', '334455', 9012345678, 55000.00, 'ET002', 'E018'),
('BANK019', 'STU Bank', '90123456', 'Olivia Anderson', '667788', 1234567890, 57000.00, 'ET001', 'E019'),
('BANK020', 'VWX Bank', '56789012', 'Liam Martinez', '889900', 2345678901, 59000.00, 'ET002', 'E020');

CREATE TABLE Attendence(
Employee_ID varchar(10) references Employee(employee_ID),
Department_ID varchar(10) references Department(Department_ID),
Status varchar(45),
Attendence_Type varchar(45)
);
INSERT INTO Attendence VALUES('E001', 'D001', 'Present', 'Regular'),
('E002', 'D002', 'Present', 'Regular'),
('E003', 'D001', 'Present', 'Regular'),
('E004', 'D003', 'Present', 'Regular'),
('E005', 'D002', 'Present', 'Regular'),
('E006', 'D001', 'Absent', 'Sick Leave'),
('E007', 'D002', 'Present', 'Regular'),
('E008', 'D003', 'Present', 'Regular'),
('E009', 'D001', 'Present', 'Regular'),
('E010', 'D002', 'Present', 'Regular'),
('E011', 'D001', 'Absent', 'Vacation'),
('E012', 'D002', 'Present', 'Regular'),
('E013', 'D001', 'Present', 'Regular'),
('E014', 'D002', 'Present', 'Regular'),
('E015', 'D003', 'Absent', 'Personal Leave');

 

CREATE TABLE Payroll_Report(
Payroll_ID varchar(10) primary key,
From_Date date,
To_Date date,
Department_ID varchar(10) references Department(Department_ID),
Employee_ID varchar(10) references Employee(Employee_ID)
);
INSERT INTO Payroll_Report VALUES('PAY001', '2023-07-01', '2023-07-15', 'D001', 'E001'),
('PAY002', '2023-07-01', '2023-07-15', 'D002', 'E002'),
('PAY003', '2023-07-01', '2023-07-15', 'D001', 'E003'),
('PAY004', '2023-07-01', '2023-07-15', 'D003', 'E004'),
('PAY005', '2023-07-01', '2023-07-15', 'D002', 'E005'),
('PAY006', '2023-07-01', '2023-07-15', 'D001', 'E006'),
('PAY007', '2023-07-01', '2023-07-15', 'D002', 'E007'),
('PAY008', '2023-07-01', '2023-07-15', 'D003', 'E008'),
('PAY009', '2023-07-01', '2023-07-15', 'D001', 'E009'),
('PAY010', '2023-07-01', '2023-07-15', 'D002', 'E010'),
('PAY011', '2023-07-16', '2023-07-31', 'D001', 'E011'),
('PAY012', '2023-07-16', '2023-07-31', 'D002', 'E012'),
('PAY013', '2023-07-16', '2023-07-31', 'D001', 'E013'),
('PAY014', '2023-07-16', '2023-07-31', 'D002', 'E014'),
('PAY015', '2023-07-16', '2023-07-31', 'D003', 'E015'),
('PAY016', '2023-07-16', '2023-07-31', 'D001', 'E016'),
('PAY017', '2023-07-16', '2023-07-31', 'D002', 'E017'),
('PAY018', '2023-07-16', '2023-07-31', 'D003', 'E018'),
('PAY019', '2023-07-16', '2023-07-31', 'D001', 'E019'),
('PAY020', '2023-07-16', '2023-07-31', 'D002', 'E020');

create table Action3(
Action3_ID varchar(45) primary key,
Epos_Epos_ID varchar(45),
Petty_Petty_ID varchar(45),
Employee_Empolyee_ID varchar(45),
Downlode_Downlode_ID varchar(45),
foreign key(Epos_Epos_ID) references EPOS(Epos_ID),
foreign key(Petty_Petty_ID) references Petty_Cash(Petty_ID),
foreign key(Employee_Empolyee_ID ) references Employee(Empolyee_ID),
foreign key(Downlode_Downlode_ID) references Downlode(Downlode_ID)
);
INSERT INTO Action3 VALUES('Action3_ID_1', 'Epos_ID_1', 'Petty_ID_1', 'Employee_ID_1', 'Downlode_ID_1'),
('Action3_ID_2', 'Epos_ID_2', 'Petty_ID_2', 'Employee_ID_2', 'Downlode_ID_2'),
('Action3_ID_3', 'Epos_ID_3', 'Petty_ID_3', 'Employee_ID_3', 'Downlode_ID_3'),
('Action3_ID_4', 'Epos_ID_4', 'Petty_ID_4', 'Employee_ID_4', 'Downlode_ID_4'),
('Action3_ID_5', 'Epos_ID_5', 'Petty_ID_5', 'Employee_ID_5', 'Downlode_ID_5');

create table CreateNewReport(
CreateNewReport_ID varchar(45) primary key,
FromDate date,
ToDate date,
SelectSection varchar(45)
);
INSERT INTO CreateNewReport VALUES('Report_1', '2023-08-01', '2023-08-10', 'Section A'),
('Report_2', '2023-07-20', '2023-07-31', 'Section B'),
('Report_3', '2023-08-05', '2023-08-15', 'Section C'),
('Report_4', '2023-08-11', '2023-08-20', 'Section A'),
('Report_5', '2023-07-25', '2023-08-05', 'Section B');

create table InternalReports(
InternalReport_ID varchar(45) primary key,
Report_Name varchar(45),
Date date,
User_Name varchar(45),
hangerd_Password varchar(45),
Setting varchar(45),
Action_Action3_ID varchar(45),
Create_Create_New_Report_ID varchar(45),
foreign key(Action_Action3_ID) references Action3(Action3_ID),
foreign key(Create_Create_New_Report_ID) references CreateNewReport( CreateNewRepor_ID)
);
INSERT INTO InternalReports VALUES('InternalReport_1', 'Report A', '2023-08-01', 'User1', 'pass123', 'Setting 1', 'Action3_ID_1', 'Report_1'),
('InternalReport_2', 'Report B', '2023-07-20', 'User2', 'pass456', 'Setting 2', 'Action3_ID_2', 'Report_2'),
('InternalReport_3', 'Report C', '2023-08-05', 'User1', 'pass789', 'Setting 3', 'Action3_ID_3', 'Report_3'),
('InternalReport_4', 'Report D', '2023-08-11', 'User3', 'pass321', 'Setting 4', 'Action3_ID_4', 'Report_4'),
('InternalReport_5', 'Report E', '2023-07-25', 'User2', 'pass654', 'Setting 5', 'Action3_ID_5', 'Report_5');

create table Report(
Report_ID varchar(45) primary key,
Internal_Internal_Id varchar(45),
foreign key(Internal_Internal_Id) references InternalReports( InternalReport_Id)
);
INSERT INTO Report VALUES('Report_1', 'InternalReport_1'),
('Report_2', 'InternalReport_2'),
('Report_3', 'InternalReport_3'),
('Report_4', 'InternalReport_4'),
('Report_5', 'InternalReport_5');

create table Zomato(
Zomato_ID varchar(45) primary key,
PeriodCovered varchar(45),
ThirdPartyAmount varchar(45),
PaymentRecevied varchar(45),
Defference varchar(45)
);

INSERT INTO Zomato VALUES('Zomato_1', '2023-08', '1000', '800', '200'),
('Zomato_2', '2023-07', '1200', '1000', '200'),
('Zomato_3', '2023-08', '900', '800', '100'),
('Zomato_4', '2023-08', '1500', '1300', '200'),
('Zomato_5', '2023-07', '1800', '1600', '200');

create table Payment(
Payment_ID varchar(45) primary key,
RecivedDate date,
TotalPaymentRecived varchar(45),
ID varchar(45),
foreign key(ID) references 7th_8_UberJustEat(ID)
);
INSERT INTO Payment VALUES('Payment_1', '2023-08-01', '500', 'ID_1'),
('Payment_2', '2023-07-20', '700', 'ID_2'),
('Payment_3', '2023-08-05', '900', 'ID_3'),
('Payment_4', '2023-08-11', '1200', 'ID_4'),
('Payment_5', '2023-07-25', '1500', 'ID_5');

create table 7th_8_UberJustEat(
ID varchar(45) primary key,
Payment_ID varchar(45),
Uber_ID varchar(45),
JustEat_ID varchar(45),
Zomato_ID varchar(45),
Delivero varchar(45),
Reconciliation_ThirdParty_ID varchar(45),
foreign key(Payment_ID) references Payment(Payment_ID),
foreign key(Uber_ID) references Uber(Uber_ID),
foreign key(JustEat_ID) references JustEat(JustEat_ID),
foreign key(Zomato_ID ) references Zomato(Zomato_ID ),
foreign key(Reconciliation_ThirdParty_ID ) references Reconciliation_ThirdParty(Reconciliation_ThirdParty_ID )
);

INSERT INTO 7th_8_UberJustEat VALUES('ID_1', 'Payment_1', 'Uber_1', 'JustEat_1', 'Zomato_1', 'Delivery_1', 'Reconciliation_1'),
('ID_2', 'Payment_2', 'Uber_2', 'JustEat_2', 'Zomato_2', 'Delivery_2', 'Reconciliation_2'),
('ID_3', 'Payment_3', 'Uber_3', 'JustEat_3', 'Zomato_3', 'Delivery_3', 'Reconciliation_3'),
('ID_4', 'Payment_4', 'Uber_4', 'JustEat_4', 'Zomato_4', 'Delivery_4', 'Reconciliation_4'),
('ID_5', 'Payment_5', 'Uber_5', 'JustEat_5', 'Zomato_5', 'Delivery_5', 'Reconciliation_5');

create table Uber(
Uber_ID varchar(45) primary key,
Period_Covered varchar(45),
ThirdParty varchar(45),
PaymentRecevied varchar(45),
Defference varchar(45),
CashUpsheets varchar(45),
Amount varchar(45),
APIAmount varchar(45),
Matchh varchar(45),
PartialMatch varchar(45),
AddNote varchar(45)
);
INSERT INTO Uber VALUES('Uber_1', '2023-08', 'UberEats', '1200', '100', 'Sheet1', '1100', '1000', 'Yes', 'No', 'Note1'),
('Uber_2', '2023-07', 'UberEats', '1500', '200', 'Sheet2', '1300', '1200', 'Yes', 'Yes', 'Note2'),
('Uber_3', '2023-08', 'UberEats', '1800', '300', 'Sheet3', '1500', '1400', 'Yes', 'No', 'Note3'),
('Uber_4', '2023-08', 'UberEats', '1000', '50', 'Sheet4', '950', '900', 'Yes', 'Yes', 'Note4'),
('Uber_5', '2023-07', 'UberEats', '2000', '100', 'Sheet5', '1900', '1800', 'Yes', 'No', 'Note5');

create table CardDeposite(
CardDeposite_ID varchar(45) primary key,
Card_Type varchar(45),
Deposite_Date date,
Amount varchar(45),
APIAmount varchar(45),
Matchh varchar(45),
PartialMatch varchar(45),
AddNote Text
);
INSERT INTO CardDeposite VALUES('CardDeposite_1', 'Visa', '2023-08-01', '1000', '950', 'Yes', 'No', 'Note1'),
('CardDeposite_2', 'Mastercard', '2023-07-20', '1500', '1400', 'Yes', 'Yes', 'Note2'),
('CardDeposite_3', 'Amex', '2023-08-05', '2000', '1900', 'Yes', 'No', 'Note3'),
('CardDeposite_4', 'Visa', '2023-08-11', '1200', '1100', 'Yes', 'Yes', 'Note4'),
('CardDeposite_5', 'Mastercard', '2023-07-25', '1800', '1700', 'Yes', 'No', 'Note5');

create table Banking4(
Banking4_ID varchar(45) primary key,
Banking_Date date,
CardAmount varchar(45),
API_Total varchar(45),
Difference varchar(45)
);
INSERT INTO Banking4 VALUES
('Banking4_1', '2023-08-01', '500', '1000', '500'),
('Banking4_2', '2023-07-20', '700', '1500', '800'),
('Banking4_3', '2023-08-05', '900', '2000', '1100'),
('Banking4_4', '2023-08-11', '1200', '1200', '0'),
('Banking4_5', '2023-07-25', '1500', '1800', '300');

create table Banking3(
Banking3_ID varchar(45) primary key,
Banking3_Date date,
Banking3_Total varchar(45)
);
INSERT INTO Banking3 VALUES('Banking3_1', '2023-08-01', '1000'),
('Banking3_2', '2023-07-20', '1500'),
('Banking3_3', '2023-08-05', '2000'),
('Banking3_4', '2023-08-11', '1200'),
('Banking3_5', '2023-07-25', '1800');

create table 4th_VisaAmex(
4th_VisaAmex_ID varchar(45) primary key,
Banking3_Date varchar(45),
Banking3_Date varchar(45),
CardDeposite varchar(45)
);

INSERT INTO 4th_VisaAmex VALUES
('VisaAmex_1', '2023-08-01', '2023-08-05', '500'),
('VisaAmex_2', '2023-07-20', '2023-07-25', '700'),
('VisaAmex_3', '2023-08-05', '2023-08-10', '900'),
('VisaAmex_4', '2023-08-11', '2023-08-15', '1200'),
('VisaAmex_5', '2023-07-25', '2023-07-30', '1500');

 create table Latest(
Latest_ID varchar(45) primary key,
TotalAmount varchar(45),
Cash varchar(45),
Crd varchar(45),
ThirdParty varchar(45)
);
INSERT INTO Latest VALUES('Latest_1', '1500', '1000', '400', '100'),
('Latest_2', '2000', '1200', '600', '200'),
('Latest_3', '1800', '800', '700', '300'),
('Latest_4', '2200', '1500', '600', '100'),
('Latest_5', '2500', '1800', '500', '200');

create table Reconcilition_ThirdParty(
Reconcilition_ThirdParty_ID varchar(45) primary key,
6th_justEat varchar(45),
7th_8th_UberJustEat varchar(45),
8th_16Uber varchar(45),
9th_19UberAndDelivery varchar(45),
10th_28UberDelivery varchar(45)
);
INSERT INTO Reconcilition_ThirdParty VALUES('Reconcilition_ThirdParty_1', 'Data1_justEat_6th', 'Data1_UberJustEat_7th_8th', 'Data1_Uber_8th_16', 'Data1_UberAndDelivery_9th_19', 'Data1_UberDelivery_10th_28'),
('Reconcilition_ThirdParty_2', 'Data2_justEat_6th', 'Data2_UberJustEat_7th_8th', 'Data2_Uber_8th_16', 'Data2_UberAndDelivery_9th_19', 'Data2_UberDelivery_10th_28'),
('Reconcilition_ThirdParty_3', 'Data3_justEat_6th', 'Data3_UberJustEat_7th_8th', 'Data3_Uber_8th_16', 'Data3_UberAndDelivery_9th_19', 'Data3_UberDelivery_10th_28'),
('Reconcilition_ThirdParty_4', 'Data4_justEat_6th', 'Data4_UberJustEat_7th_8th', 'Data4_Uber_8th_16', 'Data4_UberAndDelivery_9th_19', 'Data4_UberDelivery_10th_28'),
('Reconcilition_ThirdParty_5', 'Data5_justEat_6th', 'Data5_UberJustEat_7th_8th', 'Data5_Uber_8th_16', 'Data5_UberAndDelivery_9th_19', 'Data5_UberDelivery_10th_28');


create table Card(
Card_ID varchar(45) primary key,
5th_MastercardAmex varchar(45),
4th_VisaAmex_ID varchar(45),
foreign key(4th_VisaAmex_ID) references 4th_VisaAmex(4th_VisaAmex_ID)
);
INSERT INTO Card VALUES('Card_1', 'Mastercard', 'VisaAmex_ID_1'),
('Card_2', 'Amex', 'VisaAmex_ID_2'),
('Card_3', 'Mastercard', 'VisaAmex_ID_3'),
('Card_4', 'Visa', 'VisaAmex_ID_4'),
('Card_5', 'Mastercard', 'VisaAmex_ID_5');

create table Cash(
Cash_ID varchar(45) primary key,
1st_Banking date,
2nd_Banking date,
3rd_Banking date,
1st_Banking_ID varchar(45),
foreign key(1st_Banking_ID) references 1st_Banking(1st_Banking_ID)
);

INSERT INTO Cash VALUES('Cash_1', '2023-08-01', '2023-08-08', '2023-08-15', '1st_Banking_ID_1'),
('Cash_2', '2023-07-20', '2023-07-27', '2023-08-03', '1st_Banking_ID_2'),
('Cash_3', '2023-08-05', '2023-08-12', '2023-08-19', '1st_Banking_ID_3'),
('Cash_4', '2023-08-11', '2023-08-18', '2023-08-25', '1st_Banking_ID_4'),
('Cash_5', '2023-07-25', '2023-08-01', '2023-08-08', '1st_Banking_ID_5');

create table Reconciliation(
Reconciliation_ID varchar(45) primary key,
Cash_ID varchar(45),
Card_ID varchar(45),
Reconciliation_ThirdParty_ID varchar(45),
foreign key(Reconciliation_ThirdParty_ID ) references Reconciliation_ThirdParty(Reconciliation_ThirdParty_ID ),
foreign key(Cash_ID) references Cash(Cash_ID),
foreign key(Card_ID) references Card(Card_ID)
);

INSERT INTO Reconciliation VALUES('Rec_1', 'Cash_1', 'Card_1', 'Rec_ThirdParty_1'),
('Rec_2', 'Cash_2', 'Card_2', 'Rec_ThirdParty_2'),
('Rec_3', 'Cash_3', 'Card_3', 'Rec_ThirdParty_3'),
('Rec_4', 'Cash_4', 'Card_4', 'Rec_ThirdParty_4'),
('Rec_5', 'Cash_5', 'Card_5', 'Rec_ThirdParty_5');

create table 1St_Banking(
1St_Banking varchar(45) primary key,
Banking1_ID varchar(45) ,
Banking2_ID varchar(45),
ReconciliationashDeposite_ID varchar(45) ,
foreign key(ReconciliationashDeposite_ID) references
ReconciliationashDeposite(ReconciliationashDeposite_ID),
foreign key(Banking1_ID) references Banking1(Banking1_ID),
foreign key(Banking2_ID) references Banking2(Banking1_ID)
);
INSERT INTO 1St_Banking VALUES('1st_Banking_1', 'Banking1_1', 'Banking2_1', 'Reconciliation_1'),
('1st_Banking_2', 'Banking1_2', 'Banking2_2', 'Reconciliation_2'),
('1st_Banking_3', 'Banking1_3', 'Banking2_3', 'Reconciliation_3'),
('1st_Banking_4', 'Banking1_4', 'Banking2_4', 'Reconciliation_4'),
('1st_Banking_5', 'Banking1_5', 'Banking2_5', 'Reconciliation_5');
  
create table Banking1 (
Banking1_ID varchar(45) primary key,
Banking1date date,
Total varchar(45),
1st_Banking_ID varchar(45),
foreign key(1st_Banking_ID) references 1st_Banking(1st_Banking_ID)
);
INSERT INTO Banking1 VALUES('Banking1_1', '2023-08-01', '1000', '1st_Banking_ID_1'),
('Banking1_2', '2023-07-20', '1500', '1st_Banking_ID_2'),
('Banking1_3', '2023-08-05', '2000', '1st_Banking_ID_3'),
('Banking1_4', '2023-08-11', '1200', '1st_Banking_ID_4'),
('Banking1_5', '2023-07-25', '1800', '1st_Banking_ID_5');

create table Banking2 (
Banking2_ID varchar(45) primary key,
Banking2_date date,
Banking2_Total varchar(45),
Banked_Total varchar(45),
Difference varchar(45),
1st_Banking_ID varchar(45),
foreign key(1st_Banking_ID) references 1st_Banking(1st_Banking_ID)
);
INSERT INTO Banking2 VALUES('Banking2_1', '2023-08-01', '1000', '900', '100', '1st_Banking_ID_1'),
('Banking2_2', '2023-07-20', '1500', '1500', '0', '1st_Banking_ID_2'),
('Banking2_3', '2023-08-05', '2000', '1900', '100', '1st_Banking_ID_3'),
('Banking2_4', '2023-08-11', '1200', '1100', '100', '1st_Banking_ID_4'),
('Banking2_5', '2023-07-25', '1800', '1750', '50', '1st_Banking_ID_5');

create table Download(
Download_ID varchar(45) primary key,
PDF blob,
CSV blob,
Exces blob
);
INSERT INTO Download VALUES('Download_1', 'PDF_Data_1', 'CSV_Data_1', 'Exces_Data_1'),
('Download_2', 'PDF_Data_2', 'CSV_Data_2', 'Exces_Data_2'),
('Download_3', 'PDF_Data_3', 'CSV_Data_3', 'Exces_Data_3'),
('Download_4', 'PDF_Data_4', 'CSV_Data_4', 'Exces_Data_4'),
('Download_5', 'PDF_Data_5', 'CSV_Data_5', 'Exces_Data_5');

create table Depositetable(
Depositetable_ID varchar(45) primary key,
Epos varchar(45),
Cash  varchar(45),
Difference  varchar(45)
);
INSERT INTO Depositetable VALUES('Depositetable_1', '500', '300', '200'),
('Depositetable_2', '800', '700', '100'),
('Depositetable_3', '1000', '950', '50'),
('Depositetable_4', '1200', '1100', '100'),
('Depositetable_5', '1500', '1400', '100');

create table WeekTotal(
WeekTotal_ID varchar(45) primary key,
ThisWeekTotal varchar(45),
ThisWeekTotal_Date date,
LastWeekTotal_Date date,
LastWeekTotal varchar(45)
);
INSERT INTO WeekTotal VALUES('WeekTotal_1', '1500', '2023-08-01', '2023-07-25', '1200'),
('WeekTotal_2', '1800', '2023-08-02', '2023-07-26', '1600'),
('WeekTotal_3', '2000', '2023-08-03', '2023-07-27', '1900'),
('WeekTotal_4', '2300', '2023-08-04', '2023-07-28', '2100'),
('WeekTotal_5', '2600', '2023-08-05', '2023-07-29', '2400');

create table Deposite(
Deposite_ID varchar(45) primary key,
WeekTotal_ID varchar(45),
DepositeTable_ID varchar(45),
DraftAsoutStanding_ID varchar(45),
Pending_ID varchar(45),
Banked_ID varchar(45),
foreign key(WeekTotal_ID) references WeekTotal(WeekTotal_ID),
foreign key(DepositeTable_ID) references DepositeTable(DepositeTable_ID),
foreign key(DraftAsoutStanding_ID) references DraftAsoutStanding(DraftAsoutStanding_ID),
foreign key(Pending_ID) references Pending(Pending_ID),
foreign key(Banked_ID ) references Banked(Banked_ID )
);

INSERT INTO Deposite VALUES('Deposite_1', 'WeekTotal_1', 'DepositeTable_1', 'DraftAsoutStanding_1', 'Pending_1', 'Banked_1'),
('Deposite_2', 'WeekTotal_2', 'DepositeTable_2', 'DraftAsoutStanding_2', 'Pending_2', 'Banked_2'),
('Deposite_3', 'WeekTotal_3', 'DepositeTable_3', 'DraftAsoutStanding_3', 'Pending_3', 'Banked_3'),
('Deposite_4', 'WeekTotal_4', 'DepositeTable_4', 'DraftAsoutStanding_4', 'Pending_4', 'Banked_4'),
('Deposite_5', 'WeekTotal_5', 'DepositeTable_5', 'DraftAsoutStanding_5', 'Pending_5', 'Banked_5');

create table DayTotal(
ToDay date,
Yestarday date,
Total varchar(45)
);
INSERT INTO DayTotal VALUES('2023-08-01', '2023-07-31', '1000'),
('2023-08-02', '2023-08-01', '1200'),
('2023-08-03', '2023-08-02', '1500'),
('2023-08-04', '2023-08-03', '1800'),
('2023-08-05', '2023-08-04', '2000');

create table EditBanking(
EditBAnking_ID varchar(45) primary key,
Date date,
GiroSlipNumber varchar(45),
Banking_Total varchar(45),
BankedTotal varchar(45),
Employee_ID varchar(45),
foreign key(Employee_ID) references Employee(Employee_ID)
);
INSERT INTO EditBanking VALUES('EditBanking_1', '2023-08-01', 'GSN123', '1000', '900', 'Employee_ID_1'),
('EditBanking_2', '2023-07-20', 'GSN456', '1500', '1500', 'Employee_ID_2'),
('EditBanking_3', '2023-08-05', 'GSN789', '2000', '1900', 'Employee_ID_3'),
('EditBanking_4', '2023-08-11', 'GSN321', '1200', '1100', 'Employee_ID_4'),
('EditBanking_5', '2023-07-25', 'GSN654', '1800', '1750', 'Employee_ID_5');

 

create table Action2(
Action2_ID varchar(45) primary key,
ViewBAnking_ID varchar(45),
EditBanking_Id varchar(45),
foreign key( ViewBAnking_ID) references  ViewBAnking( ViewBAnking_ID),
foreign key(  EditBanking_Id) references Employee(EditBanking_Id)
);
INSERT INTO Action2 VALUES('Action2_1', 'ViewBAnking_ID_1', 'EditBAnking_ID_1'),
('Action2_2', 'ViewBAnking_ID_2', 'EditBAnking_ID_2'),
('Action2_3', 'ViewBAnking_ID_3', 'EditBAnking_ID_3'),
('Action2_4', 'ViewBAnking_ID_4', 'EditBAnking_ID_4'),
('Action2_5', 'ViewBAnking_ID_5', 'EditBAnking_ID_5');

 

create table Banked(
Banked_ID varchar(45) primary key,
Cashup_sheet varchar(45),
Giro_Number varchar(45),
Banking_Total varchar(45),
Variance varchar(45),
SealedBy varchar(45),
Action2_ID varchar(45),
foreign key(Action2_ID) references  Action2(Action2_ID)
);
INSERT INTO Banked VALUES('Banked_1', 'Sheet1', 'Giro123', '1000', '0', 'John Doe', 'Action2_ID_1'),
('Banked_2', 'Sheet2', 'Giro456', '1500', '50', 'Jane Smith', 'Action2_ID_2'),
('Banked_3', 'Sheet3', 'Giro789', '2000', '0', 'Michael Johnson', 'Action2_ID_3'),
('Banked_4', 'Sheet4', 'Giro321', '1200', '25', 'Emily Brown', 'Action2_ID_4'),
('Banked_5', 'Sheet5', 'Giro654', '1800', '-50', 'David Lee', 'Action2_ID_5');

 

create table ViewBanking(
ViewBanking_ID varchar(45) primary key,
SelectDepositeDate date,
BankingSheetDte date,
GiroSlipNumber varchar(45),
BankingTotal varchar(45),
BankedTotal  varchar(45),
SealedBy varchar(45),
ReasonForDifference varchar(45)
);
INSERT INTO ViewBanking VALUES('ViewBanking_1', '2023-08-01', '2023-08-02', 'GSN123', 500, 500, 'John Doe', ''),
('ViewBanking_2', '2023-07-20', '2023-07-21', 'GSN456', 750, 750, 'Jane Smith', ''),
('ViewBanking_3', '2023-08-05', '2023-08-06', 'GSN789', 900, 900, 'Michael Johnson', ''),
('ViewBanking_4', '2023-08-11', '2023-08-12', 'GSN321', 600, 600, 'Emily Brown', ''),
('ViewBanking_5', '2023-07-25', '2023-07-26', 'GSN654', 800, 750, 'David Lee', 'Shortage of $50');

create table JustEat(
ustEat_ID varchar(45) primary key,
Period_Covered varchar(45),
ThirdParty varchar(45),
PaymentRecevied varchar(45),
Defference varchar(45),
CashUpsheets varchar(45),
Amount varchar(45),
APIAmount varchar(45),
Matchh varchar(45),
PartialMatch varchar(45),
AddNote varchar(45)
);
INSERT INTO JustEat VALUES('JustEat_1', '2023-08', 'ThirdParty_A', 'Yes', 'No', 'Sheet1', '100', '90', 'Yes', 'No', 'Note 1'),
('JustEat_2', '2023-07', 'ThirdParty_B', 'Yes', 'Yes', 'Sheet2', '150', '150', 'Yes', 'Yes', 'Note 2'),
('JustEat_3', '2023-08', 'ThirdParty_A', 'Yes', 'No', 'Sheet3', '200', '180', 'Yes', 'No', 'Note 3'),
('JustEat_4', '2023-08', 'ThirdParty_C', 'Yes', 'No', 'Sheet4', '120', '120', 'Yes', 'Yes', 'Note 4'),
('JustEat_5', '2023-07', 'ThirdParty_B', 'Yes', 'Yes', 'Sheet5', '80', '75', 'Yes', 'No', 'Note 5');

 Create Table Range_Table(
Range_ID VARCHAR(45) PRIMARY KEY,
Today DATE,
Yesterday DATE,
Amount VARCHAR(10));
insert into range_table(range_id,today,yesterday,amount)
values( 
	('1', '2023-08-03', '2023-08-02', '1000'),
    ('2', '2023-08-04', '2023-08-03', '750'),
    ('3', '2023-08-05', '2023-08-04', '600'),
    ('4', '2023-08-06', '2023-08-05', '850'),
    ('5', '2023-08-07', '2023-08-06', '450'),
    ('6', '2023-08-08', '2023-08-07', '300'),
    ('7', '2023-08-09', '2023-08-08', '700'),
    ('8', '2023-08-10', '2023-08-09', '550'),
    ('9', '2023-08-11', '2023-08-10', '900'),
    ('10', '2023-08-12', '2023-08-11', '400'),
    ('11', '2023-08-13', '2023-08-12', '800'),
    ('12', '2023-08-14', '2023-08-13', '650'),
    ('13', '2023-08-15', '2023-08-14', '750'),
    ('14', '2023-08-16', '2023-08-15', '500'),
    ('15', '2023-08-17', '2023-08-16', '300'),
    ('16', '2023-08-18', '2023-08-17', '700'),
    ('17', '2023-08-19', '2023-08-18', '450'),
    ('18', '2023-08-20', '2023-08-19', '600'),
    ('19', '2023-08-21', '2023-08-20', '850'),
    ('20', '2023-08-22', '2023-08-21', '400')
);
	

 

CREATE TABLE Schedule(
Schedule_ID VARCHAR(10) PRIMARY KEY,
Date DATE,
Time TIME);
insert into schedule(schedule_id,date,time)
values(
	('1001', '2023-08-03', '09:00:00'),
    ('1002', '2023-08-04', '14:30:00'),
    ('1003', '2023-08-05', '11:45:00'),
    ('1004', '2023-08-06', '16:15:00'),
    ('1005', '2023-08-07', '10:30:00'),
    ('1006', '2023-08-08', '15:00:00'),
    ('1007', '2023-08-09', '13:00:00'),
    ('1008', '2023-08-10', '16:45:00'),
    ('1009', '2023-08-11', '12:30:00'),
    ('1010', '2023-08-12', '17:15:00'),
    ('1011', '2023-08-13', '09:30:00'),
    ('1012', '2023-08-14', '14:00:00'),
    ('1013', '2023-08-15', '11:15:00'),
    ('1014', '2023-08-16', '19:30:00'),
    ('1015', '2023-08-17', '10:00:00'),
    ('1016', '2023-08-18', '15:45:00'),
    ('1017', '2023-08-19', '12:15:00'),
    ('1018', '2023-08-20', '16:30:00'),
    ('1019', '2023-08-21', '13:30:00'),
    ('1020', '2023-08-22', '18:00:00')
);
	

 

CREATE TABLE Sales(
Sales_ID VARCHAR(10) PRIMARY KEY,
Food VARCHAR(45),
Drinks VARCHAR(45),
Take_Away VARCHAR(45),
Other VARCHAR(45),
Total VARCHAR(45)
);
insert into sales(sale_id,food,drinks,take_away,other,total)
values(
	('1001', 'Burger', 'Coke', 'Yes', 'Extra Cheese', '15.99'),
    ('1002', 'Pizza', 'Pepsi', 'No', 'Garlic Bread', '25.50'),
    ('1003', 'Salad', 'Water', 'Yes', 'Dressing', '12.00'),
    ('1004', 'Steak', 'Wine', 'No', 'Dessert', '35.75'),
    ('1005', 'Sushi', 'Sake', 'Yes', 'Miso Soup', '22.30'),
    ('1006', 'Pasta', 'Juice', 'Yes', 'Breadsticks', '18.75'),
    ('1007', 'Chicken Wings', 'Beer', 'No', 'Fries', '14.50'),
    ('1008', 'Sandwich', 'Iced Tea', 'Yes', 'Chips', '9.99'),
    ('1009', 'Taco', 'Margarita', 'No', 'Guacamole', '17.25'),
    ('1010', 'Ramen', 'Soda', 'Yes', 'Edamame', '13.80'),
    ('1011', 'Fish and Chips', 'Lemonade', 'No', 'Coleslaw', '20.25'),
    ('1012', 'Fried Rice', 'Tea', 'Yes', 'Egg Roll', '16.50'),
    ('1013', 'Hot Dog', 'Coffee', 'Yes', 'Onion Rings', '10.50'),
    ('1014', 'Curry', 'Lassi', 'Yes', 'Naan', '19.00'),
    ('1015', 'Noodles', 'Smoothie', 'No', 'Spring Rolls', '21.25'),
    ('1016', 'Meatball Sub', 'Orange Juice', 'Yes', 'Chips', '12.99'),
    ('1017', 'Shawarma', 'Lemonade', 'Yes', 'Hummus', '14.75'),
    ('1018', 'Sushi', 'Green Tea', 'No', 'Miso Soup', '24.00'),
    ('1019', 'Pho', 'Iced Coffee', 'Yes', 'Spring Rolls', '16.80'),
    ('1020', 'Chicken Rice', 'Water', 'Yes', 'Papaya Salad', '18.50')
  );

 

CREATE TABLE Tips(
Tips_ID VARCHAR(45) PRIMARY KEY,
Credit_Card_Tip VARCHAR(45),
Service_Charges VARCHAR(45),
Total VARCHAR(45));
insert into tips(tip_id,credit_card_tip,service_charges,total)
values(
	('1001', '10', '5', '15.00'),
    ('1002', '8', '4', '12.00'),
    ('1003', '12', '6', '18.00'),
    ('1004', '15', '7', '22.00'),
    ('1005', '5', '3', '8.00'),
    ('1006', '10', '5', '15.00'),
    ('1007', '7', '3', '10.00'),
    ('1008', '20', '10', '30.00'),
    ('1009', '13', '6', '19.00'),
    ('1010', '9', '4', '13.00'),
    ('1011', '11', '5', '16.00'),
    ('1012', '18', '8', '26.00'),
    ('1013', '6', '3', '9.00'),
    ('1014', '12', '6', '18.00'),
    ('1015', '10', '5', '15.00'),
    ('1016', '14', '7', '21.00'),
    ('1017', '8', '4', '12.00'),
    ('1018', '16', '8', '24.00'),
    ('1019', '11', '5', '16.00'),
    ('1020', '9', '4', '13.00')
);

 

CREATE TABLE EPOS(
EPOS_ID VARCHAR(45) PRIMARY KEY,
Schedule_ID VARCHAR(10) REFERENCES Schedule(Schedule_ID),
Tax_Payments_ID VARCHAR(45) REFERENCES Tax_Payments(Tax_Payments_ID),
Sales VARCHAR(45),
Tips_ID VARCHAR(45) REFERENCES Tips(Tips_ID)
);
insert into EPOS(EPOS_ID,schedule_id,tax_payment_id,sale,tips_id)
values(
	('2001', '1001', '3001', 'POS Terminal 1', '1001'),
    ('2002', '1002', '3002', 'POS Terminal 2', '1002'),
    ('2003', '1003', '3003', 'POS Terminal 1', '1003'),
    ('2004', '1004', '3004', 'POS Terminal 2', '1004'),
    ('2005', '1005', '3005', 'POS Terminal 3', '1005'),
    ('2006', '1006', '3006', 'POS Terminal 1', '1006'),
    ('2007', '1007', '3007', 'POS Terminal 2', '1007'),
    ('2008', '1008', '3008', 'POS Terminal 3', '1008'),
    ('2009', '1009', '3009', 'POS Terminal 1', '1009'),
    ('2010', '1010', '3010', 'POS Terminal 2', '1010'),
    ('2011', '1011', '3011', 'POS Terminal 1', '1011'),
    ('2012', '1012', '3012', 'POS Terminal 3', '1012'),
    ('2013', '1013', '3013', 'POS Terminal 2', '1013'),
    ('2014', '1014', '3014', 'POS Terminal 1', '1014'),
    ('2015', '1015', '3015', 'POS Terminal 2', '1015'),
    ('2016', '1016', '3016', 'POS Terminal 3', '1016'),
    ('2017', '1017', '3017', 'POS Terminal 1', '1017'),
    ('2018', '1018', '3018', 'POS Terminal 2', '1018'),
    ('2019', '1019', '3019', 'POS Terminal 3', '1019'),
    ('2020', '1020', '3020', 'POS Terminal 1', '1020')
); 
 

 

CREATE TABLE Petty_Cash(
Petty_Cash_ID VARCHAR(45) PRIMARY KEY,
Food_and_Drinks VARCHAR(45),
Image BLOB,
Maintenance VARCHAR(45),
Repairs VARCHAR(45),
Surrendries VARCHAR(45),
Total VARCHAR(45));
insert into Petty_cash(Petty_Cash_ID,Food_and_Drinks,Image,Maintenance,Reoairs,Surrendries,Total)
values(
	('3001', '50', NULL, '10', '15', '5', '80.00'),
    ('3002', '30', NULL, '5', '10', '2', '47.00'),
    ('3003', '45', NULL, '8', '12', '3', '68.00'),
    ('3004', '55', NULL, '12', '18', '7', '92.00'),
    ('3005', '40', NULL, '7', '10', '4', '61.00'),
    ('3006', '35', NULL, '6', '8', '3', '52.00'),
    ('3007', '60', NULL, '15', '20', '8', '103.00'),
    ('3008', '75', NULL, '20', '25', '10', '130.00'),
    ('3009', '70', NULL, '18', '22', '9', '119.00'),
    ('3010', '25', NULL, '5', '8', '2', '40.00'),
    ('3011', '40', NULL, '10', '15', '6', '71.00'),
    ('3012', '55', NULL, '13', '18', '7', '93.00'),
    ('3013', '65', NULL, '16', '20', '8', '109.00'),
    ('3014', '30', NULL, '6', '10', '3', '49.00'),
    ('3015', '50', NULL, '12', '15', '6', '83.00'),
    ('3016', '45', NULL, '10', '12', '5', '72.00'),
    ('3017', '35', NULL, '8', '10', '4', '57.00'),
    ('3018', '55', NULL, '15', '20', '8', '98.00'),
    ('3019', '60', NULL, '18', '22', '9', '109.00'),
    ('3020', '20', NULL, '5', '6', '2', '33.00')
);
 

 

CREATE TABLE Till(
Till_ID VARCHAR(45) PRIMARY KEY,
Till1 VARCHAR(45),
Till2 VARCHAR(45),
Total VARCHAR(45));
insert into Till(Till_ID,Till1,Till2,Total)
values(
	('4001', '100', '150', '250.00'),
    ('4002', '200', '180', '380.00'),
    ('4003', '150', '120', '270.00'),
    ('4004', '180', '200', '380.00'),
    ('4005', '90', '110', '200.00'),
    ('4006', '120', '130', '250.00'),
    ('4007', '160', '180', '340.00'),
    ('4008', '140', '160', '300.00'),
    ('4009', '180', '200', '380.00'),
    ('4010', '110', '130', '240.00'),
    ('4011', '90', '100', '190.00'),
    ('4012', '130', '140', '270.00'),
    ('4013', '170', '190', '360.00'),
    ('4014', '120', '130', '250.00'),
    ('4015', '160', '180', '340.00'),
    ('4016', '180', '200', '380.00'),
    ('4017', '100', '120', '220.00'),
    ('4018', '140', '160', '300.00'),
    ('4019', '150', '170', '320.00'),
    ('4020', '200', '220', '420.00')
);

CREATE  TABLE PDQ(
PDQ_ID VARCHAR(45) PRIMARY KEY,
Vouchers VARCHAR(45),
Visa1 VARCHAR(45),
Amex1 VARCHAR(45),
iZettle VARCHAR(45),
Visa2 VARCHAR(45),
Amex2 VARCHAR(45),
Total VARCHAR(45));
insert into PDQ (PDQ_ID, Vouchers, Visa1, Amex1, iZettle, Visa2, Amex2, Total)
values(
    ('5001', '20', '50', '30', '15', '60', '35', '210.00'),
    ('5002', '15', '40', '25', '10', '45', '20', '155.00'),
    ('5003', '25', '60', '35', '20', '70', '40', '250.00'),
    ('5004', '30', '70', '40', '25', '80', '45', '290.00'),
    ('5005', '10', '30', '20', '10', '35', '15', '120.00'),
    ('5006', '15', '40', '25', '15', '50', '30', '175.00'),
    ('5007', '20', '50', '30', '20', '60', '35', '215.00'),
    ('5008', '25', '60', '35', '25', '70', '40', '255.00'),
    ('5009', '30', '70', '40', '30', '80', '45', '300.00'),
    ('5010', '10', '30', '20', '10', '35', '15', '120.00'),
    ('5011', '15', '40', '25', '15', '50', '30', '175.00'),
    ('5012', '20', '50', '30', '20', '60', '35', '215.00'),
    ('5013', '25', '60', '35', '25', '70', '40', '255.00'),
    ('5014', '30', '70', '40', '30', '80', '45', '300.00'),
    ('5015', '10', '30', '20', '10', '35', '15', '120.00'),
    ('5016', '15', '40', '25', '15', '50', '30', '175.00'),
    ('5017', '20', '50', '30', '20', '60', '35', '215.00'),
    ('5018', '25', '60', '35', '25', '70', '40', '255.00'),
    ('5019', '30', '70', '40', '30', '80', '45', '300.00'),
    ('5020', '10', '30', '20', '10', '35', '15', '120.00')
);

 

CREATE TABLE Wage_Advances(
Wage_ID VARCHAR(45) PRIMARY KEY,
Employee_ID VARCHAR(10) REFERENCES Employee(Employee_ID),
Emp_Name VARCHAR(45),
Department VARCHAR(45),
Advance_Provided VARCHAR(45),
Total VARCHAR(45),
View_CashUp_ID VARCHAR(45) REFERENCES View_CashUp_Sheet(View_CashUp_ID));
insert into Wage_Advances (Wage_ID, Employee_ID, Emp_Name, Department, Advance_Provided, Total, View_CashUp_ID)
values
    ('6001', 'EMP001', 'John Smith', 'Finance', '100', '250.00', 'VCU001'),
    ('6002', 'EMP002', 'Jane Doe', 'HR', '150', '350.00', 'VCU002'),
    ('6003', 'EMP003', 'Mike Johnson', 'IT', '120', '280.00', 'VCU003'),
    ('6004', 'EMP004', 'Emily Brown', 'Marketing', '80', '220.00', 'VCU004'),
    ('6005', 'EMP005', 'David Lee', 'Sales', '200', '450.00', 'VCU005'),
    ('6006', 'EMP006', 'Lisa Taylor', 'Operations', '90', '230.00', 'VCU006'),
    ('6007', 'EMP007', 'Kevin Wilson', 'Finance', '130', '320.00', 'VCU007'),
    ('6008', 'EMP008', 'Karen Adams', 'HR', '110', '270.00', 'VCU008'),
    ('6009', 'EMP009', 'Michael Miller', 'IT', '70', '200.00', 'VCU009'),
    ('6010', 'EMP010', 'Emma Clark', 'Marketing', '180', '400.00', 'VCU010'),
    ('6011', 'EMP011', 'Andrew Scott', 'Sales', '100', '250.00', 'VCU011'),
    ('6012', 'EMP012', 'Olivia Martinez', 'Operations', '140', '330.00', 'VCU012'),
    ('6013', 'EMP013', 'William White', 'Finance', '60', '180.00', 'VCU013'),
    ('6014', 'EMP014', 'Sophia Garcia', 'HR', '190', '410.00', 'VCU014'),
    ('6015', 'EMP015', 'James Robinson', 'IT', '80', '220.00', 'VCU015'),
    ('6016', 'EMP016', 'Abigail Hernandez', 'Marketing', '150', '350.00', 'VCU016'),
    ('6017', 'EMP017', 'Benjamin Adams', 'Sales', '130', '320.00', 'VCU017'),
    ('6018', 'EMP018', 'Ella Allen', 'Operations', '70', '200.00', 'VCU018'),
    ('6019', 'EMP019', 'Daniel Cook', 'Finance', '200', '450.00', 'VCU019'),
    ('6020', 'EMP020', 'Madison Baker', 'HR', '110', '270.00', 'VCU020');
 

 

CREATE TABLE Cash_and_PDQ (
Cash_and_PDQ_ID VARCHAR(45) PRIMARY KEY,
Schedule_ID VARCHAR(45) REFERENCES Schedule(Schedule_ID),
Petty_Cash_ID VARCHAR(45) REFERENCES Petty_Cash(Petty_Cash_ID),
Till_ID VARCHAR(45) REFERENCES Till(Till_ID),
PDQ_ID VARCHAR(45) REFERENCES PDQ(PDQ_ID),
Wage_Advance_ID VARCHAR(45) REFERENCES Wage_Advances(Wage_ID));
INSERT INTO Wage_Advances (Wage_ID, Employee_ID, Emp_Name, Department, Advance_Provided, Total, View_CashUp_ID)
VALUES
    ('6001', 'EMP001', 'John Smith', 'Finance', '100', '250.00', 'VCU001'),
    ('6002', 'EMP002', 'Jane Doe', 'HR', '150', '350.00', 'VCU002'),
    ('6003', 'EMP003', 'Mike Johnson', 'IT', '120', '280.00', 'VCU003'),
    ('6004', 'EMP004', 'Emily Brown', 'Marketing', '80', '220.00', 'VCU004'),
    ('6005', 'EMP005', 'David Lee', 'Sales', '200', '450.00', 'VCU005'),
    ('6006', 'EMP006', 'Lisa Taylor', 'Operations', '90', '230.00', 'VCU006'),
    ('6007', 'EMP007', 'Kevin Wilson', 'Finance', '130', '320.00', 'VCU007'),
    ('6008', 'EMP008', 'Karen Adams', 'HR', '110', '270.00', 'VCU008'),
    ('6009', 'EMP009', 'Michael Miller', 'IT', '70', '200.00', 'VCU009'),
    ('6010', 'EMP010', 'Emma Clark', 'Marketing', '180', '400.00', 'VCU010'),
    ('6011', 'EMP011', 'Andrew Scott', 'Sales', '100', '250.00', 'VCU011'),
    ('6012', 'EMP012', 'Olivia Martinez', 'Operations', '140', '330.00', 'VCU012'),
    ('6013', 'EMP013', 'William White', 'Finance', '60', '180.00', 'VCU013'),
    ('6014', 'EMP014', 'Sophia Garcia', 'HR', '190', '410.00', 'VCU014'),
    ('6015', 'EMP015', 'James Robinson', 'IT', '80', '220.00', 'VCU015'),
    ('6016', 'EMP016', 'Abigail Hernandez', 'Marketing', '150', '350.00', 'VCU016'),
    ('6017', 'EMP017', 'Benjamin Adams', 'Sales', '130', '320.00', 'VCU017'),
    ('6018', 'EMP018', 'Ella Allen', 'Operations', '70', '200.00', 'VCU018'),
    ('6019', 'EMP019', 'Daniel Cook', 'Finance', '200', '450.00', 'VCU019'),
    ('6020', 'EMP020', 'Madison Baker', 'HR', '110', '270.00', 'VCU020');



CREATE TABLE EPOS(
EPOS_ID VARCHAR(45) PRIMARY KEY,
Schedule_ID VARCHAR(10) REFERENCES Schedule(Schedule_ID),
Tax_Payments_ID VARCHAR(45) REFERENCES Tax_Payments(Tax_Payments_ID),
Sales VARCHAR(45),
Tips_ID VARCHAR(45) REFERENCES Tips(Tips_ID));

INSERT INTO EPOS (EPOS_ID, Schedule_ID, Tax_Payments_ID, Sales, Tips_ID)
VALUES
    ('EPOS001', 'SCH001', 'TAX001', '120.00', 'TIP001'),
    ('EPOS002', 'SCH002', 'TAX002', '150.00', 'TIP002'),
    ('EPOS003', 'SCH003', 'TAX003', '180.00', 'TIP003'),
    ('EPOS004', 'SCH004', 'TAX004', '100.00', 'TIP004'),
    ('EPOS005', 'SCH005', 'TAX005', '90.00', 'TIP005'),
    ('EPOS006', 'SCH006', 'TAX006', '200.00', 'TIP006'),
    ('EPOS007', 'SCH007', 'TAX007', '130.00', 'TIP007'),
    ('EPOS008', 'SCH008', 'TAX008', '140.00', 'TIP008'),
    ('EPOS009', 'SCH009', 'TAX009', '170.00', 'TIP009'),
    ('EPOS010', 'SCH010', 'TAX010', '110.00', 'TIP010'),
    ('EPOS011', 'SCH011', 'TAX011', '160.00', 'TIP011'),
    ('EPOS012', 'SCH012', 'TAX012', '190.00', 'TIP012'),
    ('EPOS013', 'SCH013', 'TAX013', '180.00', 'TIP013'),
    ('EPOS014', 'SCH014', 'TAX014', '220.00', 'TIP014'),
    ('EPOS015', 'SCH015', 'TAX015', '130.00', 'TIP015'),
    ('EPOS016', 'SCH016', 'TAX016', '250.00', 'TIP016'),
    ('EPOS017', 'SCH017', 'TAX017', '170.00', 'TIP017'),
    ('EPOS018', 'SCH018', 'TAX018', '140.00', 'TIP018'),
    ('EPOS019', 'SCH019', 'TAX019', '200.00', 'TIP019'),
    ('EPOS020', 'SCH020', 'TAX020', '110.00', 'TIP020');





CREATE TABLE Cash_and_PDQ (
Cash_and_PDQ_ID VARCHAR(45) PRIMARY KEY,
Schedule_ID VARCHAR(45) REFERENCES Schedule(Schedule_ID),
Petty_Cash_ID VARCHAR(45) REFERENCES Petty_Cash(Petty_Cash_ID),
Till_ID VARCHAR(45) REFERENCES Till(Till_ID),
PDQ_ID VARCHAR(45) REFERENCES PDQ(PDQ_ID),
Wage_Advance_ID VARCHAR(45) REFERENCES Wage_Advances(Wage_ID));
insert into Cash_and_PDQ (Cash_and_PDQ_ID, Schedule_ID, Petty_Cash_ID, Till_ID, PDQ_ID, Wage_Advance_ID)
values
    ('CPDQ001', 'SCH001', '3001', '4001', '5001', '6001'),
    ('CPDQ002', 'SCH002', '3002', '4002', '5002', '6002'),
    ('CPDQ003', 'SCH003', '3003', '4003', '5003', '6003'),
    ('CPDQ004', 'SCH004', '3004', '4004', '5004', '6004'),
    ('CPDQ005', 'SCH005', '3005', '4005', '5005', '6005'),
    ('CPDQ006', 'SCH006', '3006', '4006', '5006', '6006'),
    ('CPDQ007', 'SCH007', '3007', '4007', '5007', '6007'),
    ('CPDQ008', 'SCH008', '3008', '4008', '5008', '6008'),
    ('CPDQ009', 'SCH009', '3009', '4009', '5009', '6009'),
    ('CPDQ010', 'SCH010', '3010', '4010', '5010', '6010'),
    ('CPDQ011', 'SCH011', '3011', '4011', '5011', '6011'),
    ('CPDQ012', 'SCH012', '3012', '4012', '5012', '6012'),
    ('CPDQ013', 'SCH013', '3013', '4013', '5013', '6013'),
    ('CPDQ014', 'SCH014', '3014', '4014', '5014', '6014'),
    ('CPDQ015', 'SCH015', '3015', '4015', '5015', '6015'),
    ('CPDQ016', 'SCH016', '3016', '4016', '5016', '6016'),
    ('CPDQ017', 'SCH017', '3017', '4017', '5017', '6017'),
    ('CPDQ018', 'SCH018', '3018', '4018', '5018', '6018'),
    ('CPDQ019', 'SCH019', '3019', '4019', '5019', '6019'),
    ('CPDQ020', 'SCH020', '3020', '4020', '5020', '6020');

CREATE TABLE Third_Party(
Third_Party_ID VARCHAR(45) PRIMARY KEY,
Zomato VARCHAR(45),
JustEat VARCHAR(45),
Deliver VARCHAR(45),
UberEats VARCHAR(45),
Total VARCHAR(45));
insert into Third_Party (Third_Party_ID, Zomato, JustEat, Deliver, UberEats, Total)
values    
	('TP001', '50.00', '40.00', '30.00', '60.00', '180.00'),
    ('TP002', '45.00', '35.00', '25.00', '50.00', '155.00'),
    ('TP003', '55.00', '45.00', '35.00', '70.00', '205.00'),
    ('TP004', '60.00', '50.00', '40.00', '80.00', '230.00'),
    ('TP005', '40.00', '30.00', '20.00', '40.00', '130.00'),
    ('TP006', '50.00', '40.00', '30.00', '60.00', '180.00'),
    ('TP007', '45.00', '35.00', '25.00', '50.00', '155.00'),
    ('TP008', '55.00', '45.00', '35.00', '70.00', '205.00'),
    ('TP009', '60.00', '50.00', '40.00', '80.00', '230.00'),
    ('TP010', '40.00', '30.00', '20.00', '40.00', '130.00'),
    ('TP011', '50.00', '40.00', '30.00', '60.00', '180.00'),
    ('TP012', '45.00', '35.00', '25.00', '50.00', '155.00'),
    ('TP013', '55.00', '45.00', '35.00', '70.00', '205.00'),
    ('TP014', '60.00', '50.00', '40.00', '80.00', '230.00'),
    ('TP015', '40.00', '30.00', '20.00', '40.00', '130.00'),
    ('TP016', '50.00', '40.00', '30.00', '60.00', '180.00'),
    ('TP017', '45.00', '35.00', '25.00', '50.00', '155.00'),
    ('TP018', '55.00', '45.00', '35.00', '70.00', '205.00'),
    ('TP019', '60.00', '50.00', '40.00', '80.00', '230.00'),
    ('TP020', '40.00', '30.00', '20.00', '40.00', '130.00');

 

CREATE TABLE Third_Party_Main(
Third_Party_Main_ID VARCHAR(45) PRIMARY KEY,
Schedule_ID VARCHAR(45) REFERENCES Schedule(Schedule_ID),
Third_Party_ID VARCHAR(45) REFERENCES Third_Party(Third_Party_ID));
insert into Third_Party_Main (Third_Party_Main_ID, Schedule_ID, Third_Party_ID)
values
    ('TPM001', 'SCH001', 'TP001'),
    ('TPM002', 'SCH002', 'TP002'),
    ('TPM003', 'SCH003', 'TP003'),
    ('TPM004', 'SCH004', 'TP004'),
    ('TPM005', 'SCH005', 'TP005'),
    ('TPM006', 'SCH006', 'TP006'),
    ('TPM007', 'SCH007', 'TP007'),
    ('TPM008', 'SCH008', 'TP008'),
    ('TPM009', 'SCH009', 'TP009'),
    ('TPM010', 'SCH010', 'TP010'),
    ('TPM011', 'SCH011', 'TP011'),
    ('TPM012', 'SCH012', 'TP012'),
    ('TPM013', 'SCH013', 'TP013'),
    ('TPM014', 'SCH014', 'TP014'),
    ('TPM015', 'SCH015', 'TP015'),
    ('TPM016', 'SCH016', 'TP016'),
    ('TPM017', 'SCH017', 'TP017'),
    ('TPM018', 'SCH018', 'TP018'),
    ('TPM019', 'SCH019', 'TP019'),
    ('TPM020', 'SCH020', 'TP020');



CREATE TABLE Covers(
Covers_ID VARCHAR(45) PRIMARY KEY,
Table_Covers VARCHAR(45),
Third_Party_Covers  VARCHAR(45),
Take_Away_Covers VARCHAR(45),
VOID VARCHAR(45),
Total VARCHAR(45));
insert into Covers (Covers_ID, Table_Covers, Third_Party_Covers, Take_Away_Covers, VOID, Total)
values
    ('CVR001', '10', '5', '15', '2', '32'),
    ('CVR002', '15', '3', '12', '1', '31'),
    ('CVR003', '8', '6', '18', '3', '35'),
    ('CVR004', '12', '4', '14', '2', '32'),
    ('CVR005', '20', '8', '10', '4', '42'),
    ('CVR006', '14', '7', '17', '1', '39'),
    ('CVR007', '18', '2', '13', '3', '36'),
    ('CVR008', '16', '6', '14', '2', '38'),
    ('CVR009', '10', '5', '15', '2', '32'),
    ('CVR010', '15', '3', '12', '1', '31'),
    ('CVR011', '8', '6', '18', '3', '35'),
    ('CVR012', '12', '4', '14', '2', '32'),
    ('CVR013', '20', '8', '10', '4', '42'),
    ('CVR014', '14', '7', '17', '1', '39'),
    ('CVR015', '18', '2', '13', '3', '36'),
    ('CVR016', '16', '6', '14', '2', '38'),
    ('CVR017', '10', '5', '15', '2', '32'),
    ('CVR018', '15', '3', '12', '1', '31'),
    ('CVR019', '8', '6', '18', '3', '35'),
    ('CVR020', '12', '4', '14', '2', '32');
 

 

CREATE TABLE Refound_BreakDown(
Refound_ID VARCHAR(45) PRIMARY KEY,
BillNumber VARCHAR(45),
Reason TEXT,
Amount VARCHAR(45),
Image BLOB,
Total VARCHAR(45),
View_CashUp_ID VARCHAR(45) REFERENCES View_CashUp_Sheet(View_CashUp_ID));
insert into Refound_BreakDown (Refound_ID, BillNumber, Reason, Amount, Image, Total, View_CashUp_ID)
values
    ('RF001', '1001', 'Defective product', '25.00', 'Image1.jpg', '25.00', 'VCS001'),
    ('RF002', '1002', 'Wrong item received', '30.00', 'Image2.jpg', '30.00', 'VCS002'),
    ('RF003', '1003', 'Item not as described', '20.00', 'Image3.jpg', '20.00', 'VCS003'),
    ('RF004', '1004', 'Damaged during shipping', '15.00', 'Image4.jpg', '15.00', 'VCS004'),
    ('RF005', '1005', 'Wrong size ordered', '10.00', 'Image5.jpg', '10.00', 'VCS005'),
    ('RF006', '1006', 'Defective product', '25.00', 'Image6.jpg', '25.00', 'VCS006'),
    ('RF007', '1007', 'Wrong item received', '30.00', 'Image7.jpg', '30.00', 'VCS007'),
    ('RF008', '1008', 'Item not as described', '20.00', 'Image8.jpg', '20.00', 'VCS008'),
    ('RF009', '1009', 'Damaged during shipping', '15.00', 'Image9.jpg', '15.00', 'VCS009'),
    ('RF010', '1010', 'Wrong size ordered', '10.00', 'Image10.jpg', '10.00', 'VCS010'),
    ('RF011', '1011', 'Defective product', '25.00', 'Image11.jpg', '25.00', 'VCS011'),
    ('RF012', '1012', 'Wrong item received', '30.00', 'Image12.jpg', '30.00', 'VCS012'),
    ('RF013', '1013', 'Item not as described', '20.00', 'Image13.jpg', '20.00', 'VCS013'),
    ('RF014', '1014', 'Damaged during shipping', '15.00', 'Image14.jpg', '15.00', 'VCS014'),
    ('RF015', '1015', 'Wrong size ordered', '10.00', 'Image15.jpg', '10.00', 'VCS015'),
    ('RF016', '1016', 'Defective product', '25.00', 'Image16.jpg', '25.00', 'VCS016'),
    ('RF017', '1017', 'Wrong item received', '30.00', 'Image17.jpg', '30.00', 'VCS017'),
    ('RF018', '1018', 'Item not as described', '20.00', 'Image18.jpg', '20.00', 'VCS018'),
    ('RF019', '1019', 'Damaged during shipping', '15.00', 'Image19.jpg', '15.00', 'VCS019'),
    ('RF020', '1020', 'Wrong size ordered', '10.00', 'Image20.jpg', '10.00', 'VCS020');




CREATE TABLE Complaints(
Complaints_ID VARCHAR(45) PRIMARY KEY,
complaints VARCHAR(45),
Description VARCHAR(45));
insert into Complaints (Complaints_ID, complaints, Description)
values
    ('CPL001', 'Product Quality', 'Received a damaged item.'),
    ('CPL002', 'Late Delivery', 'Order arrived after the promised delivery time.'),
    ('CPL003', 'Wrong Product', 'Received a different product than what was ordered.'),
    ('CPL004', 'Customer Service', 'Had a bad experience with customer support.'),
    ('CPL005', 'Billing Issue', 'Incorrect charges on the bill.'),
    ('CPL006', 'Missing Items', 'Some items were missing from the order.'),
    ('CPL007', 'Rude Staff', 'Encountered rude behavior from the staff.'),
    ('CPL008', 'Refund Problem', 'Faced issues while getting a refund for a returned item.'),
    ('CPL009', 'Shipping Problem', 'Problems with the shipping carrier.'),
    ('CPL010', 'Product Defect', 'Received a product with a manufacturing defect.'),
    ('CPL011', 'Product Quality', 'Received a damaged item.'),
    ('CPL012', 'Late Delivery', 'Order arrived after the promised delivery time.'),
    ('CPL013', 'Wrong Product', 'Received a different product than what was ordered.'),
    ('CPL014', 'Customer Service', 'Had a bad experience with customer support.'),
    ('CPL015', 'Billing Issue', 'Incorrect charges on the bill.'),
    ('CPL016', 'Missing Items', 'Some items were missing from the order.'),
    ('CPL017', 'Rude Staff', 'Encountered rude behavior from the staff.'),
    ('CPL018', 'Refund Problem', 'Faced issues while getting a refund for a returned item.'),
    ('CPL019', 'Shipping Problem', 'Problems with the shipping carrier.'),
    ('CPL020', 'Product Defect', 'Received a product with a manufacturing defect.');




CREATE TABLE DiscountBreakDown(
Discount_ID VARCHAR(45) PRIMARY KEY,
Bill_Number VARCHAR(45),
Reason VARCHAR(45),
Amount VARCHAR(45),
Image BLOB,
Total VARCHAR(45),
View_CashUp_ID VARCHAR(45) references View_CashUp_Sheet(View_CashUp_ID));
insert into DiscountBreakDown (Discount_ID, Bill_Number, Reason, Amount, Image, Total, View_CashUp_ID)
values
    ('DIS001', '1001', 'Seasonal Promotion', '5.00', 'Image1.jpg', '5.00', 'VCS001'),
    ('DIS002', '1002', 'First-time Customer', '10.00', 'Image2.jpg', '10.00', 'VCS002'),
    ('DIS003', '1003', 'Clearance Sale', '15.00', 'Image3.jpg', '15.00', 'VCS003'),
    ('DIS004', '1004', 'Referral Program', '8.00', 'Image4.jpg', '8.00', 'VCS004'),
    ('DIS005', '1005', 'Birthday Discount', '12.00', 'Image5.jpg', '12.00', 'VCS005'),
    ('DIS006', '1006', 'Seasonal Promotion', '5.00', 'Image6.jpg', '5.00', 'VCS006'),
    ('DIS007', '1007', 'First-time Customer', '10.00', 'Image7.jpg', '10.00', 'VCS007'),
    ('DIS008', '1008', 'Clearance Sale', '15.00', 'Image8.jpg', '15.00', 'VCS008'),
    ('DIS009', '1009', 'Referral Program', '8.00', 'Image9.jpg', '8.00', 'VCS009'),
    ('DIS010', '1010', 'Birthday Discount', '12.00', 'Image10.jpg', '12.00', 'VCS010'),
    ('DIS011', '1011', 'Seasonal Promotion', '5.00', 'Image11.jpg', '5.00', 'VCS011'),
    ('DIS012', '1012', 'First-time Customer', '10.00', 'Image12.jpg', '10.00', 'VCS012'),
    ('DIS013', '1013', 'Clearance Sale', '15.00', 'Image13.jpg', '15.00', 'VCS013'),
    ('DIS014', '1014', 'Referral Program', '8.00', 'Image14.jpg', '8.00', 'VCS014'),
    ('DIS015', '1015', 'Birthday Discount', '12.00', 'Image15.jpg', '12.00', 'VCS015'),
    ('DIS016', '1016', 'Seasonal Promotion', '5.00', 'Image16.jpg', '5.00', 'VCS016'),
    ('DIS017', '1017', 'First-time Customer', '10.00', 'Image17.jpg', '10.00', 'VCS017'),
    ('DIS018', '1018', 'Clearance Sale', '15.00', 'Image18.jpg', '15.00', 'VCS018'),
    ('DIS019', '1019', 'Referral Program', '8.00', 'Image19.jpg', '8.00', 'VCS019'),
    ('DIS020', '1020', 'Birthday Discount', '12.00', 'Image20.jpg', '12.00', 'VCS020');
 

 
CREATE TABLE KPIs(
KPI_ID VARCHAR(45) PRIMARY KEY,
Schedule_ID VARCHAR(45) REFERENCES Schedule(Schedule_ID),
Covers_ID VARCHAR(45) REFERENCES Covers(Covers_ID),
Refound_ID VARCHAR(45) REFERENCES Refound_BreakDown(Refound_ID),
Complaints_ID VARCHAR(45) REFERENCES Complaints(Complaints_ID),
Discount_ID VARCHAR(45) REFERENCES DiscountBreakDown(Discount_ID));
insert into KPIs (KPI_ID, Schedule_ID, Covers_ID, Refound_ID, Complaints_ID, Discount_ID)
values
    ('KPI001', 'SCH001', 'CVR001', 'RF001', 'CPL001', 'DIS001'),
    ('KPI002', 'SCH002', 'CVR002', 'RF002', 'CPL002', 'DIS002'),
    ('KPI003', 'SCH003', 'CVR003', 'RF003', 'CPL003', 'DIS003'),
    ('KPI004', 'SCH004', 'CVR004', 'RF004', 'CPL004', 'DIS004'),
    ('KPI005', 'SCH005', 'CVR005', 'RF005', 'CPL005', 'DIS005'),
    ('KPI006', 'SCH006', 'CVR006', 'RF006', 'CPL006', 'DIS006'),
    ('KPI007', 'SCH007', 'CVR007', 'RF007', 'CPL007', 'DIS007'),
    ('KPI008', 'SCH008', 'CVR008', 'RF008', 'CPL008', 'DIS008'),
    ('KPI009', 'SCH009', 'CVR009', 'RF009', 'CPL009', 'DIS009'),
    ('KPI010', 'SCH010', 'CVR010', 'RF010', 'CPL010', 'DIS010'),
    ('KPI011', 'SCH011', 'CVR011', 'RF011', 'CPL011', 'DIS011'),
    ('KPI012', 'SCH012', 'CVR012', 'RF012', 'CPL012', 'DIS012'),
    ('KPI013', 'SCH013', 'CVR013', 'RF013', 'CPL013', 'DIS013'),
    ('KPI014', 'SCH014', 'CVR014', 'RF014', 'CPL014', 'DIS014'),
    ('KPI015', 'SCH015', 'CVR015', 'RF015', 'CPL015', 'DIS015'),
    ('KPI016', 'SCH016', 'CVR016', 'RF016', 'CPL016', 'DIS016'),
    ('KPI017', 'SCH017', 'CVR017', 'RF017', 'CPL017', 'DIS017'),
    ('KPI018', 'SCH018', 'CVR018', 'RF018', 'CPL018', 'DIS018'),
    ('KPI019', 'SCH019', 'CVR019', 'RF019', 'CPL019', 'DIS019'),
    ('KPI020', 'SCH020', 'CVR020', 'RF020', 'CPL020', 'DIS020');
 

 

CREATE TABLE Summary1 (
Summary1_ID VARCHAR(45) PRIMARY KEY,
Differences VARCHAR(45),
EPOS__ID VARCHAR(45) REFERENCES EPOS(EPOS_ID),
Cash_and_PDQ_ID VARCHAR(45) REFERENCES Cash_and_PDQ(Cash_and_PDQ_ID),
Third_Party_Main_ID VARCHAR(45) REFERENCES Third_Party_Main(Third_Party_Main_ID));
insert into Summary1 (Summary1_ID, Differences, EPOS__ID, Cash_and_PDQ_ID, Third_Party_Main_ID)
values
    ('SUM001', 'Mismatch in sales data', 'EPOS001', 'CPDQ001', 'TPM001'),
    ('SUM002', 'Cash discrepancy', 'EPOS002', 'CPDQ002', 'TPM002'),
    ('SUM003', 'Missing PDQ transactions', 'EPOS003', 'CPDQ003', 'TPM003'),
    ('SUM004', 'Incorrect Third Party data', 'EPOS004', 'CPDQ004', 'TPM004'),
    ('SUM005', 'Mismatch in sales data', 'EPOS005', 'CPDQ005', 'TPM005'),
    ('SUM006', 'Cash discrepancy', 'EPOS006', 'CPDQ006', 'TPM006'),
    ('SUM007', 'Missing PDQ transactions', 'EPOS007', 'CPDQ007', 'TPM007'),
    ('SUM008', 'Incorrect Third Party data', 'EPOS008', 'CPDQ008', 'TPM008'),
    ('SUM009', 'Mismatch in sales data', 'EPOS009', 'CPDQ009', 'TPM009'),
    ('SUM010', 'Cash discrepancy', 'EPOS010', 'CPDQ010', 'TPM010'),
    ('SUM011', 'Missing PDQ transactions', 'EPOS011', 'CPDQ011', 'TPM011'),
    ('SUM012', 'Incorrect Third Party data', 'EPOS012', 'CPDQ012', 'TPM012'),
    ('SUM013', 'Mismatch in sales data', 'EPOS013', 'CPDQ013', 'TPM013'),
    ('SUM014', 'Cash discrepancy', 'EPOS014', 'CPDQ014', 'TPM014'),
    ('SUM015', 'Missing PDQ transactions', 'EPOS015', 'CPDQ015', 'TPM015'),
    ('SUM016', 'Incorrect Third Party data', 'EPOS016', 'CPDQ016', 'TPM016'),
    ('SUM017', 'Mismatch in sales data', 'EPOS017', 'CPDQ017', 'TPM017'),
    ('SUM018', 'Cash discrepancy', 'EPOS018', 'CPDQ018', 'TPM018'),
    ('SUM019', 'Missing PDQ transactions', 'EPOS019', 'CPDQ019', 'TPM019'),
    ('SUM020', 'Incorrect Third Party data', 'EPOS020', 'CPDQ020', 'TPM020');
 

 

CREATE TABLE SafeSummary(
Safe_Details_ID VARCHAR(45) PRIMARY KEY,
Safe_Count VARCHAR(45),
Till_Amount VARCHAR(45),
Banked_Amount VARCHAR(45),
Total VARCHAR(45),
Witness VARCHAR(45),
Summary1_ID VARCHAR(45) REFERENCES Summary1(Summary1_ID),
Schedule_ID VARCHAR(45) REFERENCES Schedule(Schedule_ID));
insert into SafeSummary (Safe_Details_ID, Safe_Count, Till_Amount, Banked_Amount, Total, Witness, Summary1_ID, Schedule_ID)
values
    ('SS001', '100.00', '250.00', '150.00', '400.00', 'John Doe', 'SUM001', 'SCH001'),
    ('SS002', '120.00', '230.00', '180.00', '410.00', 'Jane Smith', 'SUM002', 'SCH002'),
    ('SS003', '90.00', '210.00', '200.00', '410.00', 'David Johnson', 'SUM003', 'SCH003'),
    ('SS004', '110.00', '240.00', '160.00', '400.00', 'Mary Adams', 'SUM004', 'SCH004'),
    ('SS005', '105.00', '220.00', '170.00', '390.00', 'Robert Lee', 'SUM005', 'SCH005'),
    ('SS006', '95.00', '215.00', '185.00', '400.00', 'Susan Brown', 'SUM006', 'SCH006'),
    ('SS007', '98.00', '230.00', '175.00', '405.00', 'Michael Wilson', 'SUM007', 'SCH007'),
    ('SS008', '100.00', '240.00', '165.00', '405.00', 'Laura Miller', 'SUM008', 'SCH008'),
    ('SS009', '102.00', '235.00', '160.00', '395.00', 'William Davis', 'SUM009', 'SCH009'),
    ('SS010', '96.00', '210.00', '190.00', '400.00', 'Emily Anderson', 'SUM010', 'SCH010'),
    ('SS011', '101.00', '225.00', '180.00', '405.00', 'Richard Taylor', 'SUM011', 'SCH011'),
    ('SS012', '94.00', '230.00', '170.00', '400.00', 'Linda Wilson', 'SUM012', 'SCH012'),
    ('SS013', '99.00', '215.00', '185.00', '400.00', 'James Moore', 'SUM013', 'SCH013'),
    ('SS014', '97.00', '240.00', '160.00', '400.00', 'Elizabeth Clark', 'SUM014', 'SCH014'),
    ('SS015', '103.00', '230.00', '175.00', '405.00', 'John Doe', 'SUM015', 'SCH015'),
    ('SS016', '92.00', '235.00', '160.00', '395.00', 'Jane Smith', 'SUM016', 'SCH016'),
    ('SS017', '104.00', '210.00', '190.00', '400.00', 'David Johnson', 'SUM017', 'SCH017'),
    ('SS018', '93.00', '225.00', '180.00', '405.00', 'Mary Adams', 'SUM018', 'SCH018'),
    ('SS019', '106.00', '230.00', '170.00', '400.00', 'Robert Lee', 'SUM019', 'SCH019'),
    ('SS020', '91.00', '215.00', '185.00', '400.00', 'Susan Brown', 'SUM020', 'SCH020');   
  
 

CREATE TABLE Add_CashUp_Sheets(
Add_CashUp_ID VARCHAR(45),
EPOS_ID VARCHAR(45) REFERENCES EPO(EPOS_ID),
Cash_and_PDQ_ID VARCHAR(45) REFERENCES Cash_and_PDQ(Cash_and_PDQ_ID),
Third_Party_Main_ID VARCHAR(45) REFERENCES Third_Party_Main(Third_Party_Main),
KPIs_ID VARCHAR(45) REFERENCES KPIs(KPI_ID),
Safe_Details_ID VARCHAR(45) REFERENCES SafeSummary(Safe_Detail_ID));
insert into Add_CashUp_Sheets (Add_CashUp_ID, EPOS_ID, Cash_and_PDQ_ID, Third_Party_Main_ID, KPIs_ID, Safe_Details_ID)
values
    ('ACS001', 'EPOS001', 'CPDQ001', 'TPM001', 'KPI001', 'SS001'),
    ('ACS002', 'EPOS002', 'CPDQ002', 'TPM002', 'KPI002', 'SS002'),
    ('ACS003', 'EPOS003', 'CPDQ003', 'TPM003', 'KPI003', 'SS003'),
    ('ACS004', 'EPOS004', 'CPDQ004', 'TPM004', 'KPI004', 'SS004'),
    ('ACS005', 'EPOS005', 'CPDQ005', 'TPM005', 'KPI005', 'SS005'),
    ('ACS006', 'EPOS006', 'CPDQ006', 'TPM006', 'KPI006', 'SS006'),
    ('ACS007', 'EPOS007', 'CPDQ007', 'TPM007', 'KPI007', 'SS007'),
    ('ACS008', 'EPOS008', 'CPDQ008', 'TPM008', 'KPI008', 'SS008'),
    ('ACS009', 'EPOS009', 'CPDQ009', 'TPM009', 'KPI009', 'SS009'),
    ('ACS010', 'EPOS010', 'CPDQ010', 'TPM010', 'KPI010', 'SS010'),
    ('ACS011', 'EPOS011', 'CPDQ011', 'TPM011', 'KPI011', 'SS011'),
    ('ACS012', 'EPOS012', 'CPDQ012', 'TPM012', 'KPI012', 'SS012'),
    ('ACS013', 'EPOS013', 'CPDQ013', 'TPM013', 'KPI013', 'SS013'),
    ('ACS014', 'EPOS014', 'CPDQ014', 'TPM014', 'KPI014', 'SS014'),
    ('ACS015', 'EPOS015', 'CPDQ015', 'TPM015', 'KPI015', 'SS015'),
    ('ACS016', 'EPOS016', 'CPDQ016', 'TPM016', 'KPI016', 'SS016'),
    ('ACS017', 'EPOS017', 'CPDQ017', 'TPM017', 'KPI017', 'SS017'),
    ('ACS018', 'EPOS018', 'CPDQ018', 'TPM018', 'KPI018', 'SS018'),
    ('ACS019', 'EPOS019', 'CPDQ019', 'TPM019', 'KPI019', 'SS019'),
    ('ACS020', 'EPOS020', 'CPDQ020', 'TPM020', 'KPI020', 'SS020');
 

CREATE TABLE Publish(
Publish_ID VARCHAR(45) PRIMARY KEY,
Reason TEXT,
Date DATE);
insert into Publish (Publish_ID, Reason, Date)
values
    ('PUB001', 'New product launch', '2023-08-01'),
    ('PUB002', 'Special offer promotion', '2023-08-02'),
    ('PUB003', 'Seasonal sale', '2023-08-03'),
    ('PUB004', 'Clearance sale', '2023-08-04'),
    ('PUB005', 'Anniversary celebration', '2023-08-05'),
    ('PUB006', 'Holiday discount', '2023-08-06'),
    ('PUB007', 'Limited time offer', '2023-08-07'),
    ('PUB008', 'New menu introduction', '2023-08-08'),
    ('PUB009', 'Weekend special', '2023-08-09'),
    ('PUB010', 'Grand opening event', '2023-08-10'),
    ('PUB011', 'Customer appreciation day', '2023-08-11'),
    ('PUB012', 'Flash sale', '2023-08-12'),
    ('PUB013', 'Promo codes giveaway', '2023-08-13'),
    ('PUB014', 'Social media contest', '2023-08-14'),
    ('PUB015', 'Happy hour promotion', '2023-08-15'),
    ('PUB016', 'Exclusive member offer', '2023-08-16'),
    ('PUB017', 'Back-to-school sale', '2023-08-17'),
    ('PUB018', 'Buy one get one free', '2023-08-18'),
    ('PUB019', 'Limited edition product release', '2023-08-19'),
    ('PUB020', 'Charity fundraising event', '2023-08-20');



CREATE TABLE View_CashUp_Sheet(
View_CashUp_ID VARCHAR(45) PRIMARY KEY,
Employee_ID VARCHAR(45) REFERENCES Employee(Employee_ID),
EPOS_ID VARCHAR(45) REFERENCES EPOS(EPOS_ID),
Petty_Cash_ID VARCHAR(45) REFERENCES Petty_Cash(Petty_Cash_ID),
Till_ID VARCHAR(45) REFERENCES Till(Till_ID),
Wages_ID VARCHAR(45) REFERENCES Wage_Advances(Wage_ID),
PDQ_ID VARCHAR(45) REFERENCES PDQ(PDQ_ID),
Third_Party_ID VARCHAR(45) REFERENCES Third_Party(Third_Party_ID),
Covers_ID VARCHAR(45) REFERENCES Covers(Covers_ID),
Refound_ID VARCHAR(45) REFERENCES Refound_BreakDown(Refound_ID),
Discount_ID VARCHAR(45) REFERENCES DiscountBreakDown(Discount_ID));
insert into View_CashUp_Sheet (View_CashUp_ID, Employee_ID, EPOS_ID, Petty_Cash_ID, Till_ID, Wages_ID, PDQ_ID, Third_Party_ID, Covers_ID, Refound_ID, Discount_ID)
values
    ('VCS001', 'EMP001', 'EPOS001', 'PC001', 'TILL001', 'WA001', 'PDQ001', 'TP001', 'CV001', 'RB001', 'DB001'),
    ('VCS002', 'EMP002', 'EPOS002', 'PC002', 'TILL002', 'WA002', 'PDQ002', 'TP002', 'CV002', 'RB002', 'DB002'),
    ('VCS003', 'EMP003', 'EPOS003', 'PC003', 'TILL003', 'WA003', 'PDQ003', 'TP003', 'CV003', 'RB003', 'DB003'),
    ('VCS004', 'EMP004', 'EPOS004', 'PC004', 'TILL004', 'WA004', 'PDQ004', 'TP004', 'CV004', 'RB004', 'DB004'),
    ('VCS005', 'EMP005', 'EPOS005', 'PC005', 'TILL005', 'WA005', 'PDQ005', 'TP005', 'CV005', 'RB005', 'DB005'),
    ('VCS006', 'EMP006', 'EPOS006', 'PC006', 'TILL006', 'WA006', 'PDQ006', 'TP006', 'CV006', 'RB006', 'DB006'),
    ('VCS007', 'EMP007', 'EPOS007', 'PC007', 'TILL007', 'WA007', 'PDQ007', 'TP007', 'CV007', 'RB007', 'DB007'),
    ('VCS008', 'EMP008', 'EPOS008', 'PC008', 'TILL008', 'WA008', 'PDQ008', 'TP008', 'CV008', 'RB008', 'DB008'),
    ('VCS009', 'EMP009', 'EPOS009', 'PC009', 'TILL009', 'WA009', 'PDQ009', 'TP009', 'CV009', 'RB009', 'DB009'),
    ('VCS010', 'EMP010', 'EPOS010', 'PC010', 'TILL010', 'WA010', 'PDQ010', 'TP010', 'CV010', 'RB010', 'DB010'),
    ('VCS011', 'EMP011', 'EPOS011', 'PC011', 'TILL011', 'WA011', 'PDQ011', 'TP011', 'CV011', 'RB011', 'DB011'),
    ('VCS012', 'EMP012', 'EPOS012', 'PC012', 'TILL012', 'WA012', 'PDQ012', 'TP012', 'CV012', 'RB012', 'DB012'),
    ('VCS013', 'EMP013', 'EPOS013', 'PC013', 'TILL013', 'WA013', 'PDQ013', 'TP013', 'CV013', 'RB013', 'DB013'),
    ('VCS014', 'EMP014', 'EPOS014', 'PC014', 'TILL014', 'WA014', 'PDQ014', 'TP014', 'CV014', 'RB014', 'DB014'),
    ('VCS015', 'EMP015', 'EPOS015', 'PC015', 'TILL015', 'WA015', 'PDQ015', 'TP015', 'CV015', 'RB015', 'DB015'),
    ('VCS016', 'EMP016', 'EPOS016', 'PC016', 'TILL016', 'WA016', 'PDQ016', 'TP016', 'CV016', 'RB016', 'DB016'),
    ('VCS017', 'EMP017', 'EPOS017', 'PC017', 'TILL017', 'WA017', 'PDQ017', 'TP017', 'CV017', 'RB017', 'DB017'),
    ('VCS018', 'EMP018', 'EPOS018', 'PC018', 'TILL018', 'WA018', 'PDQ018', 'TP018', 'CV018', 'RB018', 'DB018'),
    ('VCS019', 'EMP019', 'EPOS019', 'PC019', 'TILL019', 'WA019', 'PDQ019', 'TP019', 'CV019', 'RB019', 'DB019'),
    ('VCS020', 'EMP020', 'EPOS020', 'PC020', 'TILL020', 'WA020', 'PDQ020', 'TP020', 'CV020', 'RB020', 'DB020');


CREATE TABLE KPI_Total(
KPI_Total_ID VARCHAR(45) PRIMARY KEY,
VOID VARCHAR(45),
Discount VARCHAR(45),
Refound VARCHAR(45));
insert into KPI_Total (KPI_Total_ID, VOID, Discount, Refound)
values
    ('KPI001', '10', '5', '2'),
    ('KPI002', '8', '4', '3'),
    ('KPI003', '15', '2', '1'),
    ('KPI004', '12', '6', '4'),
    ('KPI005', '7', '3', '2'),
    ('KPI006', '5', '2', '1'),
    ('KPI007', '18', '3', '2'),
    ('KPI008', '6', '1', '1'),
    ('KPI009', '9', '5', '3'),
    ('KPI010', '14', '3', '2'),
    ('KPI011', '11', '2', '1'),
    ('KPI012', '13', '4', '2'),
    ('KPI013', '17', '2', '1'),
    ('KPI014', '16', '1', '1'),
    ('KPI015', '20', '3', '2'),
    ('KPI016', '8', '2', '1'),
    ('KPI017', '7', '1', '1'),
    ('KPI018', '9', '3', '2'),
    ('KPI019', '11', '2', '1'),
    ('KPI020', '12', '1', '1');
 

CREATE TABLE Action(
Action_ID VARCHAR(45),
View_CashUp_ID VARCHAR(45) REFERENCES View_CashUp_Sheet(View_CashUp_ID));
insert into Action (Action_ID, View_CashUp_ID)
values
    ('ACT001', 'VCS001'),
    ('ACT002', 'VCS002'),
    ('ACT003', 'VCS003'),
    ('ACT004', 'VCS004'),
    ('ACT005', 'VCS005'),
    ('ACT006', 'VCS006'),
    ('ACT007', 'VCS007'),
    ('ACT008', 'VCS008'),
    ('ACT009', 'VCS009'),
    ('ACT010', 'VCS010'),
    ('ACT011', 'VCS011'),
    ('ACT012', 'VCS012'),
    ('ACT013', 'VCS013'),
    ('ACT014', 'VCS014'),
    ('ACT015', 'VCS015'),
    ('ACT016', 'VCS016'),
    ('ACT017', 'VCS017'),
    ('ACT018', 'VCS018'),
    ('ACT019', 'VCS019'),
    ('ACT020', 'VCS020');
 

CREATE TABLE Drafts(
Drafts_ID VARCHAR(45) PRIMARY KEY,
Date DATE,
Time TIME,
EPOS VARCHAR(45),
Cash VARCHAR(45),
PDQ VARCHAR(45),
Delivery VARCHAR(45),
Difference VARCHAR(45),
KPI_Total_ID VARCHAR(45) REFERENCES KPI_Total(KPI_Total),
Action_ID VARCHAR(45) REFERENCES Action(Action_ID));
insert into Drafts (Drafts_ID, Date, Time, EPOS, Cash, PDQ, Delivery, Difference, KPI_Total_ID, Action_ID)
values
    ('DR001', '2023-08-01', '12:00:00', 'EPOS001', '100', '50', '30', '20', 'KPI001', 'ACT001'),
    ('DR002', '2023-08-02', '13:30:00', 'EPOS002', '150', '70', '40', '40', 'KPI002', 'ACT002'),
    ('DR003', '2023-08-03', '14:45:00', 'EPOS003', '120', '60', '35', '25', 'KPI003', 'ACT003'),
    ('DR004', '2023-08-04', '16:00:00', 'EPOS004', '130', '65', '30', '35', 'KPI004', 'ACT004'),
    ('DR005', '2023-08-05', '17:15:00', 'EPOS005', '110', '55', '25', '30', 'KPI005', 'ACT005'),
    ('DR006', '2023-08-06', '18:30:00', 'EPOS006', '90', '45', '20', '25', 'KPI006', 'ACT006'),
    ('DR007', '2023-08-07', '19:45:00', 'EPOS007', '140', '70', '35', '35', 'KPI007', 'ACT007'),
    ('DR008', '2023-08-08', '11:00:00', 'EPOS008', '100', '50', '25', '25', 'KPI008', 'ACT008'),
    ('DR009', '2023-08-09', '12:15:00', 'EPOS009', '110', '55', '30', '25', 'KPI009', 'ACT009'),
    ('DR010', '2023-08-10', '13:30:00', 'EPOS010', '120', '60', '35', '25', 'KPI010', 'ACT010'),
    ('DR011', '2023-08-11', '14:45:00', 'EPOS011', '130', '65', '40', '25', 'KPI011', 'ACT011'),
    ('DR012', '2023-08-12', '16:00:00', 'EPOS012', '140', '70', '45', '25', 'KPI012', 'ACT012'),
    ('DR013', '2023-08-13', '17:15:00', 'EPOS013', '150', '75', '50', '25', 'KPI013', 'ACT013'),
    ('DR014', '2023-08-14', '18:30:00', 'EPOS014', '160', '80', '55', '25', 'KPI014', 'ACT014'),
    ('DR015', '2023-08-15', '19:45:00', 'EPOS015', '170', '85', '60', '25', 'KPI015', 'ACT015'),
    ('DR016', '2023-08-16', '11:00:00', 'EPOS016', '180', '90', '65', '25', 'KPI016', 'ACT016'),
    ('DR017', '2023-08-17', '12:15:00', 'EPOS017', '190', '95', '70', '25', 'KPI017', 'ACT017'),
    ('DR018', '2023-08-18', '13:30:00', 'EPOS018', '200', '100', '75', '25', 'KPI018', 'ACT018'),
    ('DR019', '2023-08-19', '14:45:00', 'EPOS019', '210', '105', '80', '25', 'KPI019', 'ACT019'),
    ('DR020', '2023-08-20', '16:00:00', 'EPOS020', '220', '110', '85', '25', 'KPI020', 'ACT020');
 

 

CREATE TABLE Pending_Deposite(
Pending_ID VARCHAR(45) PRIMARY KEY,
Date DATE,
EPOS VARCHAR(45),
Cash VARCHAR(45),
Difference VARCHAR(45));
insert into Pending_Deposite (Pending_ID, Date, EPOS, Cash, Difference)
values
    ('PD001', '2023-08-01', 'EPOS001', '100', '10'),
    ('PD002', '2023-08-02', 'EPOS002', '150', '15'),
    ('PD003', '2023-08-03', 'EPOS003', '120', '12'),
    ('PD004', '2023-08-04', 'EPOS004', '130', '11'),
    ('PD005', '2023-08-05', 'EPOS005', '110', '9'),
    ('PD006', '2023-08-06', 'EPOS006', '90', '8'),
    ('PD007', '2023-08-07', 'EPOS007', '140', '14'),
    ('PD008', '2023-08-08', 'EPOS008', '100', '10'),
    ('PD009', '2023-08-09', 'EPOS009', '110', '11'),
    ('PD010', '2023-08-10', 'EPOS010', '120', '12'),
    ('PD011', '2023-08-11', 'EPOS011', '130', '13'),
    ('PD012', '2023-08-12', 'EPOS012', '140', '14'),
    ('PD013', '2023-08-13', 'EPOS013', '150', '15'),
    ('PD014', '2023-08-14', 'EPOS014', '160', '16'),
    ('PD015', '2023-08-15', 'EPOS015', '170', '17'),
    ('PD016', '2023-08-16', 'EPOS016', '180', '18'),
    ('PD017', '2023-08-17', 'EPOS017', '190', '19'),
    ('PD018', '2023-08-18', 'EPOS018', '200', '20'),
    ('PD019', '2023-08-19', 'EPOS019', '210', '21'),
    ('PD020', '2023-08-20', 'EPOS020', '220', '22');

 

 

CREATE TABLE Create_Banking(
Create_Banking_ID VARCHAR(45) PRIMARY KEY,
Date DATE,
Giro_Slip_Number VARCHAR(45),
Banking_Total VARCHAR(45),
Banked_Total VARCHAR(45),
SealedBy VARCHAR(45),
Sealed_SheetDate Date);
insert into Create_Banking (Create_Banking_ID, Date, Giro_Slip_Number, Banking_Total, Banked_Total, SealedBy, Sealed_SheetDate)
values
    ('CB001', '2023-08-01', 'GSLIP001', '1000', '950', 'John', '2023-08-02'),
    ('CB002', '2023-08-02', 'GSLIP002', '1200', '1150', 'Jane', '2023-08-03'),
    ('CB003', '2023-08-03', 'GSLIP003', '1300', '1250', 'Mark', '2023-08-04'),
    ('CB004', '2023-08-04', 'GSLIP004', '1100', '1050', 'Lucy', '2023-08-05'),
    ('CB005', '2023-08-05', 'GSLIP005', '1400', '1350', 'Michael', '2023-08-06'),
    ('CB006', '2023-08-06', 'GSLIP006', '1500', '1450', 'Sarah', '2023-08-07'),
    ('CB007', '2023-08-07', 'GSLIP007', '1600', '1550', 'David', '2023-08-08'),
    ('CB008', '2023-08-08', 'GSLIP008', '1800', '1750', 'Emily', '2023-08-09'),
    ('CB009', '2023-08-09', 'GSLIP009', '2000', '1950', 'Peter', '2023-08-10'),
    ('CB010', '2023-08-10', 'GSLIP010', '1700', '1650', 'Jessica', '2023-08-11'),
    ('CB011', '2023-08-11', 'GSLIP011', '1900', '1850', 'Alex', '2023-08-12'),
    ('CB012', '2023-08-12', 'GSLIP012', '2100', '2050', 'Sophia', '2023-08-13'),
    ('CB013', '2023-08-13', 'GSLIP013', '2200', '2150', 'William', '2023-08-14'),
    ('CB014', '2023-08-14', 'GSLIP014', '2300', '2250', 'Olivia', '2023-08-15'),
    ('CB015', '2023-08-15', 'GSLIP015', '2400', '2350', 'James', '2023-08-16'),
    ('CB016', '2023-08-16', 'GSLIP016', '2600', '2550', 'Emma', '2023-08-17'),
    ('CB017', '2023-08-17', 'GSLIP017', '2700', '2650', 'Daniel', '2023-08-18'),
    ('CB018', '2023-08-18', 'GSLIP018', '2900', '2850', 'Ava', '2023-08-19'),
    ('CB019', '2023-08-19', 'GSLIP019', '2800', '2750', 'Alexander', '2023-08-20'),
    ('CB020', '2023-08-20', 'GSLIP020', '3000', '2950', 'Isabella', '2023-08-21');

 

CREATE TABLE ReconcialiationCashDeposite (
    ReconciliationCashDep_ID VARCHAR(45) PRIMARY KEY,
    Deposite_Date DATE,
    Dash VARCHAR(45),
    Maatch VARCHAR(45),
    PartialMatch VARCHAR(45),
    Add_Note TEXT,
    1st_Banking_ID VARCHAR(45) REFERENCES 1St_Banking (1St_Banking_ID));
insert into ReconcialiationCashDeposite (ReconciliationCashDep_ID, Deposite_Date, Dash, Maatch, PartialMatch, Add_Note, 1st_Banking_ID)
values
    ('RCD001', '2023-08-01', '100', '50', '20', 'Note 1', 'CB001'),
    ('RCD002', '2023-08-02', '120', '60', '25', 'Note 2', 'CB002'),
    ('RCD003', '2023-08-03', '130', '70', '30', 'Note 3', 'CB003'),
    ('RCD004', '2023-08-04', '110', '55', '22', 'Note 4', 'CB004'),
    ('RCD005', '2023-08-05', '140', '75', '35', 'Note 5', 'CB005'),
    ('RCD006', '2023-08-06', '150', '80', '40', 'Note 6', 'CB006'),
    ('RCD007', '2023-08-07', '160', '85', '45', 'Note 7', 'CB007'),
    ('RCD008', '2023-08-08', '180', '90', '50', 'Note 8', 'CB008'),
    ('RCD009', '2023-08-09', '200', '100', '55', 'Note 9', 'CB009'),
    ('RCD010', '2023-08-10', '170', '85', '42', 'Note 10', 'CB010'),
    ('RCD011', '2023-08-11', '190', '95', '48', 'Note 11', 'CB011'),
    ('RCD012', '2023-08-12', '210', '105', '52', 'Note 12', 'CB012'),
    ('RCD013', '2023-08-13', '220', '110', '55', 'Note 13', 'CB013'),
    ('RCD014', '2023-08-14', '230', '115', '58', 'Note 14', 'CB014'),
    ('RCD015', '2023-08-15', '240', '120', '60', 'Note 15', 'CB015'),
    ('RCD016', '2023-08-16', '260', '130', '65', 'Note 16', 'CB016'),
    ('RCD017', '2023-08-17', '270', '135', '68', 'Note 17', 'CB017'),
    ('RCD018', '2023-08-18', '290', '145', '72', 'Note 18', 'CB018'),
    ('RCD019', '2023-08-19', '280', '140', '70', 'Note 19', 'CB019'),
    ('RCD020', '2023-08-20', '300', '150', '75', 'Note 20', 'CB020');


CREATE TABLE CashUpSheets(
CashUpSheets_ID VARCHAR(45) PRIMARY KEY,
DraftsID VARCHAR(45) REFERENCES Drafts(DraftsID),
Pending_ID VARCHAR(45) REFERENCES Pending(Pending_ID),
Banked_ID VARCHAR(45) REFERENCES Banked(Banked_ID),
DayTotal VARCHAR(45) REFERENCES DayTotal(DayTotal_ID),
Download_ID VARCHAR(45) REFERENCES DownLoad(Download_ID),
Add_CashUp_ID VARCHAR(45) REFERENCES Add_CashUp(Add_CashUp));
insert into CashUpSheets (CashUpSheets_ID, DraftsID, Pending_ID, Banked_ID, DayTotal, Download_ID, Add_CashUp_ID)
values
    ('CS001', 'D001', 'P001', 'B001', '1000', 'DL001', 'ACU001'),
    ('CS002', 'D002', 'P002', 'B002', '1200', 'DL002', 'ACU002'),
    ('CS003', 'D003', 'P003', 'B003', '1300', 'DL003', 'ACU003'),
    ('CS004', 'D004', 'P004', 'B004', '1100', 'DL004', 'ACU004'),
    ('CS005', 'D005', 'P005', 'B005', '1400', 'DL005', 'ACU005'),
    ('CS006', 'D006', 'P006', 'B006', '1500', 'DL006', 'ACU006'),
    ('CS007', 'D007', 'P007', 'B007', '1600', 'DL007', 'ACU007'),
    ('CS008', 'D008', 'P008', 'B008', '1800', 'DL008', 'ACU008'),
    ('CS009', 'D009', 'P009', 'B009', '2000', 'DL009', 'ACU009'),
    ('CS010', 'D010', 'P010', 'B010', '1700', 'DL010', 'ACU010'),
    ('CS011', 'D011', 'P011', 'B011', '1900', 'DL011', 'ACU011'),
    ('CS012', 'D012', 'P012', 'B012', '2100', 'DL012', 'ACU012'),
    ('CS013', 'D013', 'P013', 'B013', '2200', 'DL013', 'ACU013'),
    ('CS014', 'D014', 'P014', 'B014', '2300', 'DL014', 'ACU014'),
    ('CS015', 'D015', 'P015', 'B015', '2400', 'DL015', 'ACU015'),
    ('CS016', 'D016', 'P016', 'B016', '2600', 'DL016', 'ACU016'),
    ('CS017', 'D017', 'P017', 'B017', '2700', 'DL017', 'ACU017'),
    ('CS018', 'D018', 'P018', 'B018', '2900', 'DL018', 'ACU018'),
    ('CS019', 'D019', 'P019', 'B019', '2800', 'DL019', 'ACU019'),
    ('CS020', 'D020', 'P020', 'B020', '3000', 'DL020', 'ACU020');

CREATE TABLE BasicInformation(
Business_ID VARCHAR(45) PRIMARY KEY,
BusinessName VARCHAR(45),
LegalOrTrade VARCHAR(45));

INSERT INTO BasicInformation (Business_ID, BusinessName, LegalOrTrade)
VALUES
('BasicInfo_1', 'Acme Corporation', 'Legal');


CREATE TABLE PostalAddress(
Post_ID VARCHAR(45) PRIMARY KEY,
Address VARCHAR(45),
TownOrCity VARCHAR(45),
StateOrRegion VARCHAR(45),
ZipCode VARCHAR(45),
Country VARCHAR(45));

INSERT INTO PostalAddress (Post_ID, Address, TownOrCity, StateOrRegion, ZipCode, Country)
VALUES
('Post_1', '123 Main Street', 'Anytown', 'CA', '12345', 'United States');



CREATE TABLE PrimaryContact(
Primary_ID VARCHAR(45) PRIMARY KEY,
FirstName VARCHAR(45),
MiddleName VARCHAR(45),
LastName VARCHAR(45),
EMail VARCHAR(45),
Mob_Number VARCHAR(45),
Telephone VARCHAR(45));

insert into PrimaryContact(Primary_ID, FirstName, MiddleName, LastName, EMAil, Mob_Number, Telephone) 
Values('primary_1', 'DW','Morgan',' Se','DwMorgan.Se@gmail.com','69853214','(968)-256410');


CREATE TABLE Settings(
Settings_ID VARCHAR(45) PRIMARY KEY,
Business_ID VARCHAR(45) REFERENCES BasicInformation(Business_ID),
Post_ID VARCHAR(45) REFERENCES PostalAddress(Post_ID),
Primary_ID VARCHAR(45) REFERENCES PrimaryContact(Primary_ID));

Insert into Settings(Settings_ID, Business_ID, Post_ID, Primary_ID) Values
('settings_1','BasicInfo_1','post_1','primary_1');

CREATE TABLE Login(
Login_ID VARCHAR(45) PRIMARY KEY,
Email VARCHAR(45),
Password VARCHAR(45),
SignUp_ID VARCHAR(45) REFERENCES SignUp(SignUp_ID));


INSERT INTO Login (Login_ID, Email, Password, SignUp_ID)
VALUES
('login1', 'john.doe@acme.com', 'password1', 'Sign1'),
('login2', 'jane.doe@xyz.com', 'password2', 'Sign2'),
('login3', 'mary.smith@smith.com', 'password3', 'Sign3'),
('login4', 'peter.jones@jones.com', 'password4', 'Sign4'),
('login5', 'susan.brown@brown.com', 'password5', 'Sign5'),
('login6', 'michael.green@green.com', 'password6', 'Sign6'),
('login7', 'elizabeth.white@white.com', 'password7', 'Sign7'),
('login8', 'thomas.black@black.com', 'password8', 'Sign8'),
('login9', 'sarah.blue@blue.com', 'password9', 'Sign9'),
('login10', 'david.purple@purple.com', 'password10', 'Sign10');


CREATE TABLE SignUp(
SignUp_ID VARCHAR(45) PRIMARY KEY,
FirstName  VARCHAR(45),
LastName VARCHAR(45),
BusinessName VARCHAR(45),
Country VARCHAR(45),
Email VARCHAR(45),
PhoneNumber VARCHAR(45));


INSERT INTO SignUp (SignUp_ID, FirstName, LastName, BusinessName, Country, Email, PhoneNumber)
VALUES
('Sign1', 'John', 'Doe', 'Acme Corporation', 'United States', 'john.doe@acme.com', '123-456-7890'),
('Sign2', 'Jane', 'Doe', 'XYZ Company', 'Canada', 'jane.doe@xyz.com', '456-789-0123'),
('Sign3', 'Mary', 'Smith', 'The Smith Group', 'United Kingdom', 'mary.smith@smith.com', '789-012-3456'),
('Sign4', 'Peter', 'Jones', 'Jones Enterprises', 'Australia', 'peter.jones@jones.com', '012-345-6789'),
('Sign5', 'Susan', 'Brown', 'Brown & Associates', 'India', 'susan.brown@brown.com', '345-678-9012'),
('Sign6', 'Michael', 'Green', 'Green Industries', 'China', 'michael.green@green.com', '678-901-2345'),
('Sign7', 'Elizabeth', 'White', 'White Consulting', 'Japan', 'elizabeth.white@white.com', '901-234-5678'),
('Sign8', 'Thomas', 'Black', 'Black & Sons', 'South Korea', 'thomas.black@black.com', '234-567-8901'),
('Sign9', 'Sarah', 'Blue', 'Blue Sky Enterprises', 'Brazil', 'sarah.blue@blue.com', '567-890-1234'),
('Sign10', 'David', 'Purple', 'Purple Planet', 'Mexico', 'david.purple@purple.com', '890-123-4567');

CREATE TABLE CASH2(
CASH2_ID VARCHAR(45) PRIMARY KEY,
CashUpSheets_ID VARCHAR(45) REFERENCES  CashUpSheets(CashUpSheets_ID),
Deposite_ID VARCHAR(45) REFERENCES Deposite(Deposite_ID),
Reconciliation_ID VARCHAR(45) REFERENCES Reconciliation(Reconciliation_ID),
Report_ID VARCHAR(45) REFERENCES Report(Report_ID));

INSERT INTO CASH2 (CASH2_ID, CashUpSheets_ID, Deposite_ID, Reconciliation_ID, Report_ID)
VALUES
('C2ID001', 'CUS001', 'DEP001', 'REC001', 'REP001'),
('C2ID002', 'CUS002', 'DEP002', 'REC002', 'REP002'),
('C2ID003', 'CUS003', 'DEP003', 'REC003', 'REP003'),
('C2ID004', 'CUS004', 'DEP004', 'REC004', 'REP004'),
('C2ID005', 'CUS005', 'DEP005', 'REC005', 'REP005'),
('C2ID006', 'CUS006', 'DEP006', 'REC006', 'REP006'),
('C2ID007', 'CUS007', 'DEP007', 'REC007', 'REP007'),
('C2ID008', 'CUS008', 'DEP008', 'REC008', 'REP008'),
('C2ID009', 'CUS009', 'DEP009', 'REC009', 'REP009'),
('C2ID010', 'CUS010', 'DEP010', 'REC010', 'REP010'),
('C2ID011', 'CUS011', 'DEP011', 'REC011', 'REP011'),
('C2ID012', 'CUS012', 'DEP012', 'REC012', 'REP012'),
('C2ID013', 'CUS013', 'DEP013', 'REC013', 'REP013'),
('C2ID014', 'CUS014', 'DEP014', 'REC014', 'REP014'),
('C2ID015', 'CUS015', 'DEP015', 'REC015', 'REP015'),
('C2ID016', 'CUS016', 'DEP016', 'REC016', 'REP016'),
('C2ID017', 'CUS017', 'DEP017', 'REC017', 'REP017'),
('C2ID018', 'CUS018', 'DEP018', 'REC018', 'REP018'),
('C2ID019', 'CUS019', 'DEP019', 'REC019', 'REP019'),
('C2ID020', 'CUS020', 'DEP020', 'REC020', 'REP020');

CREATE TABLE ROS (
CASH2_ID VARCHAR(45) REFERENCES CASH2(CASH2_ID),
Supplier_ID VARCHAR(45) REFERENCES Supplier(Supplier_ID),
Employee_ID VARCHAR(45) REFERENCES Employee(Employee_ID));

INSERT INTO ROS (CASH2_ID, Supplier_ID, Employee_ID)
VALUES
('C2ID001', 'SUP001', 'E001'),
('C2ID002', 'SUP002', 'E002'),
('C2ID003', 'SUP003', 'E003'),
('C2ID004', 'SUP004', 'E004'),
('C2ID005', 'SUP005', 'E005'),
('C2ID006', 'SUP001', 'E006'),
('C2ID007', 'SUP002', 'E007'),
('C2ID008', 'SUP003', 'E008'),
('C2ID009', 'SUP004', 'E009'),
('C2ID010', 'SUP005', 'E010'),
('C2ID011', 'SUP001', 'E011'),
('C2ID012', 'SUP002', 'E012'),
('C2ID013', 'SUP003', 'E013'),
('C2ID014', 'SUP004', 'E014'),
('C2ID015', 'SUP005', 'E015'),
('C2ID016', 'SUP001', 'E016'),
('C2ID017', 'SUP002', 'E017'),
('C2ID018', 'SUP003', 'E018'),
('C2ID019', 'SUP004', 'E019'),
('C2ID020', 'SUP005', 'E020');

 

