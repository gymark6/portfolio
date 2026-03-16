
CREATE TABLE Városok(
    Irányítószám int,
    Város_neve varchar(30),
    PRIMARY KEY(Irányítószám)
);

CREATE TABLE Műfaj(
    Műfaj_kód int,
    Műfajok varchar(30),
    PRIMARY KEY(Műfaj_kód)
);
CREATE TABLE Színészek(
    Színész_kód int,
    Név varchar(50),
    Szül_év datetime,
    Irányítószám int,
    PRIMARY KEY(Színész_kód),
    FOREIGN KEY(Irányítószám)
    REFERENCES Városok(Irányítószám)
);
CREATE TABLE Filmek(
    Film_kód int,
    Cím varchar(50),
    Gyárt_év datetime,
    Film_hossz int,
    Műfaj_kód int,
    PRIMARY KEY(Film_kód),
    FOREIGN KEY(Műfaj_kód)
    REFERENCES Műfaj(Műfaj_kód)
);

CREATE TABLE Szerződés(
    Szerződés_kód int,
    Fizetés_mennyisége int,
    Film_kód int,
    Színész_kód int,
    PRIMARY KEY(Szerződés_kód),
    FOREIGN KEY(Film_kód)
    REFERENCES Filmek(Film_kód),
    FOREIGN KEY(Színész_kód)
    REFERENCES Színészek(Színész_kód)
);
