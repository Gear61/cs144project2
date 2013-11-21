use CS144;

CREATE TABLE Ebay_Users
(
 UserID VARCHAR(200),
 Rating int,
 Location VARCHAR(200),
 Country VARCHAR(200),
 PRIMARY KEY (UserID)
);

CREATE TABLE Auction
(
 ItemID int,
 Name VARCHAR (200),
 Currently DECIMAL(8,2),
 First_Bid DECIMAL(8,2),
 Number_of_Bids int,
 Started TIMESTAMP,
 Ends TIMESTAMP,
 UserID VARCHAR(200),
 Description VARCHAR (4000),
 PRIMARY KEY (ItemID),
 FOREIGN KEY (UserID) REFERENCES Ebay_Users(UserID)
);

CREATE TABLE Bids
(
 UserID VARCHAR(200),
 BidTime TIMESTAMP,
 Amount DECIMAL(8,2),
 ItemID int,
 PRIMARY KEY (Amount, ItemID),
 FOREIGN KEY (UserID) REFERENCES Ebay_Users(UserID),
 FOREIGN KEY (ItemID) REFERENCES Auction(ItemID)
);

CREATE TABLE Buy_Price
(
 ItemID int,
 Buy_Price DECIMAL(8,2),
 PRIMARY KEY (ItemID),
 FOREIGN KEY (ItemID) REFERENCES Auction(ItemID)
);
 
CREATE TABLE Category
(
 ItemID int,
 Category VARCHAR (200),
 PRIMARY KEY (ItemID, Category),
 FOREIGN KEY (ItemID) REFERENCES Auction(ItemID)
);
