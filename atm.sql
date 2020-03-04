DROP DATABASE IF EXISTS atm;
CREATE SCHEMA atm;

CREATE TABLE Racun (
  customerID INT NOT NULL,
  firstName VARCHAR(80) NOT NULL,
  lastName VARCHAR(80) NOT NULL,
  amount INT NOT NULL,
  PRIMARY KEY (customerID)
  );

CREATE TABLE Transfer (
  transferID INT NOT NULL,
  sourceAccount INT NOT NULL,
  targetAccount INT NOT NULL,
  transferAmount DOUBLE NOT NULL,
  PRIMARY KEY (transferID),
  FOREIGN KEY (sourceAccount) REFERENCES Racun (customerID),
  FOREIGN KEY (targetAccount) REFERENCES Racun (customerID)
   );


