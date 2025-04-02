INSERT INTO areas
VALUES
    (1, 'Potentia', 'Village', 3, 2, 5);

INSERT INTO decisions
    (id, areaID, details, prompt, backgroundFilePath, hasTimer, hasPopupMenu, hasDialogue, hasLibraryBook, hasDragDropGame, hasTextEntry, hasButtonOptions, hasSelectInventory)
VALUES
    ( 1,
        1,
        'Welcome to the village of Eldermere. This is a bustling villiage that sits nestled at the edge of
        the dark forest. There is an undercurrent of tension runing through all here. You see several houses
        and shops here that you should visit.',
        ' WHERE WILL YOU GO?',
        'images/backgrounds/1-1.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
    ),
    ( 7,
        1,
        ' After Andrew finishes speaking he leaves the room along with the other military officers. Bee-Yen
                    leads you over to the map...',
        '',
        'images/backgrounds/1-6.png',
        FALSE,
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        '(() => {goToMap()})',
        '(getState("townHallVisited") == true)'
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
        '(() => {changeState("townHallVisited", 1);loadNextDecision(1,6)})',
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
        '(() => {goToMap()})',
        '(getState("townHallVisited") == true)'
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