CREATE TABLE Bicycle
(
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Brand VARCHAR(50) NOT NULL,
    RentPrice INT NOT NULL
);





CREATE TABLE Client
(
   [Id] int IDENTITY(1,1) NOT NULL,
   [Name] varchar(10) NOT NULL,
   [Passport] varchar(50) NOT NULL,
   [Phone number] varchar(50) NOT NULL,
   [Country] varchar(50) NOT NULL,
   PRIMARY KEY(Id)
)



  

CREATE TABLE [Staff]
(
   [Id] int IDENTITY(1,1) PRIMARY KEY,       
   [Name] varchar(20)NOT NULL,            
   [Passport] varchar(30) NOT NULL UNIQUE,      
   [HireDate] date NOT NULL,                
   [Position] VARCHAR(50) NULL,             
   [IsActive] BIT NOT NULL DEFAULT 1       
)




  

CREATE TABLE [Details] 
(
   [Id] int IDENTITY(1,1) PRIMARY KEY,       
   [Brand] NVARCHAR(50) NOT NULL,            
   [Type] NVARCHAR(50) NOT NULL,            
   [Name] NVARCHAR(50) NOT NULL,             
   [Price] DECIMAL(10,2) NOT NULL,           
   [Quantity] INT DEFAULT 0 CHECK(Quantity >= 0)  
);





CREATE TABLE [DetailsForBicycle]  
(
   [BicycleId] INT NOT NULL,
   [DetailId] INT NOT NULL,
   FOREIGN KEY ([BicycleId]) REFERENCES [Bicycle]([Id]),
   FOREIGN KEY ([DetailId]) REFERENCES [Details]([Id]),
   PRIMARY KEY ([BicycleId], [DetailId])  
);





CREATE TABLE [ServiceBook] 
(
   [Id] INT IDENTITY(1,1) PRIMARY KEY,                
   [BicycleId] int NOT NULL,
   [DetailId] int NOT NULL,
   [ServiceDate] date NOT NULL,                                    
   [WorkPrice] DECIMAL(10,2) NOT NULL CHECK(WorkPrice >= 0),          
   [StaffId] int NOT NULL,
   [Comment] NVARCHAR(200) NULL,                    
   FOREIGN KEY ([BicycleId]) REFERENCES [Bicycle] ([Id]),          
   FOREIGN KEY ([StaffId]) REFERENCES [Staff] ([Id]),
   FOREIGN KEY ([DetailId]) REFERENCES [Details] ([Id])
);




 
CREATE TABLE [RentBook] 
(
   [Id] int IDENTITY(1,1) PRIMARY KEY,             
   [RentDate] date NOT NULL,                      
   [RentTime] DECIMAL(5,2) NOT NULL CHECK(RentTime > 0),    
   [RentPaid] bit NOT NULL DEFAULT 0,     
   [ReturnDate] DATE  NULL,
   [TotalPrice] DECIMAL(10,2) NULL CHECK (TotalPrice >= 0),
   [Comment] NVARCHAR(200) NULL,  
   [BicycleId] int NOT NULL ,
   [ClientId] int NOT NULL ,
   [StaffId] int NOT NULL ,
   FOREIGN KEY ([BicycleId]) REFERENCES [Bicycle] ([Id]),
   FOREIGN KEY ([StaffId]) REFERENCES [Staff] ([Id]),
   FOREIGN KEY ([ClientId]) REFERENCES [Client] ([Id])
) 


