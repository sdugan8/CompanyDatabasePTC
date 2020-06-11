create table ItemList(
itemID varchar(10) primary key not null,
itemName varchar(30) not null,
itemPrice money not null,
itemType varchar(20) not null

)

create table ItemStock(
stockID varchar(10) primary key not null,
dateAdded date not null,
itemID varchar(10) FOREIGN KEY REFERENCES ItemList(itemID),
 

)


create table BuildingList(
buildingID varchar(10) primary key not null,
buildingName varchar(20) not null,
buildingType varchar(20) not null,
buldingAddress varchar(50) not null


)


create table EmployeeList(
employeeID varchar(10) primary key not null,
buildingID varchar(10) FOREIGN KEY REFERENCES BuildingList(buildingID),
empFname varchar(15) not null,
empLname varchar(15) not null,
empEmail varchar(40) not null,
empAddress varchar(50) not null,
empPhoneNumber varchar(14) not null

)

create table CustomerList(
custID varchar(10) primary key not null,
custFname varchar(15) not null,
custLname varchar(15) not null,
custEmail varchar(40) not null,
custAddress varchar(50) not null,
custPhoneNumber varchar(14) not null


)


create table InvoiceList(
invoiceID varchar(10) primary key not null,
custID varchar(10) FOREIGN KEY REFERENCES CustomerList(CustID),
employeeID varchar(10) FOREIGN KEY REFERENCES EmployeeList(employeeID),
dateOrdered DATE not null,
deliveryAddress varchar(50) not null

)


create table InvoiceItems(
inItemsID varchar(10) primary key not null,
invoiceID varchar(10) FOREIGN KEY REFERENCES InvoiceList(invoiceID),
stockID varchar(10) FOREIGN KEY REFERENCES ItemStock(stockID)

)


insert into ItemList
Values('ILA0000001', 'Toaster', '49.00', 'Appliance')


insert into ItemList
Values('ILA0000002', 'Microwave Oven', '59.00', 'Appliance')

insert into ItemList
Values('ILA0000003', 'MicroWave', '59.00', 'Appliance')

insert into ItemList
Values('ILA0000004', 'Blender', '49.00', 'Appliance')

insert into ItemList
Values('ILA0000005', 'Mixer', '29.00', 'Appliance')

insert into ItemList
Values('ILA0000006', 'Coffee Maker', '18.00', 'Appliance')

insert into ItemList
Values('ILA0000007', 'Waffle Iron', '9.00', 'Appliance')


insert into ItemList
Values('ILB0000001', 'Mens Batman Shirt', '9.00', 'Clothing')

insert into ItemList
Values('ILB0000002', 'Womens Wonderman Shirt', '19.00', 'Clothing')

insert into ItemList
Values('ILB0000003', 'Mens Black Pants', '8.00', 'Clothing')

insert into ItemList
Values('ILB0000004', 'Women Black Pants', '29.00', 'Clothing')

insert into ItemList
Values('ILB0000005', 'Mens Nurse Shoes', '25.00', 'Clothing')

insert into ItemList
Values('ILB0000006', 'Womens Nurse Shoes', '25.00', 'Clothing')

insert into ItemList
Values('ILB0000007', 'Unisex Panda Onsie', '18.00', 'Clothing')

insert into ItemList
Values('ILB0000008', 'Yankee Baseball Cap', '9.00', 'Clothing')


insert into ItemList
Values('ILC0000001', 'Kacklers', '2.99', 'Candy')

insert into ItemList
Values('ILC0000002', 'Hysterical Taffie', '3.00', 'Candy')

insert into ItemList
Values('ILC0000003', 'Andromeda', '3.00', 'Candy')

insert into ItemList
Values('ILC0000004', 'Almond Sad', '0.02', 'Candy')

insert into ItemList
Values('ILC0000005', 'W&Ws', '3.50', 'Candy')

insert into ItemList
Values('ILC0000006', 'Ninelets', '0.75', 'Candy')

