/* criação database exemplo */ 

create database trainingdb;

use trainingdb;

/* criação tabela exemplo */ 

CREATE TABLE ACCOUNT(AccountID int NOT NULL,Branch varchar(255) NOT NULL, AccountNumber varchar(255),AccountType ENUM('CURRENT', 'SAVINGS') NOT NULL, Balance FLOAT,ModifiedDate DATE,PRIMARY KEY (AccountID));

DESC ACCOUNT;

INSERT INTO ACCOUNT VALUES (1,"AOB","A00012","CURRENT",231221,'2014-12-02');

/* query de teste */

SELECT AccountID,Branch,AccountNumber,AccountType,Balance,ModifiedDate FROM ACCOUNT WHERE AccountID=1;

/* OBS: No XML, a query será SELECT AccountID,Branch,AccountNumber,AccountType,Balance,ModifiedDate FROM ACCOUNT WHERE AccountID=:AccountID; */

/* Motivo: O XML terá uma tag AccountID, onde iremos adicionar o Id que queremos */

