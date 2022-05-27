DROP TABLE factSales;
DROP TABLE dimProduct;
DROP TABLE dimCustomer;
DROP TABLE dimStore;
DROP TABLE dimDate;


CREATE TABLE dimDate(


)


CREATE TABLE dimStore(
  storeKey        NUMERIC(9,0),
  storeCity       VARCHAR(20),
  storeCountry    VARCHAR(20),
  storeRegion     VARCHAR(20),  

--
  PRIMARY KEY (storeKey)
);

CREATE TABLE dimCustomer(
  customerKey   NUMERIC(9,0),
  customerName  VARCHAR(40),

--
   PRIMARY KEY (customerKey)
);


CREATE TABLE dimProduct(
  productKey           NUMERIC(6,0),
  lineproductreference VARCHAR(40),
  prodLine             VARCHAR(40),
  productName          VARCHAR(20),
  productTable         VARCHAR(20),

--
   PRIMARY KEY (productKey)
);


CREATE TABLE factSales (
  dateKey     NUMERIC(9,0),
  storeKey    NUMERIC(5,0),
  customerKey NUMERIC(9,0),
  productKey  NUMERIC(6,0),
  salesUnits  NUMERIC(6,0) NOT NULL,
  salesEuros  NUMERIC(9,2) NOT NULL,
--
  PRIMARY KEY (dateKey, storeKey, customerKey, productKey),
--
  FOREIGN KEY (dateKey)     REFERENCES dimDate(dateKey),
  FOREIGN KEY (storeKey)    REFERENCES dimStore(storeKey),
  FOREIGN KEY (customerKey) REFERENCES dimCustomer(customerKey),
  FOREIGN KEY (productKey)  REFERENCES dimProduct(productKey),
--
  CHECK (salesUnits > 0),
  CHECK (salesEuros > 0.0)
);

INSERT INTO TABLE dimStore(storeKey,storeCity,storeCountry,storeRegion) VALUES (1, 'Lisbon', 'Portugal', 'Iberia');
INSERT INTO TABLE dimStore(storeKey,storeCity,storeCountry,storeRegion) VALUES (2, 'Porto', 'Portugal', 'Iberia');
INSERT INTO TABLE dimStore(storeKey,storeCity,storeCountry,storeRegion) VALUES (3, 'Coimbra', 'Portugal', 'Iberia');
INSERT INTO TABLE dimStore(storeKey,storeCity,storeCountry,storeRegion) VALUES (4, 'Madrid', 'Spain', 'Iberia');
INSERT INTO TABLE dimStore(storeKey,storeCity,storeCountry,storeRegion) VALUES (5, 'Barcelona', 'Spain', 'Iberia');
INSERT INTO TABLE dimStore(storeKey,storeCity,storeCountry,storeRegion) VALUES (6, 'Paris', 'France', 'NotIberia');
INSERT INTO TABLE dimStore(storeKey,storeCity,storeCountry,storeRegion) VALUES (7, 'London', 'England', 'NotIberia');


INSERT INTO TABLE dimCustomer(customerKey,customerName) VALUES (1, 'Mercatlon');
INSERT INTO TABLE dimCustomer(customerKey,customerName) VALUES (2, 'Lisbon Consulting');
INSERT INTO TABLE dimCustomer(customerKey,customerName) VALUES (3, 'Dist Mecano');
INSERT INTO TABLE dimCustomer(customerKey,customerName) VALUES (4, 'Huey, Dewey and Louie');
INSERT INTO TABLE dimCustomer(customerKey,customerName) VALUES (5, 'Silva, Silva e Silva');
INSERT INTO TABLE dimCustomer(customerKey,customerName) VALUES (6, 'MSI Ent');
INSERT INTO TABLE dimCustomer(customerKey,customerName) VALUES (7, 'Int. Machines');
INSERT INTO TABLE dimCustomer(customerKey,customerName) VALUES (8, 'MyCO Inf. Systems');
INSERT INTO TABLE dimCustomer(customerKey,customerName) VALUES (9, 'Frankenstein and Sons');
INSERT INTO TABLE dimCustomer(customerKey,customerName) VALUES (10, 'CPPO Int.');
INSERT INTO TABLE dimCustomer(customerKey,customerName) VALUES (11, 'José Malhoa, Lda');
INSERT INTO TABLE dimCustomer(customerKey,customerName) VALUES (12, 'SONAC');
INSERT INTO TABLE dimCustomer(customerKey,customerName) VALUES (13, 'h4xOR b0yZ, Intl');
INSERT INTO TABLE dimCustomer(customerKey,customerName) VALUES (14, 'Joe Doe & Assoc.');
INSERT INTO TABLE dimCustomer(customerKey,customerName) VALUES (15, 'EmpSocor');
INSERT INTO TABLE dimCustomer(customerKey,customerName) VALUES (16, 'Gurgle Searches');
INSERT INTO TABLE dimCustomer(customerKey,customerName) VALUES (17, 'Mercotex');
INSERT INTO TABLE dimCustomer(customerKey,customerName) VALUES (18, 'GIGO-FIFO SA');
INSERT INTO TABLE dimCustomer(customerKey,customerName) VALUES (19, 'Neural Works, Intl');
INSERT INTO TABLE dimCustomer(customerKey,customerName) VALUES (20, 'DISONI, SA');