insert into ItemList
Values('ILC0000007', 'Silk Candy', '4.00', 'Candy')

insert into ItemList
Values('ILC0000008', 'Oldman Ruth', '2.35', 'Candy')


insert into BuildingList
Values('BLA0000001', 'Yallmart HQ', 'Office Building', '231 Yellerlane')

insert into BuildingList
Values('BLA0000002', 'Yallmart-Location A', 'Store', '632 Betheal Road')

insert into BuildingList
Values('BLA0000003', 'Yallmart-Location B', 'Store', '213 Mango Street')

insert into BuildingList
Values('BLA0000004', 'Yallmart-Location C', 'Store', '111 Abigale Road') 

insert into BuildingList
Values('BLA0000005', 'Yallmart-Warehouse', 'Warehouse', '113 Abigale Road')



insert into EmployeeList
Values('EMP0000001', 'BLA0000001', 'Holli', 'Burrows', 'HolliB@gmail.com',  '113 Abigale Road', '(412)236-0522')

insert into EmployeeList
Values('EMP0000002', 'BLA0000001', 'Bushra', 'Childs', 'ChildsB@gmail.com',  '114 Abigale Road', '(412)236-0550')
insert into EmployeeList
Values('EMP0000003', 'BLA0000001', 'Maurice', 'Sellers', 'MSellers@gmail.com',  '115 Abigale Road', '(412)236-7722')
insert into EmployeeList
Values('EMP0000004', 'BLA0000001', 'Ismael', 'Wagner', 'IsmaelW@gmail.com',  '116 Abigale Road', '(412)966-5522')

insert into EmployeeList
Values('EMP0000005', 'BLA0000002', 'Edith', 'Snyder', 'SnyderE@gmail.com',  '117 Abigale Road', '(412)286-0532')
insert into EmployeeList
Values('EMP0000006', 'BLA0000002', 'Kobe', 'Rowland', 'KRowland@gmail.com',  '118 Abigale Road', '(412)446-0527')
insert into EmployeeList
Values('EMP0000007', 'BLA0000002', 'Jasleen', 'Patton', 'JasleenP@gmail.com',  '119 Abigale Road', '(412)233-3322')
insert into EmployeeList
Values('EMP0000008', 'BLA0000002', 'Makenzie', 'Walton', 'WaltonM@gmail.com',  '120 Abigale Road', '(412)222-1522')

insert into EmployeeList
Values('EMP0000009', 'BLA0000003', 'Jean', 'Trevino', 'Trevino@gmail.com',  '121 Abigale Road', '(412)796-0532')
insert into EmployeeList
Values('EMP0000010', 'BLA0000003', 'Tariq', 'Dupont', 'DupontT@gmail.com',  '122 Abigale Road', '(412)231-0542')
insert into EmployeeList
Values('EMP0000011', 'BLA0000003', 'Briana', 'Avery', 'BrianaAvery@gmail.com',  '123 Abigale Road', '(412)746-7742')
insert into EmployeeList
Values('EMP0000012', 'BLA0000003', 'Trent', 'White', 'TWhite@gmail.com',  '124 Abigale Road', '(412)233-0452')

insert into EmployeeList
Values('EMP0000013', 'BLA0000004', 'Taybah', 'Bradshaw', 'TaybahBradshaw@gmail.com',  '125 Abigale Road', '(412)006-0512')
insert into EmployeeList
Values('EMP0000014', 'BLA0000004', 'Mikhail', 'Garrett', 'MikhailG@gmail.com',  '126 Abigale Road', '(412)244-0442')
insert into EmployeeList
Values('EMP0000015', 'BLA0000004', 'Manal', 'Hook', 'Hook@gmail.com',  '127 Abigale Road', '(412)636-0662')
insert into EmployeeList
Values('EMP0000016', 'BLA0000004', 'Ellie-Mae', 'Noel', 'Noel@gmail.com',  '128 Abigale Road', '(412)996-9522')


