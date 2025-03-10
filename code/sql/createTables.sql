

CREATE TABLE npcs (
	id INT AUTO_INCREMENT PRIMARY KEY,
	name CHAR(20) NOT NULL,
    imageFilePath Char(50) NOT NULL,
    firstDialogue TEXT(1000) NOT NULL,
    onFirstDialogueEnd TEXT(1000) NOT NULL
);

CREATE TABLE NPCdialogue (
	id INT AUTO_INCREMENT PRIMARY KEY,
    npcID INT NOT NULL,
    dialogue TEXT(1000) NOT NULL,
    onDialogueEnd TEXT(1000) NOT NULL,
    
    FOREIGN KEY (npcID) REFERENCES npcs(id)
);

CREATE TABLE areas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name CHAR(20) NOT NULL
);

CREATE TABLE decisions (
    id INT NOT NULL,
    areaID INT NOT NULL,
    details TEXT(1000),
    prompt TEXT(1000),
    backgroundFilePath CHAR(50) NOT NULL,
    hasTimer BOOLEAN NOT NULL,
    hasPopupMenu BOOLEAN NOT NULL,
    hasDialogue BOOLEAN NOT NULL,
    hasLibraryBook BOOLEAN NOT NULL,
    hasDragDropGame BOOLEAN NOT NULL,
    hasTextEntry BOOLEAN NOT NULL,
    hasButtonOptions BOOLEAN NOT NULL,

    FOREIGN KEY (areaID) REFERENCES areas(id),
    PRIMARY KEY (id, areaID)
);

CREATE TABLE timerBars (
    id INT PRIMARY KEY,
    duration INT NOT NULL,
    onComplete TEXT(1000) NOT NULL,

    FOREIGN KEY (id) REFERENCES decisions(id)
);

CREATE TABLE popupMenus (
    id INT PRIMARY KEY,
    contentType CHAR(20) NOT NULL,
    content TEXT(1000) NOT NULL,
    contentTitle CHAR(50) NOT NULL,

    FOREIGN KEY (id) REFERENCES decisions(id)
);

CREATE TABLE textEntries (
    id INT PRIMARY KEY,
    correctAnswer CHAR(50) NOT NULL,
    onCorrect TEXT(1000) NOT NULL,
    onIncorrect TEXT(100) NOT NULL,

    FOREIGN KEY (id) REFERENCES decisions(id)
);

CREATE TABLE libraryBooks (
    id INT PRIMARY KEY,
    content TEXT(1000) NOT NULL,
    contentTitle CHAR(50) NOT NULL,
    scoreNeeded INT NOT NULL,
    totalLives INT NOT NULL,

    FOREIGN KEY (id) REFERENCES decisions(id)
);

CREATE TABLE dragDropGames (
    id INT PRIMARY KEY,
    noDragItems INT NOT NULL,
    dragItemsImg CHAR(50) NOT NULL,
    timeLimit INT NOT NULL,
    onFail TEXT(1000) NOT NULL,
    title CHAR(50) NOT NULL,
    backgroundStyle TEXT(1000) NOT NULL,

    FOREIGN KEY (id) REFERENCES decisions(id)
);

CREATE TABLE buttonOptions (
    decisionID INT,
    buttonID CHAR(100) NOT NULL,
    buttonText CHAR(50) NOT NULL,
    buttonFunction TEXT(1000) NOT NULL,

    FOREIGN KEY (decisionID) REFERENCES decisions(id),
    PRIMARY KEY (decisionID, buttonID)
);

CREATE TABLE dialogues(
    id INT PRIMARY KEY,
    npcID INT NOT NULL,

    FOREIGN KEY (npcID) REFERENCES npcs(id),
    FOREIGN KEY (id) REFERENCES decisions(id)
);