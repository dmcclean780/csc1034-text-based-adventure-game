

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



INSERT INTO npcs (name, imageFilePath, firstDialogue, onFirstDialogueEnd)
VALUES 
	('Ankou', 
    'images/npc/ankou.png', 
    '["Hrrrggghhh…", 
		"Death... Take... Thee... PlayerNameHere...", 
		"Ghhhuuuaaahh…"]',
    "null"),

  ('Armourer', 
    'images/npc/armourer.png', 
    '["Ah, a new face in Eldermere&#39;s Forge, eh?",  
		"Welcome, traveler! Name&#39;s Garrik Ironhand, finest smith in these parts—though, truth be told, I&#39;m the only one.", 
    "Unfortunatly we are overworked as is, so you will have to survive with your current armour", 
    "Though it looks like you already have a mighty fine set already", 
    "Safe Travels, friend and remember, if you need anything, you know where to find me."]',
    '(() => { loadNextDecision(1, 1); })'),

  ('Barkeep',
    'images/npc/barkeep.png',
    '["Hmph. New face, eh? Don&#39;t get many strangers &#39;round here. Least not ones who ain&#39;t trouble.", 
    "You here for a drink, or just looking? &#39;Cause I don&#39;t serve folks who ask too many questions. And I sure as hell don&#39;t serve fools who bring trouble to my doorstep.", 
    "&#39;Specially folks who come here armed and look like death warmed over.", 
    "If I were you I&#39;d move along now and outta Eldermere."]',
    '(() => { loadNextDecision(1, 3); })'),

  ('Witch',
    'images/npc/witch.png',
    '["PlayerNameHere", 
    "Total Decisions: NoFromDatabase" , 
    "Various Other Game Stats"]',
    '(() => { loadNextDecision(1, 8); })'),

  ('Andrew',
    'images/npc/andrew.png',
    '["Hark!", 
    "Brave Traveler, we have been awaiting your arrival.", 
    "I knew you were coming since I felt the presance of Death leave those woods.", 
    "Now tell me what is your name?", "Ah, PlayerNameHere!", 
    "We are facing a grave dilemma, the Wizard Pandora has been ammassing power.", 
    "He seeks to cntrol the 4 powers of our world: Wealth, Strength, Knowledge and Courage.", 
    "Should he succeed his dominion will be unquestionable.", 
    "You must stop him, I will let Bee-Yen explain to you the particulars.", 
    "Good Luck, PlayerNameHere."]',
     '(() => { loadNextDecision(1, 7); })'),

  ('Bee-Yen',
    'images/npc/beeyen.png',
    '["Greetings, PlayerNameHere.", 
    "I am Bee-Yen, the head of the Eldermere Wizards Guild.", 
    "We have been monitoring the movements of the Wizard Pandora for some time now.", 
    "We have deduced the locations of the four powers that he seeks to control. I will mark them on your map.", 
    "You must travel to each location and retrieve the power before Pandora can get his hands on it.", 
    "Once you have secured all 4 powers you can assault Pandora at his Colluseum.", 
    "Take your time in Eldermere before you set out, you will need all the strength you can muster.", 
    "Good Luck, PlayerNameHere."]',
     '(() => { loadNextDecision(1, 3); })'),

  ('Paige Reed',
    'images/npc/paige.png',
    '["Hello, PlayerNameHere."]',
     '(() => { loadNextDecision(1, 3); })');
    
        


INSERT INTO NPCdialogue(npcID, dialogue, onDialogueEnd)
VALUES
	(2, '["Back are we?", "Well as you can see I still have nothing to offer you", "Safe Travels"]',  '(() => { loadNextDecision(1, 1); })');
    

INSERT INTO areas
    (name)
VALUES
    ('Village');

INSERT INTO decisions
    (id, areaID, details, prompt, backgroundFilePath, hasTimer, hasPopupMenu, hasDialogue, hasLibraryBook, hasDragDropGame, hasTextEntry, hasButtonOptions)