insert into EmployeeList
Values('EMP0000017', 'BLA0000005', 'Dorian', 'Dejesus', 'Dejesus@gmail.com',  '129 Abigale Road', '(412)343-0442')
insert into EmployeeList
Values('EMP0000018', 'BLA0000005', 'Sydney', 'Woods', 'Woods@gmail.com',  '130 Abigale Road', '(412)376-7922')
insert into EmployeeList
Values('EMP0000019', 'BLA0000005', 'Willem', 'Parkes', 'Parkes@gmail.com',  '131 Abigale Road', '(412)336-4622')

insert into CustomerList
Values('CUT0000001', 'Benjamin', 'Eaton', 'BenEat@gmail.com',  '131 Sheen Road', '(412)777-4882')

insert into CustomerList
Values('CUT0000002', 'Kymani', 'Blake', 'KymaniB@gmail.com',  '121 Sheen Road', '(412)226-4112')



insert into CustomerList
Values('CUT0000003', 'Ayat', 'Mathis', 'BenEat@gmail.com',  '221 Sheen Road', '(412)344-4562')


insert into CustomerList
Values('CUT0000004', 'Saul', 'Pope', 'SPOPE@gmail.com',  '146 Sheen Road', '(412)378-4252')



insert into CustomerList
Values('CUT0000005', 'Dante', 'Tyson', 'DanTye@gmail.com',  '021 Sheen Road', '(412)786-0042')


insert into CustomerList
Values('CUT0000006', 'Gina', 'Moyer', 'Moyer@gmail.com',  '465 Sheen Road', '(412)436-7692')



insert into InvoiceList
Values('INV0000001', 'CUT0000001', 'EMP0000007', '2017-02-24',  '131 Sheen Road')
insert into InvoiceList
Values('INV0000002', 'CUT0000002', 'EMP0000006', '2017-02-25',  '121 Sheen Road')


insert into InvoiceList
Values('INV0000003', 'CUT0000003', 'EMP0000011', '2017-04-08',  '431 Goat Road')
insert into InvoiceList
Values('INV0000004', 'CUT0000003', 'EMP0000012', '2017-05-08',  '221 Sheen Road')


insert into InvoiceList
Values('INV0000005', 'CUT0000005', 'EMP0000016', '2017-05-10',  '456 Sheen Road')
insert into InvoiceList
Values('INV0000006', 'CUT0000006', 'EMP0000015', '2017-05-17',  '465 Sheen Road')

-- A list

insert into ItemStock
Values('ISL0000001', '2017-05-17', 'ILA0000001')
insert into ItemStock
Values('ISL0000002', '2017-05-17', 'ILA0000001')
insert into ItemStock
Values('ISL0000003', '2017-05-17', 'ILA0000001')
insert into ItemStock
Values('ISL0000004', '2017-05-17', 'ILA0000001')


insert into ItemStock
Values('ISL0000005', '2017-05-17', 'ILA0000002')
insert into ItemStock
Values('ISL0000006', '2017-05-17', 'ILA0000002')
insert into ItemStock
Values('ISL0000007', '2017-05-17', 'ILA0000002')
insert into ItemStock
Values('ISL0000008', '2017-05-17', 'ILA0000002')

insert into ItemStock
Values('ISL0000009', '2017-05-24', 'ILA0000003')
insert into ItemStock
Values('ISL0000010', '2017-05-24', 'ILA0000003')
insert into ItemStock
Values('ISL0000011', '2017-05-24', 'ILA0000003')
insert into ItemStock
Values('ISL0000012', '2017-05-24', 'ILA0000003')


insert into ItemStock
Values('ISL0000013', '2017-05-17', 'ILA0000004')
insert into ItemStock
Values('ISL0000014', '2017-05-17', 'ILA0000004')
insert into ItemStock
Values('ISL0000015', '2017-05-17', 'ILA0000004')
insert into ItemStock
Values('ISL0000016', '2017-05-17', 'ILA0000004')


