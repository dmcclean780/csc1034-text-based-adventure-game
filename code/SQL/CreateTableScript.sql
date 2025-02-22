USE myDatabase;

DROP TABLE users;

CREATE TABLE users (
	userID INT PRIMARY KEY AUTO_INCREMENT,
    userName VARCHAR(50),
    userPassword VARCHAR(50)
);

CREATE TABLE areas (
	areaID INT PRIMARY KEY,
    areaName VARCHAR(50)
);

CREATE TABLE decisions (
	decisionID INT PRIMARY KEY,
    areaID INT NOT NULL,
    
    FOREIGN KEY (areaID) REFERENCES areas(areaID)
);

CREATE TABLE characters (
	characterID INT PRIMARY KEY AUTO_INCREMENT,
    userID INT NOT NULL,
    characterName VARCHAR(50),
    areaID INT NOT NULL,
    decisionID INT NOT NULL,
    
    FOREIGN KEY (userID) REFERENCES users(userID),
    FOREIGN KEY (areaID) REFERENCES areas(areaID),
    FOREIGN KEY (decisionID) REFERENCES decisions(decisionID)
);

CREATE TABLE character_event (
	characterID INT PRIMARY KEY,
    dungeon1Complete BIT NOT NULL,
    /* add more fields here as appropriate */
    
    FOREIGN KEY (characterID) REFERENCES characters(characterID)
);

CREATE TABLE items (
	itemID INT PRIMARY KEY AUTO_INCREMENT,
    itemName VARCHAR(50),
    itemDescription VARCHAR(50)
);

CREATE TABLE inventory (
	characterID INT NOT NULL,
	itemID INT NOT NULL,
    quantity INT,
    
    PRIMARY KEY (characterID, itemID),
    FOREIGN KEY (characterID) REFERENCES characters(characterID),
    FOREIGN KEY (itemID) REFERENCES items(itemID)
);

CREATE TABLE NPCs (
	NPCID INT PRIMARY KEY AUTO_INCREMENT,
    NPCName VARCHAR(50)
);