VALUES
    ( 1,
        1,
        'Welcome to the village of Eldermere. This is a bustling villiage that sits nestled at the edge of
        the dark forest. There is an udercurrent of tension runing through all here. You see several houses
        and shops here that you should visit.',
        ' WHERE WILL YOU GO?',
        'images/backgrounds/1-1.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),

    ( 2,
        1,
        ' This is the village armoury. There are several forges running with various apprentaces busy at work.
        As you enter the Armourer calls out to you...',
        '',
        'images/backgrounds/1-2.png',
        FALSE,
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    ( 3,
        1,
        'You continue onward into the village and see several more houses and shops. You see a Library, and
        a tavern. You also see a large building that looks like a town hall. There are also several villagers 
        milling around. You should visit one of these places.',
        ' WHERE WILL YOU GO?',
        'images/backgrounds/1-3.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    ( 4,
        1,
        ' This is the tavern. It is the middle of the day so it is relatively quiet. The smell of ale and
        roasting meat fills the air. You see a few patrons sitting at tables, and the barkeep is cleaning
        glasses behind the bar. As you enter, the barkeep looks up and greets you with a grimace...',
        '',
        'images/backgrounds/1-4.png',
        FALSE,
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    ( 5,
        1,
        ' This is the library. There is a strong smell of old books and parchment in the air. Shelves upon
                    shelves of ancient tomes and scrolls line the walls, filled with knowledge from ages past. As you
                    wander around you come across the Librarian...',
        '',
        'images/backgrounds/1-5.png',
        FALSE,
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    ( 6,
        1,
        ' This is the Town Hall. The building is large and imposing, with a large wooden door and stained
                    glass
                    windows. You can see a few villagers milling around outside. As you approach the door, you see a
                    sign that reads "Eldermere Town Hall". You push open the door and step inside to see several
                    military looking figures hunched over a map, as well as what seems to be pair of wizards...',
        '',
        'images/backgrounds/1-6.png',
        FALSE,
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    ( 7,
        1,
        ' After Andrew finishes speaking he leaves the room along with the other military officers. Bee-Yen
                    leads you over to the map...',
        '',
        'images/backgrounds/1-7.png',
        FALSE,
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    ( 8,
        1,
        ' This is the end of the village. You can see a small hut with what seems to be a witch sitting
                    outside. There is also a path leading out of the village.',
        '',
        'images/backgrounds/1-8.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    ( 9,
        1,
        ' You make your way over to the witch. As you approch she turns to look at you before speaking...',
        '',
        'images/backgrounds/1-9.png',
        FALSE,
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    );

INSERT INTO buttonOptions
    (decisionID, buttonID, buttonText, buttonFunction)
VALUES
    (
        1,
        'option_1',
        'CONTINUE INTO VILLAGE',
        '(() => {loadNextDecision(1,3})'
    ),
    (
        1,
        'option_2',
        'THE ARMOURY',
        '(() => {loadNextDecision(1,2)})'
    ),
    (
        1,
        'option_3',
        'LEAVE',
        '(() => {console.log("LEAVE VILLAGE")})'
    ),
    (
        2,
        'option_1',
        'CONTINUE',
        '(() => {showDialogue()})'
    ),
    (
        3,
        'option_1',
        'CONTINUE THROUGH THE VILLAGE',
        '(() => {loadNextDecision(1,8)})'
    ),
    (
        3,
        'option_2',
        'THE LIBRARY',
        '(() => {loadNextDecision(1,5)})'
    ),
    (
        3,
        'option_3',
        'THE TAVERN',
        '(() => {loadNextDecision(1,4)})'
    ),
    (
        3,
        'option_4',
        'THE TOWN HALL',
        '(() => {loadNextDecision(1,6)})'
    ),
    (
        3,
        'option_5',
        'GO BACK',
        '(() => {loadNextDecision(1,1)})'
    ),
    (
        4,
        'option_1',
        'CONTINUE',
        '(() => {showDialogue()})'
    ),
    (
        5,
        'option_1',
        'CONTINUE',
        '(() => {showDialogue()})'
    ),
    (
        6,
        'option_1',
        'CONTINUE',
        '(() => {showDialogue()})'
    ),
    (
        7,
        'option_1',
        'CONTINUE',
        '(() => {showDialogue()})'
    ),
    (
        8,
        'option_1',
        'TALK TO THE WITCH',
        '(() => {loadNextDecision(1,9)})'
    ),
    (
        8,
        'option_2',
        'GO BACK',
        '(() => {loadNextDecision(1,3)})'
    ),
    (
        8,
        'option_3',
        'LEAVE',
        '(() => {console.log("LEAVE VILLAGE")})'
    ),
    (
        9,
        'option_1',
        'TALK TO THE WITCH',
        '(() => {showDialogue()})'
    );



INSERT INTO dialogues
    (id, npcID)
VALUES
    (
        2,
        2
    ),
    (
        4,
        3
    ),
    (
        5,
        7
    ),
    (
        6,
        5
    ),
    (
        7,
        6
    ),
    (
        9,
        4
    );