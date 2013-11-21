use CS144;

#1
select count(*) from Ebay_Users;

#2
SELECT count(DISTINCT Ebay_Users.UserID)
FROM (Ebay_Users INNER JOIN Auction
	  on Ebay_Users.UserID = Auction.UserID)
WHERE Ebay_Users.Location = BINARY 'New York';

#3
SELECT count(*) from (SELECT count(*) as NumApps
FROM Category
GROUP BY ItemID) AS A
where A.NumApps = 4;

#4
SELECT ItemID
FROM Auction
WHERE Ends > '2001-12-20 00:00:01'
AND Number_of_Bids > 0
ORDER BY Currently DESC
LIMIT 1;

#5
SELECT count(DISTINCT Auction.UserID)
FROM Auction, Ebay_Users
WHERE Auction.UserID = Ebay_Users.UserID AND Ebay_Users.Rating > 1000;

#6
SELECT count(DISTINCT Auction.UserID, Bids.UserID)
FROM Auction, Bids
WHERE Auction.UserID = Bids.UserID;

#7
SELECT count(DISTINCT Category)
FROM ((SELECT *
FROM Auction
WHERE Currently > 100.00 AND Number_of_Bids > 0) as A INNER JOIN Category on A.ItemID = Category.ItemID);