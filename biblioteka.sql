DROP DATABASE IF EXISTS biblioteka;
CREATE SCHEMA biblioteka;

CREATE TABLE Racun (
  customerID INT NOT NULL,
  firstName VARCHAR(80) NOT NULL,
  lastName VARCHAR(80) NOT NULL,
  numberOfBooks INT,
  PRIMARY KEY (customerID)
  );

CREATE TABLE Knjiga (
  bookID INT NOT NULL,
  title VARCHAR(80) NOT NULL,
  status VARCHAR(15), 
  PRIMARY KEY (bookID),
  CONSTRAINT checkStatus CHECK (status IN('izdata','nije izdata'))
  );
  
  CREATE TABLE PodizanjeKnjige (
  ID INT NOT NULL,
  customerID INT NOT NULL,
  bookID INT NOT NULL,
  datum DATE DEFAULT(CURRENT_DATE),
  PRIMARY KEY (ID),
  FOREIGN KEY (customerID) REFERENCES Racun(customerID),
  FOREIGN KEY (bookID) REFERENCES Knjiga(bookID)
  );

