USE csc1034_group54;

CREATE TABLE areas (
	areaID INT AUTO_INCREMENT PRIMARY KEY,
    areaName VARCHAR(20)
);

CREATE TABLE decisions (
	decisionID INT AUTO_INCREMENT PRIMARY KEY,
    areaID INT NOT NULL,
    areaPosition INT NOT NULL,
    backgroundImagePath VARCHAR(100),
    loadFunction VARCHAR(1000),
    FOREIGN KEY (areaID) REFERENCES areas(areaID)
);

CREATE TABLE decisionsData (
	dataID INT AUTO_INCREMENT PRIMARY KEY,
	decisionID INT NOT NULL,
    data VARCHAR(1000),
    
    FOREIGN KEY (decisionID) REFERENCES decisions(decisionID)
);