insert into ItemStock
Values('ISL0000017', '2017-05-17', 'ILA0000005')
insert into ItemStock
Values('ISL0000018', '2017-05-17', 'ILA0000005')
insert into ItemStock
Values('ISL0000019', '2017-05-17', 'ILA0000005')
insert into ItemStock
Values('ISL0000020', '2017-05-17', 'ILA0000005')

insert into ItemStock
Values('ISL0000021', '2017-05-17', 'ILA0000006')
insert into ItemStock
Values('ISL0000022', '2017-05-17', 'ILA0000006')
insert into ItemStock
Values('ISL0000023', '2017-05-17', 'ILA0000006')
insert into ItemStock
Values('ISL0000024', '2017-05-17', 'ILA0000006')


insert into ItemStock
Values('ISL0000025', '2017-05-24', 'ILA0000007')
insert into ItemStock
Values('ISL0000026', '2017-05-24', 'ILA0000007')
insert into ItemStock
Values('ISL0000027', '2017-05-24', 'ILA0000007')
insert into ItemStock
Values('ISL0000028', '2017-05-24', 'ILA0000007')


insert into ItemStock
Values('ISL0000033', '2017-05-17', 'ILB0000001')
insert into ItemStock
Values('ISL0000034', '2017-05-17', 'ILB0000001')
insert into ItemStock
Values('ISL0000035', '2017-05-17', 'ILB0000001')

insert into ItemStock
Values('ISL0000036', '2017-05-17', 'ILB0000002')
insert into ItemStock
Values('ISL0000037', '2017-05-17', 'ILB0000002')
insert into ItemStock
Values('ISL0000038', '2017-05-17', 'ILB0000002')
insert into ItemStock
Values('ISL0000039', '2017-05-17', 'ILB0000002')

insert into ItemStock
Values('ISL0000040', '2017-05-24', 'ILB0000003')
insert into ItemStock
Values('ISL0000041', '2017-05-24', 'ILB0000003')
insert into ItemStock
Values('ISL0000042', '2017-05-24', 'ILB0000003')
insert into ItemStock
Values('ISL0000043', '2017-05-24', 'ILB0000003')
insert into ItemStock
Values('ISL0000044', '2017-05-24', 'ILB0000003')
insert into ItemStock
Values('ISL0000045', '2017-05-24', 'ILB0000003')


insert into ItemStock
Values('ISL0000046', '2017-05-10', 'ILB0000004')
insert into ItemStock
Values('ISL0000047', '2017-05-10', 'ILB0000004')
insert into ItemStock
Values('ISL0000049', '2017-05-10', 'ILB0000004')
insert into ItemStock
Values('ISL0000050', '2017-05-17', 'ILB0000004')


insert into ItemStock
Values('ISL0000051', '2017-05-10', 'ILB0000005')
insert into ItemStock
Values('ISL0000052', '2017-05-10', 'ILB0000005')

insert into ItemStock
Values('ISL0000053', '2017-05-10', 'ILB0000006')
insert into ItemStock
Values('ISL0000054', '2017-05-10', 'ILB0000006')
insert into ItemStock
Values('ISL0000055', '2017-05-17', 'ILB0000006')
insert into ItemStock
Values('ISL0000056', '2017-05-17', 'ILB0000006')


insert into ItemStock
Values('ISL0000057', '2017-05-17', 'ILB0000007')
insert into ItemStock
Values('ISL0000058', '2017-05-17', 'ILB0000007')
insert into ItemStock
Values('ISL0000059', '2017-05-24', 'ILB0000007')
insert into ItemStock
Values('ISL0000060', '2017-05-24', 'ILB0000007')

insert into ItemStock
Values('ISL0000061', '2017-05-10', 'ILB0000008')
insert into ItemStock
Values('ISL0000062', '2017-05-10', 'ILB0000008')
insert into ItemStock
Values('ISL0000063', '2017-05-10', 'ILB0000008')
insert into ItemStock
Values('ISL0000064', '2017-05-10', 'ILB0000008')




