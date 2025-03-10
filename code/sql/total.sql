

CREATE TABLE npcs
(
    id INT
    AUTO_INCREMENT PRIMARY KEY,
	name CHAR
    (20) NOT NULL,
    imageFilePath Char
    (50) NOT NULL,
    firstDialogue TEXT
    (1000) NOT NULL,
    onFirstDialogueEnd TEXT
    (1000) NOT NULL
);

    CREATE TABLE NPCdialogue
    (
        id INT
        AUTO_INCREMENT PRIMARY KEY,
    npcID INT NOT NULL,
    dialogue TEXT
        (1000) NOT NULL,
    onDialogueEnd TEXT
        (1000) NOT NULL,
    
    FOREIGN KEY
        (npcID) REFERENCES npcs
        (id)
);

        CREATE TABLE areas
        (
            id INT NOT NULL PRIMARY KEY,
            name CHAR(20) NOT NULL
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


INSERT INTO npcs (name, imageFilePath, firstDialogue, onFirstDialogueEnd)
VALUES 
	('Ankou', 
    'images/npc/ankou.png', 
    '["Hrrrggghhh…", 
		"Death... Take... Thee... PlayerNameHere...", 
		"Ghhhuuuaaahh…"]',
    "(() => {changeState('ANKOU_HEALTH', 5);
             loadNextDecision(2, 28); })"),

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
    (id, name)
VALUES
    (1, 'Village');

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
    (id, areaID, buttonID, buttonText, buttonFunction, showCondition)
VALUES
    (
        1,
        1,
        'option_1',
        'CONTINUE INTO VILLAGE',
        '(() => {loadNextDecision(1,3)})',
        TRUE
    ),
    (
        1,
        1,
        'option_2',
        'THE ARMOURY',
        '(() => {loadNextDecision(1,2)})',
        TRUE
    ),
    (
        1,
        1,
        'option_3',
        'LEAVE',
        '(() => {console.log("LEAVE VILLAGE")})',
        TRUE
    ),
    (
        2,
        1,
        'option_1',
        'CONTINUE',
        '(() => {showDialogue()})',
        TRUE
    ),
    (
        3,
        1,
        'option_1',
        'CONTINUE THROUGH THE VILLAGE',
        '(() => {loadNextDecision(1,8)})',
        TRUE
    ),
    (
        3,
        1,
        'option_2',
        'THE LIBRARY',
        '(() => {loadNextDecision(1,5)})',
        TRUE
    ),
    (
        3,
        1,
        'option_3',
        'THE TAVERN',
        '(() => {loadNextDecision(1,4)})',
        TRUE
    ),
    (
        3,
        1,
        'option_4',
        'THE TOWN HALL',
        '(() => {loadNextDecision(1,6)})',
        TRUE
    ),
    (
        3,
        1,
        'option_5',
        'GO BACK',
        '(() => {loadNextDecision(1,1)})',
        TRUE
    ),
    (
        4,
        1,
        'option_1',
        'CONTINUE',
        '(() => {showDialogue()})',
        TRUE
    ),
    (
        5,
        1,
        'option_1',
        'CONTINUE',
        '(() => {showDialogue()})',
        TRUE
    ),
    (
        6,
        1,
        'option_1',
        'CONTINUE',
        '(() => {showDialogue()})',
        TRUE
    ),
    (
        7,
        1,
        'option_1',
        'CONTINUE',
        '(() => {showDialogue()})',
        TRUE
    ),
    (
        8,
        1,
        'option_1',
        'TALK TO THE WITCH',
        '(() => {loadNextDecision(1,9)})',
        TRUE
    ),
    (
        8,
        1,
        'option_2',
        'GO BACK',
        '(() => {loadNextDecision(1,3)})',
        TRUE
    ),
    (
        8,
        1,
        'option_3',
        'LEAVE',
        '(() => {console.log("LEAVE VILLAGE")})',
        TRUE
    ),
    (
        9,
        1,
        'option_1',
        'TALK TO THE WITCH',
        '(() => {showDialogue()})',
        TRUE
    );



INSERT INTO dialogues
    (id, areaID, npcID)
VALUES
    (
        2,
        1,
        2
    ),
    (
        4,
        1,
        3
    ),
    (
        5,
        1,
        7
    ),
    (
        6,
        1,
        5
    ),
    (
        7,
        1,
        6
    ),
    (
        9,
        1,
        4
    );

    INSERT INTO areas
    (id, name)
