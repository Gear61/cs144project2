Partner:
Name: Won Kyu Lee
ID: 904083134
Email: wlee89@ucla.edu

1.
Table 1:
AUCTION(ItemID, Name, Currently, First_Bid, Number_of_Bids, Started, Ends, SellerID, Description)
//Location and country not included assuming that seller's location and country is where the item is at
PRIMARY KEY(ItemID)
FOREIGN KEY(SellerID) REFERENCES EBAY_USERS(UserID)

Table 2:
EBAY_USERS(UserID, Rating, Location, Country)
PRIMARY KEY(UserID)

Table 3:
BIDS(BidderID, BidTime, Amount, ItemID)
PRIMARY KEY(Amount, ItemID)
FOREIGN KEY(BidderID) REFERENCES EBAY_USERS(UserID)
FOREIGN KEY(ItemID) REFERENCES AUCTION(ItemID)

Table 4:
BUY_PRICE(ItemID, Buy_Price)
PRIMARY KEY(ItemID)
FOREIGN KEY(ItemID) REFERENCES AUCTION(ItemID)

Table 5:
CATEGORY(ItemID, Category)
PRIMARY KEY(ItemID, Category)
FOREIGN KEY(ItemID) REFERENCES AUCTION(ItemID)

2. None

3. Yes
