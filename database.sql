CREATE DATABASE MyDatabase;

USE MyDatabase;

CREATE TABLE Item (
    ItemID varchar(10),
    ItemName VARCHAR(50),
    Size VARCHAR(20)
)

CREATE TABLE Agent (
    AgentID varchar(10),
    AgentName VARCHAR(50),
    Address VARCHAR(100)
)


CREATE TABLE Orderr (
    OrderID varchar(10),
    OrderDate DATE,
    AgentID INT
)

CREATE TABLE OrderDetail (
    ID varchar(10),
    OrderID varchar(10),
    ItemID varchar(10),
    Quantity INT,
    UnitAmount DECIMAL(10,2)
)

INSERT INTO Item (ItemID, ItemName, Size) VALUES ('I001', 'Product A', 'Small');
INSERT INTO Item (ItemID, ItemName, Size) VALUES ('I002', 'Product B', 'Medium');
INSERT INTO Item (ItemID, ItemName, Size) VALUES ('I003', 'Product C', 'Large');

INSERT INTO Agent (AgentID, AgentName, Address) VALUES ('A001', 'Vendor X', '123 Main St');
INSERT INTO Agent (AgentID, AgentName, Address) VALUES ('A002', 'Vendor Y', '456 High St');
INSERT INTO Agent (AgentID, AgentName, Address) VALUES ('A003', 'Vendor Z', '789 Elm St');

INSERT INTO Orderr (OrderID, OrderDate, AgentID) VALUES ('O001', '2022-04-01', 1);
INSERT INTO Orderr (OrderID, OrderDate, AgentID) VALUES ('O002', '2022-04-02', 2);
INSERT INTO Orderr (OrderID, OrderDate, AgentID) VALUES ('O003', '2022-04-03', 3);

INSERT INTO OrderDetail (ID, OrderID, ItemID, Quantity, UnitAmount) VALUES ('OD001', 'O001', 'I001', 5, 10.50);

INSERT INTO OrderDetail (ID, OrderID, ItemID, Quantity, UnitAmount) VALUES ('OD002', 'O002', 'I001', 2, 10.50);

INSERT INTO OrderDetail (ID, OrderID, ItemID, Quantity, UnitAmount) VALUES ('OD003', 'O003', 'I002', 1, 15.25);

select * from OrderDetail