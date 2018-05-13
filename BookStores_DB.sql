DROP database bookstorea;
DROP database bookstoreb;

CREATE database bookstorea;
 
use bookstorea;

CREATE TABLE bookDetails (
	BookID		INT	NOT NULL AUTO_INCREMENT,
	BookName	varchar(100)	DEFAULT NULL,
	Author		varchar(100)	DEFAULT NULL,
	Publisher	varchar(100)	DEFAULT NULL,
	PublishDate	date		DEFAULT NULL,
	Edition		decimal(10,0)	DEFAULT NULL,
	Category	varchar(30)	DEFAULT NULL,
	Language	varchar(30)	DEFAULT NULL,
	SearchCount	decimal(10,0) DEFAULT 0,
	SalesCount	decimal(10,0) DEFAULT 0,
	Primary Key(BookID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

Create Index bookDetailsIndex1 on bookDetails (PublishDate);
Create Index bookDetailsIndex2 on bookDetails (BookName, Edition);
Create Index bookDetailsIndex3 on bookDetails (Author);

CREATE table bookSales (
	BookSalesID	INT	NOT NULL AUTO_INCREMENT,
	BookID		decimal(10,0)	NOT NULL,
	Price		decimal(10,0)	DEFAULT NULL,
	CurrencyID	decimal(10,0)	DEFAULT NULL,
	NoOfAvailable	decimal(10,0)	DEFAULT NULL,
	BookStoreID	decimal(10,0)	DEFAULT NULL,
	Primary Key(BookSalesID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

Create Index bookSalesIndex on bookSales (BookID, Price);

CREATE table currency (
	CurrencyID		INT	NOT NULL AUTO_INCREMENT,
	CurrencyName 	varchar(10) 	not null,
	ExchangeRate 	double 	not null,
	Primary Key(CurrencyID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE table bookStore (
	BookStoreID		INT	NOT NULL AUTO_INCREMENT,
	BookStoreName 	varchar(100)	DEFAULT NULL,
	Address  	varchar(100)	DEFAULT NULL,
	Primary Key(BookStoreID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Sorcerer s Stone', 'J.K. Rowling', 'London : Bloomsbury Publishing', '1998-10-01', '1', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Chamber of Secrets', 'J.K. Rowling', 'London : Bloomsbury Publishing', '1999-08-15', '1', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Prisoner of Azkaban', 'J.K. Rowling', 'London : Bloomsbury Publishing', '2001-04-11', '1', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Goblet of Fire', 'J.K. Rowling', 'London : Bloomsbury Publishing', '2002-03-10', '1', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Order Of The Phoenix', 'J.K. Rowling', 'London : Bloomsbury Publishing', '2003-08-10', '1', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Half-Blood Prince', 'J.K. Rowling', 'London : Bloomsbury Publishing', '2005-7-10', '1', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Deathly Hallows', 'J.K. Rowling', 'London : Bloomsbury Publishing', '2008-12-05', '1', 'Fiction', 'English');
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Sorcerer s Stone', 'J.K. Rowling', 'London : Bloomsbury Publishing', '1999-09-08', '2', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Chamber of Secrets', 'J.K. Rowling', 'London : Bloomsbury Publishing', '2000-08-15', '2', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Prisoner of Azkaban', 'J.K. Rowling', 'London : Bloomsbury Publishing', '2001-09-11', '2', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Goblet of Fire', 'J.K. Rowling', 'London : Bloomsbury Publishing', '2002-07-30', '2', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Order Of The Phoenix', 'J.K. Rowling', 'London : Bloomsbury Publishing', '2004-08-10', '2', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Half-Blood Prince', 'J.K. Rowling', 'London : Bloomsbury Publishing', '2006-7-25', '2', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Deathly Hallows', 'J.K. Rowling', 'London : Bloomsbury Publishing', '2009-07-07', '2', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Deathly Hallows', 'J.K. Rowling', 'London : Bloomsbury Publishing', '2009-07-07', '2', 'Fiction', 'English'); 
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('The Tales of Beedle the Bard, Standard Edition', 'J.K. Rowling', 'London : Bloomsbury Publishing', '2008-12-04', '1', 'Fiction', 'English'); 
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry and Chicken', 'Sheldon, Dyan', 'Walker', '1990-12-04', '1', 'Fiction', 'English'); 	
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry & Hopper / Margaret Wild, Freya Blackwood', 'Wild, Margaret', 'London : Scholastic Children s Books', '2009-05-04', '1', 'Fiction', 'English'); 	 
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. London.', null, 'London : Time Out Guides Ltd', '2006-05-04', '1', 'Guidebooks', 'English'); 	 
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Paris.', null, 'London : Time Out Guides Ltd', '2006-06-04', '1', 'Guidebooks', 'English'); 	 
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Rome.', null, 'London : Time Out Guides Ltd', '2006-06-04', '1', 'Guidebooks', 'English'); 	 
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Barcelona.', null, 'London : Time Out Guides Ltd', '2006-06-04', '1', 'Guidebooks', 'English'); 	 

 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Amsterdam.', null, 'London : Time Out Guides Ltd', '2008-02-08', '1', 'Guidebooks', 'English'); 	 

 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Cyprus.', null, 'London : Time Out Guides Ltd', '2009-06-01', '1', 'Guidebooks', 'English'); 	 

 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Krakow.', null, 'London : Time Out Guides Ltd', '2009-12-05', '1', 'Guidebooks', 'English'); 	 

 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Bangkok.', null, 'London : Time Out Guides Ltd', '2010-06-04', '1', 'Guidebooks', 'English'); 	 

 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Brighton.', null, 'London : Time Out Guides Ltd', '2011-06-04', '1', 'Guidebooks', 'English'); 	 

 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. New York.', null, 'London : Time Out Guides Ltd', '2006-12-04', '1', 'Guidebooks', 'English'); 	 

 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Brussels, Bruges & Antwerp.', null, 'London : Time Out Guides Ltd', '2010-01-08', '1', 'Guidebooks', 'English'); 	 

  INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Krakow.', null, 'London : Time Out Guides Ltd', '2010-02-05', '2', 'Guidebooks', 'English'); 	 

 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Bangkok.', null, 'London : Time Out Guides Ltd', '2010-09-04', '2', 'Guidebooks', 'English'); 	 

 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Brighton.', null, 'London : Time Out Guides Ltd', '2011-09-08', '2', 'Guidebooks', 'English'); 	 

 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. New York.', null, 'London : Time Out Guides Ltd', '2007-02-04', '2', 'Guidebooks', 'English'); 	 

 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Brussels, Bruges & Antwerp.', null, 'London : Time Out Guides Ltd', '2011-01-05', '2', 'Guidebooks', 'English'); 
 
 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Brussels, Bruges & Antwerp.', null, 'London : Time Out Guides Ltd', '2011-08-05', '3', 'Guidebooks', 'English');
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Genetics : a molecular approach', 'Brown, T. A.', 'London : Van Nostrand Reinhold', '1989-08-05', '1', 'Genetics', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Genetics / M.W. Farnsworth.', 'Farnsworth, Marjorie W', 'New York : Harper & Row,', '1988-08-05', '2', 'Genetics', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('The science of genetics : an introduction to heredity / George W. Burns.', 'Burns, George W.', 'New York : Macmillan Publishing', '1989-08-05', '1', 'Genetics', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('The science of genetics / George W. Burns, Paul J. Bottino. ', 'Burns, George W.', 'New York : Macmillan Publishing', '1983-01-05', '1', 'Genetics', 'English');
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Genetics / Monroe W. Strickberger.', 'Strickberger, Monroe W.', 'New York : Macmillan', '1976-03-05', '2', 'Genetics', 'English');

 
 
 
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Art of seeing : drawing and creative expression', 'Ma, Kwai-shun.', 'Art Horizon Workshop', '2011-01-05', '1', 'Art', 'English and Chinese');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Landscape improvisation : dialogue between printmaking and painting', 'Ma, Kwai-shun.', 'Art Horizon Printmaking Workshop', '2005-02-28', '1', 'Art', 'English and Chinese');
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Landscape of passion', 'Ma, Kwai-shun.', 'Hong Kong : The Department', '2003-01-05', '1', 'Art', 'English and Chinese'); 
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Drawing duet : works by Ma Kwai Shun, Liu Siu Jane ', 'Ma, Kwai-shun.', 'Hong Kong : Art Horizon Printmaking Workshop', '2008-01-30', '1', 'Art', 'English and Chinese');
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Regional experiences & prospects in the new century', 'Ma, Kwai-shun.', 'Hong Kong : Department of Creative Arts, The Hong Kong Institute of Education,p', '2000-05-05', '1', 'Art', 'English and Chinese');

 
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Regional experiences & prospects in the new century', 'Ma, Kwai-shun.', 'Hong Kong : Department of Creative Arts, The Hong Kong Institute of Education,p', '2002-08-05', '2', 'Art', 'English and Chinese');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Regional experiences & prospects in the new century', 'Ma, Kwai-shun.', 'Hong Kong : Department of Creative Arts, The Hong Kong Institute of Education,p', '2004-07-08', '3', 'Art', 'English and Chinese');
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Urban art photography.', 'Grosse, Jurgen.', 'Berlin : urban-art.info : Die Gestalten Verlag', '2008-07-05', '1', 'Art', 'Germany');
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Geunter Brus, Bild-Dichtungen : Whitechapel Art Gallery, London', 'Brus, Geunter.', 'Berlin : urban-art.info : Die Gestalten Verlag', '2008-07-05', '1', 'Art', 'Germany');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Urban art photography.', 'Grosse, Jurgen.', 'London : Trustees of the Whitechapel Art Gallery', '1981-07-05', '1', 'Art', 'Germany');


 
INSERT INTO currency (CurrencyName, ExchangeRate) VALUES
('HKD', 1);

INSERT INTO currency (CurrencyName, ExchangeRate) VALUES
('USD', 7.8);

INSERT INTO currency (CurrencyName, ExchangeRate) VALUES
('EUR', 10.5);
 
INSERT INTO bookStore (BookStoreName, Address) VALUES
('Popular', 'Shop No. UG88, Upper Ground Floor, Olympian City 3, West Kowloon'); 

INSERT INTO bookStore (BookStoreName, Address) VALUES
('Popular', 'Unit 1, Level 9, MegaBox, 38 Wang Chiu Road, Kowloon Bay, Kowloon'); 

INSERT INTO bookStore (BookStoreName, Address) VALUES
('Popular', 'Shop No. 208 & 212, Cheung Fat Plaza, Cheung Fat Estate, Tsing Yi, N.T.'); 

INSERT INTO bookStore (BookStoreName, Address) VALUES
('Popular', 'Shop No. 139A & 139B, First Floor, Fortune City One, Shatin, N.T.'); 

INSERT INTO bookStore (BookStoreName, Address) VALUES
('Popular', '1/F & 2/F, Luard on the Park, 5 Luard Road, Wan Chai, H.K.'); 

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(1, 68, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(1, 68, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(1, 68, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(1, 68, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(1, 68, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(2, 68, 2, 0, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(2, 68, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(2, 68, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(2, 68, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(2, 68, 2, 0, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(3, 78, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(3, 78, 2, 1, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(3, 78, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(3, 78, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(3, 78, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(4, 78, 2, 1, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(4, 78, 2, 1, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(4, 78, 2, 1, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(4, 78, 2, 1, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(4, 78, 2, 1, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(5, 78, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(5, 78, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(5, 78, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(5, 78, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(5, 78, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(6, 80, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(6, 80, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(6, 80, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(6, 80, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(6, 80, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(7, 80, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(7, 80, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(7, 80, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(7, 80, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(7, 80, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(8, 68, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(8, 68, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(8, 68, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(8, 68, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(8, 68, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(9, 68, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(9, 68, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(9, 68, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(9, 68, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(9, 68, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(10, 78, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(10, 78, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(10, 78, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(10, 78, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(10, 78, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(11, 78, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(11, 78, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(11, 78, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(11, 78, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(11, 78, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(12, 78, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(12, 78, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(12, 78, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(12, 78, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(12, 78, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(13, 80, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(13, 80, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(13, 80, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(13, 80, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(13, 80, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(14, 40, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(14, 40, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(14, 40, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(14, 40, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(14, 40, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(15, 45, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(15, 45, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(15, 45, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(15, 45, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(15, 45, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(16, 37, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(16, 37, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(16, 37, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(16, 37, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(16, 37, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(17, 37, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(17, 37, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(17, 37, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(17, 37, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(17, 37, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(18, 90, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(18, 90, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(18, 90, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(18, 90, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(18, 90, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(19, 45, 3, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(19, 45, 3, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(19, 45, 3, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(19, 45, 3, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(19, 45, 3, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(20, 45, 3, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(20, 45, 3, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(20, 45, 3, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(20, 45, 3, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(20, 45, 3, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(21, 45, 3, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(21, 45, 3, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(21, 45, 3, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(21, 45, 3, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(21, 45, 3, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(22, 45, 3, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(22, 45, 3, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(22, 45, 3, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(22, 45, 3, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(22, 45, 3, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(23, 48, 3, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(23, 48, 3, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(23, 48, 3, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(23, 48, 3, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(23, 48, 3, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(24, 50, 3, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(24, 50, 3, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(24, 50, 3, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(24, 50, 3, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(24, 50, 3, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(25, 50, 3, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(25, 50, 3, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(25, 50, 3, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(25, 50, 3, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(25, 50, 3, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(26, 45, 3, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(26, 45, 3, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(26, 45, 3, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(26, 45, 3, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(26, 45, 3, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(27, 45, 3, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(27, 45, 3, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(27, 45, 3, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(27, 45, 3, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(27, 45, 3, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(28, 25, 3, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(28, 25, 3, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(28, 25, 3, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(28, 25, 3, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(28, 25, 3, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(29, 25, 3, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(29, 25, 3, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(29, 25, 3, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(29, 25, 3, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(29, 25, 3, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(30, 25, 3, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(30, 25, 3, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(30, 25, 3, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(30, 25, 3, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(30, 25, 3, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(31, 25, 3, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(31, 25, 3, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(31, 25, 3, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(31, 25, 3, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(31, 25, 3, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(32, 35, 3, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(32, 35, 3, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(32, 35, 3, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(32, 35, 3, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(32, 35, 3, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(33, 35, 3, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(33, 35, 3, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(33, 35, 3, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(33, 35, 3, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(33, 35, 3, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(34, 40, 3, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(34, 40, 3, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(34, 40, 3, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(34, 40, 3, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(34, 40, 3, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(35, 40, 3, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(35, 40, 3, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(35, 40, 3, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(35, 40, 3, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(35, 40, 3, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(36, 30, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(36, 30, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(36, 30, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(36, 30, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(36, 30, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(37, 50, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(37, 50, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(37, 50, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(37, 50, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(37, 50, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(38, 50, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(38, 50, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(38, 50, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(38, 50, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(38, 50, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(39, 50, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(39, 50, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(39, 50, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(39, 50, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(39, 50, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(40, 50, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(40, 50, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(40, 50, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(40, 50, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(40, 50, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(41, 300, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(41, 300, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(41, 300, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(41, 300, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(41, 300, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(42, 300, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(42, 300, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(42, 300, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(42, 300, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(42, 300, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(43, 350, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(43, 350, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(43, 350, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(43, 350, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(43, 350, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(44, 350, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(44, 350, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(44, 350, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(44, 350, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(44, 350, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(45, 350, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(45, 350, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(45, 350, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(45, 350, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(45, 350, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(46, 250, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(46, 250, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(46, 250, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(46, 250, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(46, 250, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(47, 150, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(47, 150, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(47, 150, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(47, 150, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(47, 150, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(48, 10, 3, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(48, 10, 3, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(48, 10, 3, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(48, 10, 3, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(48, 10, 3, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(49, 15, 3, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(49, 15, 3, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(49, 15, 3, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(49, 15, 3, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(49, 15, 3, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(50, 5, 3, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(50, 5, 3, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(50, 5, 3, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(50, 5, 3, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(50, 5, 3, 2, 5);


CREATE database bookstoreb;
 
use bookstoreb;

CREATE TABLE bookDetails (
	BookID		INT	NOT NULL AUTO_INCREMENT,
	BookName	varchar(100)	DEFAULT NULL,
	Author		varchar(100)	DEFAULT NULL,
	Publisher	varchar(100)	DEFAULT NULL,
	PublishDate	date		DEFAULT NULL,
	Edition		decimal(10,0)	DEFAULT NULL,
	Category	varchar(30)	DEFAULT NULL,
	Language	varchar(30)	DEFAULT NULL,
	SearchCount	decimal(10,0) DEFAULT 0,
	SalesCount	decimal(10,0) DEFAULT 0,
	Primary Key(BookID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

Create Index bookDetailsIndex1 on bookDetails (PublishDate);
Create Index bookDetailsIndex2 on bookDetails (BookName, Edition);
Create Index bookDetailsIndex3 on bookDetails (Author);

CREATE table bookSales (
	BookSalesID	INT	NOT NULL AUTO_INCREMENT,
	BookID		decimal(10,0)	NOT NULL,
	Price		decimal(10,0)	DEFAULT NULL,
	CurrencyID	decimal(10,0)	DEFAULT NULL,
	NoOfAvailable	decimal(10,0)	DEFAULT NULL,
	BookStoreID	decimal(10,0)	DEFAULT NULL,
	Primary Key(BookSalesID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

Create Index bookSalesIndex on bookSales (BookID, Price);

CREATE table currency (
	CurrencyID		INT	NOT NULL AUTO_INCREMENT,
	CurrencyName 	varchar(10) 	not null,
	ExchangeRate 	double 	not null,
	Primary Key(CurrencyID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE table bookStore (
	BookStoreID		INT	NOT NULL AUTO_INCREMENT,
	BookStoreName 	varchar(100)	DEFAULT NULL,
	Address  	varchar(100)	DEFAULT NULL,
	Primary Key(BookStoreID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Sorcerer s Stone', 'J.K. Rowling', 'London : Bloomsbury Publishing', '1998-10-01', '1', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Chamber of Secrets', 'J.K. Rowling', 'London : Bloomsbury Publishing', '1999-08-15', '1', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Prisoner of Azkaban', 'J.K. Rowling', 'London : Bloomsbury Publishing', '2001-04-11', '1', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Goblet of Fire', 'J.K. Rowling', 'London : Bloomsbury Publishing', '2002-03-10', '1', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Order Of The Phoenix', 'J.K. Rowling', 'London : Bloomsbury Publishing', '2003-08-10', '1', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Half-Blood Prince', 'J.K. Rowling', 'London : Bloomsbury Publishing', '2005-7-10', '1', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Deathly Hallows', 'J.K. Rowling', 'London : Bloomsbury Publishing', '2008-12-05', '1', 'Fiction', 'English');
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Sorcerer s Stone', 'J.K. Rowling', 'London : Bloomsbury Publishing', '1999-09-08', '2', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Chamber of Secrets', 'J.K. Rowling', 'London : Bloomsbury Publishing', '2000-08-15', '2', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Prisoner of Azkaban', 'J.K. Rowling', 'London : Bloomsbury Publishing', '2001-09-11', '2', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Goblet of Fire', 'J.K. Rowling', 'London : Bloomsbury Publishing', '2002-07-30', '2', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Order Of The Phoenix', 'J.K. Rowling', 'London : Bloomsbury Publishing', '2004-08-10', '2', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Half-Blood Prince', 'J.K. Rowling', 'London : Bloomsbury Publishing', '2006-7-25', '2', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Deathly Hallows', 'J.K. Rowling', 'London : Bloomsbury Publishing', '2009-07-07', '2', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry Potter and the Deathly Hallows', 'J.K. Rowling', 'London : Bloomsbury Publishing', '2009-07-07', '2', 'Fiction', 'English'); 
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('The Tales of Beedle the Bard, Standard Edition', 'J.K. Rowling', 'London : Bloomsbury Publishing', '2008-12-04', '1', 'Fiction', 'English'); 
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry and Chicken', 'Sheldon, Dyan', 'Walker', '1990-12-04', '1', 'Fiction', 'English'); 	
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Harry & Hopper / Margaret Wild, Freya Blackwood', 'Wild, Margaret', 'London : Scholastic Children s Books', '2009-05-04', '1', 'Fiction', 'English'); 	 
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. London.', null, 'London : Time Out Guides Ltd', '2006-05-04', '1', 'Guidebooks', 'English'); 	 
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Paris.', null, 'London : Time Out Guides Ltd', '2006-06-04', '1', 'Guidebooks', 'English'); 	 
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Rome.', null, 'London : Time Out Guides Ltd', '2006-06-04', '1', 'Guidebooks', 'English'); 	 
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Barcelona.', null, 'London : Time Out Guides Ltd', '2006-06-04', '1', 'Guidebooks', 'English'); 	 

 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Amsterdam.', null, 'London : Time Out Guides Ltd', '2008-02-08', '1', 'Guidebooks', 'English'); 	 

 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Cyprus.', null, 'London : Time Out Guides Ltd', '2009-06-01', '1', 'Guidebooks', 'English'); 	 

 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Krakow.', null, 'London : Time Out Guides Ltd', '2009-12-05', '1', 'Guidebooks', 'English'); 	 

 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Bangkok.', null, 'London : Time Out Guides Ltd', '2010-06-04', '1', 'Guidebooks', 'English'); 	 

 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Brighton.', null, 'London : Time Out Guides Ltd', '2011-06-04', '1', 'Guidebooks', 'English'); 	 

 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. New York.', null, 'London : Time Out Guides Ltd', '2006-12-04', '1', 'Guidebooks', 'English'); 	 

 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Brussels, Bruges & Antwerp.', null, 'London : Time Out Guides Ltd', '2010-01-08', '1', 'Guidebooks', 'English'); 	 

  INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Krakow.', null, 'London : Time Out Guides Ltd', '2010-02-05', '2', 'Guidebooks', 'English'); 	 

 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Bangkok.', null, 'London : Time Out Guides Ltd', '2010-09-04', '2', 'Guidebooks', 'English'); 	 

 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Brighton.', null, 'London : Time Out Guides Ltd', '2011-09-08', '2', 'Guidebooks', 'English'); 	 

 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. New York.', null, 'London : Time Out Guides Ltd', '2007-02-04', '2', 'Guidebooks', 'English'); 	 

 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Brussels, Bruges & Antwerp.', null, 'London : Time Out Guides Ltd', '2011-01-05', '2', 'Guidebooks', 'English'); 
 
 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Time out shortlist. Brussels, Bruges & Antwerp.', null, 'London : Time Out Guides Ltd', '2011-08-05', '3', 'Guidebooks', 'English');

 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Genetics : a molecular approach', 'Brown, T. A.', 'London : Van Nostrand Reinhold', '1989-08-05', '1', 'Genetics', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Genetics / M.W. Farnsworth.', 'Farnsworth, Marjorie W', 'New York : Harper & Row,', '1988-08-05', '2', 'Genetics', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('The science of genetics : an introduction to heredity / George W. Burns.', 'Burns, George W.', 'New York : Macmillan Publishing', '1989-08-05', '1', 'Genetics', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('The science of genetics / George W. Burns, Paul J. Bottino. ', 'Burns, George W.', 'New York : Macmillan Publishing', '1983-01-05', '1', 'Genetics', 'English');
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Genetics / Monroe W. Strickberger.', 'Strickberger, Monroe W.', 'New York : Macmillan', '1976-03-05', '2', 'Genetics', 'English');

 
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Art of seeing : drawing and creative expression', 'Ma, Kwai-shun.', 'Art Horizon Workshop', '2011-01-05', '1', 'Art', 'English and Chinese');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Landscape improvisation : dialogue between printmaking and painting', 'Ma, Kwai-shun.', 'Art Horizon Printmaking Workshop', '2005-02-28', '1', 'Art', 'English and Chinese');
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Landscape of passion', 'Ma, Kwai-shun.', 'Hong Kong : The Department', '2003-01-05', '1', 'Art', 'English and Chinese'); 
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Drawing duet : works by Ma Kwai Shun, Liu Siu Jane ', 'Ma, Kwai-shun.', 'Hong Kong : Art Horizon Printmaking Workshop', '2008-01-30', '1', 'Art', 'English and Chinese');
 
INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Regional experiences & prospects in the new century', 'Ma, Kwai-shun.', 'Hong Kong : Department of Creative Arts, The Hong Kong Institute of Education,p', '2000-05-05', '1', 'Art', 'English and Chinese');

 
 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('A Dog So Small', 'Pearce Philippa', 'Puffin Classics	', '2012-01-05', '1', 'Fiction', 'English');

INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Dreams of Joy', 'Lisa See', 'Bloomsbury Publishing Plc	', '2012-01-08', '1', 'Fiction', 'English');
 
 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('The Uses of Pessimism: And the Danger of False Hope', 'Roger Scruton', 'Atlantic Books	', '2012-01-11', '1', 'Philosophy', 'English');
 
 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('Driving With Plato: The Meaning of Life s Milestones', 'Robert Rowland Smith', 'Profile Books', '2012-02-05', '1', 'Philosophy', 'English');
 
 INSERT INTO bookDetails (BookName, Author, Publisher, PublishDate, Edition, Category, Language ) VALUES 
 ('The Roger Scruton Reader', 'Mark Dooley', 'Continuum', '2011-12-25', '1', 'Philosophy', 'English');
 
 
 
INSERT INTO currency (CurrencyName, ExchangeRate) VALUES
('HKD', 1);

INSERT INTO currency (CurrencyName, ExchangeRate) VALUES
('USD', 7.8);

INSERT INTO currency (CurrencyName, ExchangeRate) VALUES
('EUR', 10.5);
 
INSERT INTO bookStore (BookStoreName, Address) VALUES
('CP Store', 'Shop 21-22, Level 2, South Wing, Trend Plaza, Tuen Mun, N.T.'); 

INSERT INTO bookStore (BookStoreName, Address) VALUES
('CP Store', 'Shop 115, 1/F, Olympian City 1,11 Hoi Fai Road, West Kowloon'); 

INSERT INTO bookStore (BookStoreName, Address) VALUES
('CP Store', '9 Yee Wo St., Causeway Bay, H.K.'); 

INSERT INTO bookStore (BookStoreName, Address) VALUES
('CP Store', 'Shop 252, Level 2,Phase I, New Town Plaza ,Shatin, N.T.'); 

INSERT INTO bookStore (BookStoreName, Address) VALUES
('CP Store', 'Shop 261, Level 2, East Point City, Tseung Kwan O, N.T.'); 

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(1, 68, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(1, 68, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(1, 68, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(1, 68, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(1, 68, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(2, 68, 2, 0, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(2, 68, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(2, 68, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(2, 68, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(2, 68, 2, 0, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(3, 78, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(3, 78, 2, 1, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(3, 78, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(3, 78, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(3, 78, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(4, 78, 2, 1, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(4, 78, 2, 1, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(4, 78, 2, 1, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(4, 78, 2, 1, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(4, 78, 2, 1, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(5, 78, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(5, 78, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(5, 78, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(5, 78, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(5, 78, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(6, 80, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(6, 80, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(6, 80, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(6, 80, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(6, 80, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(7, 80, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(7, 80, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(7, 80, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(7, 80, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(7, 80, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(8, 68, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(8, 68, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(8, 68, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(8, 68, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(8, 68, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(9, 68, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(9, 68, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(9, 68, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(9, 68, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(9, 68, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(10, 78, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(10, 78, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(10, 78, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(10, 78, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(10, 78, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(11, 78, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(11, 78, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(11, 78, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(11, 78, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(11, 78, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(12, 78, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(12, 78, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(12, 78, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(12, 78, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(12, 78, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(13, 80, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(13, 80, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(13, 80, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(13, 80, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(13, 80, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(14, 40, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(14, 40, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(14, 40, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(14, 40, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(14, 40, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(15, 45, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(15, 45, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(15, 45, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(15, 45, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(15, 45, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(16, 37, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(16, 37, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(16, 37, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(16, 37, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(16, 37, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(17, 37, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(17, 37, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(17, 37, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(17, 37, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(17, 37, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(18, 90, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(18, 90, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(18, 90, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(18, 90, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(18, 90, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(19, 499, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(19, 499, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(19, 499, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(19, 499, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(19, 499, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(20, 499, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(20, 499, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(20, 499, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(20, 499, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(20, 499, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(21, 499, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(21, 499, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(21, 499, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(21, 499, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(21, 499, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(22, 499, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(22, 499, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(22, 499, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(22, 499, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(22, 499, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(23, 48, 3, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(23, 48, 3, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(23, 48, 3, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(23, 48, 3, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(23, 48, 3, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(24, 50, 3, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(24, 50, 3, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(24, 50, 3, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(24, 50, 3, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(24, 50, 3, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(25, 50, 3, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(25, 50, 3, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(25, 50, 3, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(25, 50, 3, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(25, 50, 3, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(26, 499, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(26, 499, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(26, 499, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(26, 499, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(26, 499, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(27, 499, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(27, 499, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(27, 499, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(27, 499, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(27, 499, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(28, 299, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(28, 299, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(28, 299, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(28, 299, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(28, 299, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(29, 299, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(29, 299, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(29, 299, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(29, 299, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(29, 299, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(30, 299, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(30, 299, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(30, 299, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(30, 299, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(30, 299, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(31, 299, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(31, 299, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(31, 299, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(31, 299, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(31, 299, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(32, 399, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(32, 399, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(32, 399, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(32, 399, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(32, 399, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(33, 399, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(33, 399, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(33, 399, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(33, 399, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(33, 399, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(34, 40, 3, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(34, 40, 3, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(34, 40, 3, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(34, 40, 3, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(34, 40, 3, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(35, 40, 3, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(35, 40, 3, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(35, 40, 3, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(35, 40, 3, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(35, 40, 3, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(36, 30, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(36, 30, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(36, 30, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(36, 30, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(36, 30, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(37, 50, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(37, 50, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(37, 50, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(37, 50, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(37, 50, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(38, 50, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(38, 50, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(38, 50, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(38, 50, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(38, 50, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(39, 50, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(39, 50, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(39, 50, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(39, 50, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(39, 50, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(40, 50, 2, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(40, 50, 2, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(40, 50, 2, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(40, 50, 2, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(40, 50, 2, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(41, 300, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(41, 300, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(41, 300, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(41, 300, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(41, 300, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(42, 300, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(42, 300, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(42, 300, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(42, 300, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(42, 300, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(43, 350, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(43, 350, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(43, 350, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(43, 350, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(43, 350, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(44, 350, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(44, 350, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(44, 350, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(44, 350, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(44, 350, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(45, 150, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(45, 150, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(45, 150, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(45, 150, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(45, 150, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(46, 250, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(46, 250, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(46, 250, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(46, 250, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(46, 250, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(47, 150, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(47, 150, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(47, 150, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(47, 150, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(47, 150, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(48, 169, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(48, 169, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(48, 169, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(48, 169, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(48, 169, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(49, 120, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(49, 120, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(49, 120, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(49, 120, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(49, 120, 1, 2, 5);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(50, 99, 1, 2, 1);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(50, 99, 1, 2, 2);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(50, 99, 1, 2, 3);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(50, 99, 1, 2, 4);

INSERT INTO bookSales (BookID, Price, CurrencyID, NoOfAvailable, BookStoreID) VALUES
(50, 99, 1, 2, 5);