insert into ItemStock
Values('ISL0000065', '2017-05-17', 'ILC0000001')
insert into ItemStock
Values('ISL0000066', '2017-05-17', 'ILC0000001')
insert into ItemStock
Values('ISL0000067', '2017-05-17', 'ILC0000001')

insert into ItemStock
Values('ISL0000068', '2017-05-17', 'ILC0000003')
insert into ItemStock
Values('ISL0000069', '2017-05-17', 'ILC0000003')
insert into ItemStock
Values('ISL0000070', '2017-05-17', 'ILC0000003')
insert into ItemStock
Values('ISL0000071', '2017-05-17', 'ILC0000003')

insert into ItemStock
Values('ISL0000072', '2017-05-24', 'ILC0000004')
insert into ItemStock
Values('ISL0000073', '2017-05-24', 'ILC0000004')
insert into ItemStock
Values('ISL0000074', '2017-05-24', 'ILC0000004')
insert into ItemStock
Values('ISL0000075', '2017-05-24', 'ILC0000004')
insert into ItemStock
Values('ISL0000076', '2017-05-24', 'ILC0000004')


insert into ItemStock
Values('ISL0000077', '2017-05-10', 'ILC0000005')
insert into ItemStock
Values('ISL0000078', '2017-05-10', 'ILC0000005')
insert into ItemStock
Values('ISL0000079', '2017-05-10', 'ILC0000005')
insert into ItemStock
Values('ISL0000080', '2017-05-17', 'ILC0000005')


insert into ItemStock
Values('ISL0000081', '2017-05-10', 'ILC0000006')
insert into ItemStock
Values('ISL0000082', '2017-05-10', 'ILC0000006')



insert into ItemStock
Values('ISL0000083', '2017-05-17', 'ILC0000008')
insert into ItemStock
Values('ISL0000084', '2017-05-24', 'ILC0000008')




select * from InvoiceItems
insert into InvoiceItems
Values('INI0000001', 'INV0000001', 'ISL0000001')

insert into InvoiceItems
Values('INI0000002', 'INV0000001', 'ISL0000005')
insert into InvoiceItems
Values('INI0000003', 'INV0000001', 'ISL0000009')
insert into InvoiceItems
Values('INI0000004', 'INV0000001', 'ISL0000025')


insert into InvoiceItems
Values('INI0000005', 'INV0000002', 'ISL0000061')
insert into InvoiceItems
Values('INI0000006', 'INV0000002', 'ISL0000040')
insert into InvoiceItems
Values('INI0000007', 'INV0000002', 'ISL0000033')



insert into InvoiceItems
Values('INI0000008', 'INV0000003', 'ISL0000036')
insert into InvoiceItems
Values('INI0000009', 'INV0000003', 'ISL0000046')
insert into InvoiceItems
Values('INI0000010', 'INV0000003', 'ISL0000053')
insert into InvoiceItems
Values('INI0000011', 'INV0000003', 'ISL0000083')


insert into InvoiceItems
Values('INI0000012', 'INV0000003', 'ISL0000017')
insert into InvoiceItems
Values('INI0000013', 'INV0000003', 'ISL0000057')
insert into InvoiceItems
Values('INI0000014', 'INV0000003', 'ISL0000077')
insert into InvoiceItems
Values('INI0000015', 'INV0000003', 'ISL0000078')


insert into InvoiceItems
Values('INI0000016', 'INV0000005', 'ISL0000062')
insert into InvoiceItems
Values('INI0000017', 'INV0000005', 'ISL0000063')
insert into InvoiceItems
Values('INI0000018', 'INV0000005', 'ISL0000064')


insert into InvoiceItems
Values('INI0000019', 'INV0000006', 'ISL0000021')
insert into InvoiceItems
Values('INI0000020', 'INV0000006', 'ISL0000058')
insert into InvoiceItems
Values('INI0000021', 'INV0000006', 'ISL0000065')
insert into InvoiceItems
Values('INI0000022', 'INV0000006', 'ISL0000081')














