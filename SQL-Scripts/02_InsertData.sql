INSERT INTO Bicycle 
VALUES
('Trek', 1500),
('Giant', 1200),
('Merida', 1000),
('BMX', 800),
('Cannondale', 1800);

 



INSERT INTO Client ([Name], [Passport], [Phone number], [Country])
VALUES
('Ali', 'AA1234567', '+998901112233', 'Uzbekistan'),
('John', 'BB2345678', '+12025551234', 'USA'),
('Ivan', 'CC3456789', '+74951234567', 'Russia'),
('Sara', 'DD4567890', '+441234567890', 'UK'),
('Akira', 'EE5678901', '+81312345678', 'Japan');





INSERT INTO Staff ([Name], [Passport], [HireDate], [Position])
VALUES
('Aziz', 'ST1234567', '2022-01-15','Manager'),
('Nodir', 'ST2345678', '2023-03-10', 'Mechanic'),
('Mira', 'ST3456789', '2021-06-05', 'Supervisor'),
('Oleg', 'ST4567890', '2024-02-01', 'Technecian'),
('Lola', 'ST5678901', '2020-11-20', 'Driver');





INSERT INTO [Details] 
([Brand], [Type], [Name], [Price], [Quantity])
VALUES 
('Shimano', 'Zanjir', 'Shimano HG95', 180.50, 15),
('SRAM', 'Tormoz', 'SRAM Level TL', 350.00, 8),
('KMC', 'Zanjir', 'KMC X11', 120.00, 20),
('Continental', 'Shina', 'Continental Race King', 250.75, 10),
('Tektro', 'Tormoz qo‘li', 'Tektro HD-M275', 300.00, 5);





INSERT INTO [DetailsForBicycle] ([BicycleId], [DetailId])
VALUES
(1, 1),   
(1, 2),   
(1, 4),   

(2, 1),   
(2, 3),    
(2, 5),    

(3, 3),   
(3, 4);    





INSERT INTO [ServiceBook] 
([BicycleId], [DetailId], [ServiceDate], [WorkPrice], [StaffId], [Comment])
VALUES
(1, 1, '2025-10-10', 50.00, 1, N'Zanjir almashtirildi'),          
(2, 3, '2025-10-11', 70.00, 2, N'Tormoz disklari yangilandi'),
(1, 5, '2025-10-12', 45.00, 1, N'Tormoz qo‘li sozlandi'),
(3, 4, '2025-10-13', 60.00, 2, N'Shina almashtirildi');





INSERT INTO [RentBook]
([RentDate], [RentTime], [RentPaid], [ReturnDate],[TotalPrice], [Comment], [BicycleId], [ClientId], [StaffId])
VALUES
('2025-10-15', 3.5, 1, '2025-10-15', 1500, N'3 soatga ijara to‘landi', 1, 2, 1),
('2025-10-16', 24, 0, NULL, 2000, N'1 kunga ijara, hali qaytmagan', 2, 3, 2);