VALUES
    (2, 'Catacombs');

INSERT INTO decisions
    (id, areaID, details, prompt, backgroundFilePath, hasTimer, hasPopupMenu, hasDialogue, hasLibraryBook, hasDragDropGame, hasTextEntry, hasButtonOptions)
VALUES
    (
        1,
        2,
        'As you rise from the ground, you find yourself in a forest glade with a single Carved Stone Door to
        exit via. You can feel your Death calling for your return if you remain.',
        'ENTER THE CATACOMBS?',
        'images/backgrounds/2-1.png',
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        2,
        2,
        'As you enter the door it&#39;s very dark and you cannot see anything. You can feel the wind blowing
        through the cave and you think you can follow the wall of the cave to find a path through',
        'DO YOU WANT TO FOLLOW THE WALL OR THE WIND?',
        'images/backgrounds/2-2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        3,
        2,
        'This chamber is even darker than the last, somehow. As you try to make your way through the darkness,
        you stumble and nearly fall. This chamber contains only a single narrow path over a bottomless chasm.',
        'DO YOU WANT TO TRY AND NAVIGATE THE PATH IN THE DARK?',
        'images/backgrounds/2-3.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        4,
        2,
        'You are back in the first chamber.',
        'TRY FOLLOWING THE WALL FOR ANOTHER CHAMBER',
        'images/backgrounds/2-4.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        5,
        2,
        'There is a shaft of natural light in this chamber and a long dead skeleton. The only way out of this
        chamber is the way you entered.',
        'WHAT DO YOU DO?',
        'images/backgrounds/2-5.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        6,
        2,
        ' There must be something of use in this room if you could only find it.',
        'WHAT DO YOU LOOK AT FIRST?',
        'images/backgrounds/2-6.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        7,
        2,
        'You go back into the first chamber. WWith your lantern lit, you can see an old brazier. You could
                    light it with your lantern.',
        'LIGHT THE BRAZIER?',
        'images/backgrounds/2-7.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        8,
        2,
        'With the brazier now lit you can see the room more clearly. The place you have found yourself in is
                    clearly a catacomb from a bygone era. You notice a crack in the wall that you could squeeze through,
                    as well as the path that you could feel the wind coming from.',
        'WHAT PATH DO YOU WANT TO TAKE?',
        'images/backgrounds/2-8.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        9,
        2,
        ' You squeeze through the crack and find yourself in a small chamber. The crack collapeses closed as
                    soon as you exit. This is an ornate chamber
                    containing a large chest, as well a a finely decorated sarcophagus. You should probably open
                    both. On the otherside of the tomb is an ornate door leading to the next chamber.',
        'WHAT WILL YOU DO?',
        'images/backgrounds/2-9.png',
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        10,
        2,
        ' You pry the lid of the sarcophagus, an empty burial save for an old tome. You decide to take the tome.',
        'WHAT WILL YOU DO?',
        'images/backgrounds/2-10.png',
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        11,
        2,
        ' This chamber is a long corridor lined with sarcophogi on either side. You feel an oppressive chill
                    run through the air and you grip your sword tighter. You should take care when traversing this chamber.',
        'WHAT WILL YOU DO?',
        'images/backgrounds/2-11.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        12,
        2,
        ' As You walk down the corridor the oppressive chill becomes stronger but you 
        continue forward. When you are half way accross the corridorr all of the sarcophogi 
        open and skeletons rise from them. You must fight your way through to the other side',
        'YOU ARE SURROUNDED BY SKELETON WARRIORS.',
        'images/backgrounds/2-12.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        13,
        2,
        'You pry open the lid of the closest sarcophagus and find a skeleton clad in ancient armor. 
        As you leave the sarcophagus all the other sarcophogi open and skeletons rise from them. 
        You must fight your way through to the other side',
        'YOU ARE SURROUNDED BY SKELETON WARRIORS.',
        'images/backgrounds/2-13.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        14,
        2,
        'The melee with the skeleton horde was long and brutal. You fought with all your might and managed to
                    defeat the entire force. However, your sword is nearing its limit, and the weapons of your enemies are
                    not any better. You can now make your way to the end of this corridor and see what lies beyond.',
        '',
        'images/backgrounds/2-14.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        15,
        2,
        'You fight your way over to the rope and take a closer look. It is a thick rope made of hemp and is
                    coated in a thin layer of lubricating oil. You may be able to get it set alight using your lantern
                    although you will have to work quickly before the horde organises.',
        '',
        'images/backgrounds/2-15.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        16,
        2,
        ' You successfully set the rope on fire. The skeletons are crushed under the weight of the chandelier
                    and you are able to pass through the door.',
        '',
        'images/backgrounds/2-16.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE,
        TRUE
    ),
    (
        17,
        2,
        'Still in darkness; you make use of the lantern light to find the exit 
        from this chamber in which the wind is coming from. ',
        'DO YOU ENTER?',
        'images/backgrounds/2-17.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        18,
        2,
        ' As you move into this chamber, the lantern illuminates the path ahead and you can see that there is
                    a thin, wooden bridge that crosses over a chasm that leads much deeper within the catacombs, to
                    where bodies
                    of a different sort lie buried. Making use of your lantern you start traversing the bridge. As you
                    get half way across you notice two skeleton warriors guarding the exit on the other side. They have
                    not noticed you yet. They are too heavily armoured to fight head on, but you may be able to sneak past
                    them if you move quickly and quietly.',
        ' WHAT DO YOU DO?',
        'images/backgrounds/2-18.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        19,
        2,
        ' You drop beneath the bridge and continue on your way, when you reach the end you transition to the
                    edge of the ground and can climb up now. The skeletons have not noticed you yet and you can ignore
                    them and continue into the catacombs.',
        '',
        'images/backgrounds/2-19.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        20,
        2,
        ' You crouch down and start to move slowly across the bridge. When you are nearly there the skeletons
                    see you and charge on to the bridge towards you.',
        'WHAT DO YOU DO?',
        'images/backgrounds/2-20.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        21,
        2,
        ' You are now on the other side of the bridge and the skeletons are still on the bridge. You can cut or burn
                    the bridge to drop them into the chasm',
        'WHAT DO YOU DO?',
        'images/backgrounds/2-21.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        22,
        2,
        ' You cut the bridge with your sword and it collapses into the chasm, 
        taking the skeletons with it. You are now free to continue on your way.',
        '',
        'images/backgrounds/2-22.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        23,
        2,
        ' You burn the bridge with your lantern and it collapses into the chasm, taking the skeletons with it.
                    You are now free to continue on your way.',
        '',
        'images/backgrounds/2-23.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        24,
        2,
        ' You now enter a chamber with a single large door on the wall. The door has an imp carved into it. on
                    either side of the door are statues depicting Death. On one of the other walls is a large verse
                    written in glowing purple script.',
        'WHAT DO YOU DO?',
        'images/backgrounds/2-24.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        25,
        2,
        '  It creeps in silence, pale and cold,<br>
                    A grasp so tight, a tale untold.<br>
                    It steals the breath, It dims the light,<br>
                    It turns the day into endless night.<br>
                    <br>
                    Yet in the dark, a spark may rise,<br>
                    A dancing glow before your eyes.<br>
                    With ember&#39;s heart and golden breath,<br>
                    I turn away the touch of death.<br>
                    <br>
                    What am I?',
        '',
        'images/backgrounds/2-25.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        26,
        2,
        '  After you finish speaking you hear a groan and turn around to see the large door is now open and you
                    can continue. The doorway is pitch black and you cannot see anything ahead. The chill of Death grows
                    stronger as you step through the door.',
        '',
        'images/backgrounds/2-26.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        27,
        2,
        '  You move into the room and you cannot see anything in the oppressive darkness. You can feel the
                    presence of something in the room with you. You can hear the sound of a low rattling breath coming from the
                    center of the room along with the mournful cry of an owl. As you continue forward you see a figure wearing a 
                    large, wide brimmed hat with long ashen hair like straw. He wears a long ragged black robe and has a scythe 
                    strapped to his back. This is Ankou, the henchman of Death. As you approach he turns toward you...',
        '',
        'images/backgrounds/2-27.png',
        FALSE,
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        28,
        2,
        '  Ankou charges at you with his scythe raised high. ',
        'REACT QUICKLY!',
        'images/backgrounds/2-28.png',
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        29,
        2,
        '   You dodge Ankou&#39;s swing and have an opening to strike.. ',
        'WHAT WILL YOU DO?',
        'images/backgrounds/2-29.png',
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        30,
        2,
        'You parry Ankou&#39;s scythe and he stumbles back. You have a moment to catch your breath before he attacks again.',
        'WHAT WILL YOU DO?',
        'images/backgrounds/2-30.png',
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        31,
        2,
        'You have defeated Ankou and the Carved Stone Door opens. You can now escape the catacombs. You take
        the blade of Ankou&#39;s scythe to function as a cutlass to replace your broken sword. The presence of Death leaves the area.',
        '',
        'images/backgrounds/2-31.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        32,
        2,
        'You exit the catacombs to emerge in a forest with a small path leading to a village in the distance.',
        '',
        'images/backgrounds/2-32.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        33,
        2,
        'It is still too dark for you to navigate well in the rest of the cave. You should try to find a way to create a light source.',
        'DO YOU WANT TO LEAVE ANYWAY?',
        'images/backgrounds/2-33.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        34,
        2,
        'You are surrounded by skeleton warriors. They all carry a rusted gladius and wear tarnished suits of
                    Lorica Segmentata. There are too many for you to be able to flee to the otherside of the room. You
                    must defeat them to continue. The bones of your foes look to be brittle and could be broken with
                    your sword. There is also a large chandeler mounted to the ceiling using a rope. It is too thick to cut
                    but perhaps you could destroy it using another method?',
        'WHAT WILL YOU DO?',
        'images/backgrounds/2-34.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    );


INSERT INTO buttonOptions(id, areaID, buttonID, buttonText, buttonFunction, showCondition)
VALUES
    (1, 2, 'option_1', 'YES', '(()=> {loadNextDecision(2, 2)})', TRUE),
    (1, 2, 'option_2', 'NO', '(()=> {goToDeathScreen("Death has claimed you for it&#39;s own")})', TRUE),

    (2, 2, 'option_1', 'FOLLOW WIND', '(()=> {loadNextDecision(2, 3)})', TRUE),
    (2, 2, 'option_2', 'FOLLOW WALL', '(()=> {loadNextDecision(2, 5)})', TRUE),

    (3, 2, 'option_1', 'CONTINUE ONWARD', '(() => {goToDeathScreen("Your Overconfidence in your navigation skills led you to your death")})', TRUE),
    (3, 2, 'option_2', 'FIND ANOTHER WAY', '(() => {loadNextDecision(2, 4)})', TRUE),

    (4, 2, 'option_1', 'FOLLOW WALL', '(() => {loadNextDecision(2, 5)})', TRUE),

    (5, 2, 'option_1', 'LEAVE', '(() => {loadNextDecision(2, 33)})', TRUE),
    (5, 2, 'option_6', 'LOOK AROUND', '(() => {loadNextDecision(2, 6)})', TRUE),

    (33, 2, 'option_1', 'YES', '(() => {loadNextDecision(2, 2)})', TRUE),
    (33, 2, 'option_2', 'NO, LOOK AROUND', '(() => {loadNextDecision(2, 6)})', TRUE),

    (6, 2, 'option_1', 'LOOK AT THE WALLS', '(() => {changeDetails("The walls are smooth, it is not possible to climb them to the natural light above. You should try to find a way to create a light source.")})', TRUE),
    (6, 2, 'option_2', 'LOOK AT THE SKELETON', '((event) => {changeDetails("This used to be a grave robber, he clutches a lantern in his hand. You can take it and use it to light your way.")
                                                        changeButton(event, "TAKE THE LANTERN AND LEAVE", ()=> {loadNextDecision(2, 7)})})', TRUE),
    (6, 2, 'option_3', 'LOOK AT THE FLOOR', '(() => {changeDetails("The floor bears remnants of old ornate tiles that used to lay here. You find remnants of an old campsite")})', TRUE),

    (7, 2, 'option_1', 'YES', '(() => {loadNextDecision(2, 8)})', TRUE),
    (7, 2, 'option_2', 'NO', '(() => {loadNextDecision(2, 17)})', TRUE),

    (8, 2, 'option_1', 'SQUEEZE THROUGH THE CRACK', '(() => {loadNextDecision(2, 9)})', TRUE),
    (8, 2, 'option_2', 'FOLLOW THE WIND', '(() => {loadNextDecision(2, 18)})', TRUE),

    (9, 2, 'option_1', 'OPEN THE CHEST', '((event) => {showPopupMenu(event);
                                                  addToInventory("OIL BOTTLE", 1);
                                                  changeState("CHEST_OPENED", true);})', '(checkState("CHEST_OPENED") == true)'),
    (9, 2, 'option_2', 'OPEN THE SARCOPHAGUS', '(() => {loadNextDecision(2, 10);
                                                        changeState("SARCOPHAGUS_OPENED", true);})', '(checkState("SARCOPHAGUS_OPENED") == true)'),
    (9, 2, 'option_3', 'LEAVE THIS TOMB', '(() => {loadNextDecision(2, 11)})', TRUE),

    (10, 2, 'option_1', 'READ THE TOME', '((event) => {showPopupMenu(event);
                                                  addToInventory("TOME", 1);})', TRUE),
    (10, 2, 'option_2', 'CONTINUE TO LOOK AROUND', '(() => {loadNextDecision(2, 9)})', TRUE),

    (11, 2, 'option_1', 'WALK DOWN THE CORRIDOR', '(() => {loadNextDecision(2, 12)})', TRUE),
    (11, 2, 'option_2', 'INVESTIGAET SARCOPHAGI', '(() => {loadNextDecision(2, 13)})', TRUE),

    (12, 2, 'option_1', 'FIGHT', '(() => {loadNextDecision(2, 34)})', TRUE),

    (13, 2, 'option_1', 'FIGHT', '(() => {loadNextDecision(2, 34)})', TRUE),

    (34, 2, 'option_1', 'ENTER MELEE', '(() => {loadNextDecision(2, 14)})', TRUE),
    (34, 2, 'option_2', 'INVESTIGATE THE ROPE', '(() => {loadNextDecision(2, 15)})', TRUE),

    (14, 2, 'option_1', 'CONTINUE', '(() => {loadNextDecision(2, 24)})', TRUE),

    (15, 2, 'option_1', 'YES', '(() => {loadNextDecision(2, 16)})', TRUE),
    (15, 2, 'option_2', 'NO, ENTER MELEE', '(() => {loadNextDecision(2, 14)})', TRUE),

    (16, 2, 'option_1', 'CONTINUE', '(() => {loadNextDecision(2, 24)})', TRUE),

    (17, 2, 'option_1', 'YES', '(() => {loadNextDecision(2, 18)})', TRUE),
    (17, 2, 'option_2', 'NO, LIGHT THE BRAZIER', '(() => {loadNextDecision(2, 8)})', TRUE),

    (18, 2, 'option_1', 'MOVE ON THE BRIDGE UNDERSIDE', '(() => {loadNextDecision(2, 19)})', TRUE),
    (18, 2, 'option_2', 'CROUCH AND CONTINUE', '(() => {loadNextDecision(2, 20)})', TRUE),

    (19, 2, 'option_1', 'CONTINUE', '(() => {loadNextDecision(2, 24)})', TRUE),

    (20, 2, 'option_1', 'FIGHT', '(() => {goToDeathScreen("The armour of the skeletons was too heavy for you to peirce and you were killed")})', TRUE),
    (20, 2, 'option_2', 'JUMP OVER THE SKELETONS', '(() => {loadNextDecision(2, 21)})', TRUE),

    (21, 2, 'option_1', 'CUT THE BRIDGE', '(() => {loadNextDecision(2, 22)})', TRUE),
    (21, 2, 'option_2', 'BURN THE BRIDGE', '(() => {loadNextDecision(2, 23)})', TRUE),

    (22, 2, 'option_1', 'CONTINUE', '(() => {loadNextDecision(2, 24)})', TRUE),

    (23, 2, 'option_1', 'CONTINUE', '(() => {loadNextDecision(2, 24)})', TRUE),

    (24, 2, 'option_1', 'LOOK AT THE DOOR', '((event) => {addToDetails("<br> The door is sealed shut, prehaps there is a clue of what to do somewhere in this room");
                                                     disableButton(event)})', TRUE),
    (24, 2, 'option_2', 'LOOK AT VERSE', '((event) => {addToDetails(`<br> The verse reads as follows: <br>
                                                                <br>
                                                                It creeps in silence, pale and cold, <br>
                                                                A grasp so tight, a tale untold.<br>
                                                                It steals the breath, I dim the light,<br>
                                                                It turns the day into endless night.<br>
                                                                <br>
                                                                Yet in the dark, a spark may rise,<br>
                                                                A dancing glow before your eyes.<br>
                                                                With ember&#39;s heart and golden breath,<br>
                                                                I turn away the touch of death. <br>
                                                                <br>
                                                                What am I? <br>
                                                                <br>
                                                                Prehaps speaking the answer will open the door`);
                                                  changeButton(event, "ANSWER THE RIDDLE", ()=> {loadNextDecision(2, 25)}) })', TRUE),
    
    (26, 2, 'option_1', 'CONTINUE', '(() => {loadNextDecision(2, 27)})', TRUE),

    (27, 2, 'option_1', 'CONTINUE', '(() => {showDialogue()})', TRUE),

    (28, 2, 'option_1', 'DODGE LEFT', '(() => {loadNextDecision(2, 29)})', TRUE),
    (28, 2, 'option_2', 'PARRY', '(() => {loadNextDecision(2, 30)})', TRUE),
    (28, 2, 'option_3', 'DODGE RIGHT', '(() => {loadNextDecision(2, 29)})', TRUE),

    (29, 2, 'option_1', 'STRIKE', '(() => {decreaseStateVariable("ANKOU_HEALTH", 1);
                                           checkState("ANKOU_HEALTH", 0, () => {loadNextDecision(2, 31)}, () => {loadNextDecision(2, 28)})
                                           })', TRUE),

    (29, 2, 'option_2', 'USE OIL TO SET BLADE ON FIRE', 
    '(() => {removeFromInventory("OIL_BOTTLE", 1);
                decreaseStateVariable("ANKOU_HEALTH", 2);
            })', 
    '(checkInventory("OIL_BOTTLE", 1) == "true")'),

    (30, 2, 'option_1', 'STRIKE', 
    '(() => {decreaseStateVariable("ANKOU_HEALTH", 1);
                checkState("ANKOU_HEALTH", 0, () => {loadNextDecision(2, 31)}, () => {loadNextDecision(2, 28)})
            })', 
            TRUE),
    (30, 2, 'option_2', 'USE OIL TO SET BLADE ON FIRE', '(() => {removeFromInventory("OIL_BOTTLE", 1);
                                           decreaseStateVariable("ANKOU_HEALTH", 2);
                                           })', '(checkInventory("OIL_BOTTLE", 1) == "true")'),

    (31, 2, 'option_1', 'CONTINUE', '(() => {loadNextDecision(2, 32)})', TRUE),

    (32, 2, 'option_1', 'GO TO THE VILLAGE', '(() => {loadNextDecision(1, 1)})', TRUE);








INSERT INTO timerBars(id, areaID, duration, onComplete)
VALUES
    (1, 2, 30, '(()=>{goToDeathScreen("Indescision allowed Death to renew it&#39;s claim on You")})'),
    (27, 2, 5, '(()=>{goToDeathScreen("You were unable to dodge the Ankou&#39;s attack and were slain")})'),
    (28, 2, 5, '(()=>{loadNextDecision(2,27)})'),
    (29, 2, 5, '(()=>{loadNextDecision(2,27)})');

INSERT INTO popupMenus(id, areaID, contentType, content, contentTitle)
VALUES
    (9, 2, 'list', 'Gold x100, Jar of Oil x1', 'Chest Contents'),
    (10, 2, 'text', 'THE TEXT CONTENT OF THE OLD TOME', 'Old Tome');

INSERT INTO textEntries(id, areaID, correctAnswer, onCorrect, onIncorrect)
VALUES 
    (25, 2, 'fire', '(()=> {loadNextDecision(2, 26)})', '(()=> {changePrompt("Incorrect. Try again.")})')

INSERT INTO dragDropGames(id, areaID, noDragItems, dragItemsImg, timeLimit, onFail, title, backgroundStyle)
VALUES
    (
        16,
        2,
        5,
        'images/items/fire.png',
        20,
        '(() => {goToDeathScreen("As you attempt to set fire to the rope, skeletons overwhelm you and you are killed.")})',
        'Set the rope on Fire',
        'background-color: rgba(200, 175, 100, 1);
        background: linear-gradient(210deg, rgba(200, 175, 100, 1) 45%, rgba(56, 36, 16, 0.75) 45%, rgba(56, 36, 16, 0.75) 55%, rgba(200, 175, 100, 1) 55%);
        clip-path: circle(60% at 50% 50%);'
    );

INSERT INTO dialogues
    (id, areaID, npcID)
VALUES
    (
        27,
        2,
        1
    );









