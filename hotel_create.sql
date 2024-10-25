DROP TABLE Hotel_T CASCADE CONSTRAINTS;
DROP TABLE Customer_T CASCADE CONSTRAINTS;
DROP TABLE Reservation_T CASCADE CONSTRAINTS;

CREATE TABLE Hotel_T(
    HotelID         INTEGER         NOT NULL,
    Website         VARCHAR2(40),
    Address         VARCHAR2(60),
    CSPhoneNum      CHAR(12),
    CSEmail         VARCHAR2(70),
CONSTRAINT Hotel_PK PRIMARY KEY (HotelID)
);

CREATE TABLE Customer_T(
    CustomerID      INTEGER         NOT NULL,
    Name            VARCHAR2(50)     NOT NULL,
    Address         VARCHAR2(70),
    LoyaltyInfo     CHAR(1),
CONSTRAINT Customer_PK PRIMARY KEY (CustomerID)
);

CREATE TABLE Reservation_T(
    ReservationID   INTEGER         NOT NULL,
    PaymentType     VARCHAR2(11),
    RoomNum         INTEGER,
    CheckInDate     DATE,
    CheckOutDate    DATE,
    StayDuration    INTEGER,
    HotelID         INTEGER,
    CustomerID      INTEGER,
CONSTRAINT Reservation_PK PRIMARY KEY (ReservationID),
CONSTRAINT Reservation_FK1 FOREIGN KEY (HotelID) REFERENCES Hotel_T(HotelID),
CONSTRAINT Reservation_FK2 FOREIGN KEY (CustomerID) REFERENCES Customer_T(CustomerID)
);