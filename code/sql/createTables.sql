

    CREATE TABLE npcs
    (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name CHAR(20) NOT NULL,
        imageFilePath Char(50) NOT NULL,
        firstDialogue TEXT(1000) NOT NULL,
        onFirstDialogueEnd TEXT(1000) NOT NULL
    );

    CREATE TABLE map(
        worldName CHAR(20) NOT NULL,
        rowSize INT NOT NULL,
        colSize INT NOT NULL,
        PRIMARY KEY (worldName)
    );

    CREATE TABLE areas
    (
        id INT NOT NULL PRIMARY KEY,
        name CHAR(20) NOT NULL,
        rowPosition INT NOT NULL,
        colPosition INT NOT NULL,
        ableToVisitCondition TEXT(1000) NOT NULL
    );

    CREATE TABLE decisions
    (
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
        hasSelectInventory BOOLEAN NOT NULL,

        FOREIGN KEY (areaID) REFERENCES areas(id),
        PRIMARY KEY (id, areaID)
    );

    CREATE TABLE timerBars
    (
        id INT NOT NULL,
        areaID INT NOT NULL,
        duration INT NOT NULL,
        onComplete TEXT(1000) NOT NULL,

        PRIMARY KEY (id, areaID),
        FOREIGN KEY (id) REFERENCES decisions(id)
    );

    CREATE TABLE popupMenus
    (
        id INT NOT NULL,
        areaID INT NOT NULL,
        contentType CHAR(20) NOT NULL,
        content TEXT(1000) NOT NULL,
        contentTitle CHAR(50) NOT NULL,

        PRIMARY KEY (id, areaID),
        FOREIGN KEY (id) REFERENCES decisions(id)
    );

    CREATE TABLE textEntries
    (
        id INT NOT NULL,
        areaID INT NOT NULL,
        correctAnswer CHAR(50) NOT NULL,
        onCorrect TEXT(1000) NOT NULL,
        onIncorrect TEXT(100) NOT NULL,

        PRIMARY KEY (id, areaID),
        FOREIGN KEY (id) REFERENCES decisions(id)
    );

    CREATE TABLE libraryBooks
    (
        id INT NOT NULL,
        areaID INT NOT NULL,
        content TEXT(1000) NOT NULL,
        contentTitle CHAR(50) NOT NULL,
        scoreNeeded INT NOT NULL,
        totalLives INT NOT NULL,
        bookFunction TEXT(1000) NOT NULL,

        PRIMARY KEY (id, areaID),
        FOREIGN KEY (id) REFERENCES decisions(id)
    );

    CREATE TABLE dragDropGames
    (
        id INT NOT NULL,
        areaID INT NOT NULL,
        noDragItems INT NOT NULL,
        dragItemsImg CHAR(50) NOT NULL,
        timeLimit INT NOT NULL,
        onFail TEXT(1000) NOT NULL,
        title CHAR(50) NOT NULL,
        backgroundStyle TEXT(1000) NOT NULL,

        PRIMARY KEY (id, areaID),
        FOREIGN KEY (id) REFERENCES decisions(id)
    );

    CREATE TABLE buttonOptions
    (
        id INT NOT NULL,
        areaID INT NOT NULL,
        buttonID CHAR(100) NOT NULL,
        buttonText CHAR(50) NOT NULL,
        buttonFunction TEXT(1000) NOT NULL,
        showCondition TEXT(1000) NOT NULL,

        FOREIGN KEY (id) REFERENCES decisions(id),
        PRIMARY KEY (id, areaID, buttonID)
    );

    CREATE TABLE dialogues
    (
        id INT NOT NULL,
        areaID INT NOT NULL,
        npcID INT NOT NULL,
        PRIMARY KEY (id, areaID),
        FOREIGN KEY (npcID) REFERENCES npcs(id),
        FOREIGN KEY (id) REFERENCES decisions(id)
    );

    CREATE TABLE users
    (
        username VARCHAR(50) UNIQUE NOT NULL,
        pass VARCHAR(255) NOT NULL,

        PRIMARY KEY (username)
    );

    CREATE TABLE settings
    (
        username VARCHAR(50) NOT NULL,
        doTextAnimations BOOLEAN NOT NULL,
        textAnimationSpeed INT NOT NULL,
        PRIMARY KEY (username),
        FOREIGN KEY (username) REFERENCES users(username)
    );

    CREATE TABLE playerCharacter
    (
        characterID INT AUTO_INCREMENT,
        username VARCHAR(50) NOT NULL,
        name CHAR(20) NOT NULL,
        currentDecision INT NOT NULL,
        currentArea INT NOT NULL,
        alive BOOLEAN NOT NULL,
        successful BOOLEAN,
        endingAchieved INT,
        catacombsCompleted BOOLEAN,
        townHallVisited BOOLEAN,
        libraryCompleted BOOLEAN,
        palaceCompleted BOOLEAN,
        forestCompleted BOOLEAN,
        wormHillCompleted BOOLEAN,
        currentAreaState JSON,
        inventory JSON,

        PRIMARY KEY (characterID, username),
        FOREIGN KEY (username) REFERENCES users(username),
        FOREIGN KEY (currentDecision) REFERENCES decisions(id),
        FOREIGN KEY (currentArea) REFERENCES areas(id)
    );

    CREATE TABLE selectInventory
    (
        id INT NOT NULL,
        areaID INT NOT NULL,
        correctItem CHAR(50) NOT NULL,
        correctAnswerFunction TEXT(1000) NOT NULL,
        incorrectAnswerFunction TEXT(1000) NOT NULL,

        PRIMARY KEY (id, areaID),
        FOREIGN KEY (id) REFERENCES decisions(id)
    );



   
