INSERT INTO areas
    (id, name)
VALUES
    (4, 'DirtMound');

INSERT INTO decisions
    (id, areaID, details, prompt, backgroundFilePath, hasTimer, hasPopupMenu, hasDialogue, hasLibraryBook, hasDragDropGame, hasTextEntry, hasButtonOptions)
VALUES
    (
        1,
        4,
        ' You find yourself at an opening for a huge mound of dirt. You see a crevice that you could fit through.
                        To your right, on the mound, is a boulder. It appears cracked.',
        ' Will you go through the crevice or inspect the boulder?',
        'images/backgrounds/2-1.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        2,
        4,
        '  You squeeze through the crevice and stand up. You appear to be in a tunnel. The tunnel is lit only by the sunlight which pushes through holes in the exterior. ',
        ' Will you go further into the mound or study the floor more closely?' 
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
        4,
        ' You walk further into the tunnel, feeling the icy wind on your back. You find yourself at a crossroads. To your right lies a boulder. You spot cracks running through it. There are steps which plunge downwards into the mound. ',
        ' Which way do you go?',
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
        4,
        ' The boulder wont budge without a tool. ',
        ' What do you do?',
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
        4,
        '  You walk down the steps. Abruptly the pathway ends, a wall of fallen dirt blocks the path forward.
                     You find a diary sticking out of the mud.',
        ' Will you read the diary?',
        'images/backgrounds/2-5.png',
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        6,
        4,
        '  You scan the floor and spot a piece of metal sticking up throught the mudded ground.',
        ' What do you do?',
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
        4,
        ' You pull the metal out of the ground. Its a pickaxe! You pick it up.',
        ' Will you exit the mound or return deeper into the mound?',
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
        4,
        'You return to the boulder.',
        ' What do you do?',
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
        4,
        '  You swing the pickaxe and the boulder shatters. You find a small box which had previously been hidden by the boulder. In the box you find a accessory of some sort. It looks like it would fit on your ear. ',
        ' What do you do?',
        'images/backgrounds/2-9.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        10,
        4,
        ' You walk further into the tunnel, feeling the icy wind on your back. You find yourself at a crossroads. To your right lies a boulder. You spot cracks running through it. Theres a steps to the right which plunge deeper into the moumd. ',
        ' Which way do you go?',
        'images/backgrounds/2-10.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        11,
        4,
        '    You walk down the steps. Abruptly the pathway ends, a wall of fallen dirt blocks the path forward.
                     You find a diary sticking out of the mud.',
        ' Will you read the diary?',
        'images/backgrounds/2-11.png',
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        12,
        4,
        'The boulder wont budge without a tool.',
        'What do you do?'
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
        4,
        ' You push into the boulder. It strains under the pressure but remains intact - if only you had some sort of tool to break it.',
        ' What do you do?',
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
        4,
        '  You scan the floor and spot a piece of metal sticking up throught the mudded ground.',
        '  Inspect the piece of metal or go further into the tunnel.',
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
        4,
        ' You pull the metal out of the ground. Its a pickaxe! You pick it up.',
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
        4,
        '   You return deeper into the mound. Will you go down the steps or inspect the boulder?',
        '  Will you go down the steps or inspect the boulder?',
        'images/backgrounds/2-16.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        17,
        4,
        ' It looks almost like an earphone, but has an antenna protruding from the top. Perhaps this device will allow you to hear better?',
        ' What do you do?',
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
        4,
        ' The boulder shatters, the crash echoes through the mound. In response, a gurgling noise resounds through your ears.
                      In front of you, the mound opens up into a large chamber. ',
        ' What do you do?',
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
        4,
        'Again, the noise calls in response to the crashing. This time you train your ear and listen closer.
                       The device in your ear seems to translate the noise. 
                       "...Is ...someone... THERE?" ',
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
        4,
        'Again, the noise calls in response to the crashing. This time you train your ear and listen closer.
                       The device in your ear seems to translate the noise. 
                       "...Who goes there? Who dares to enter this domain? Turn back now before my patience is tested!" ',
        ' Will you flee or go further into the chamber?',
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
        4,
        '  You walk further into the chamber. Large luminous plants cover the ground and walls, casting an eery glow on the room. Bones lie shattered on the floor, and piles of artificats and treasures lay decaying in the mud.
                       A stone basin stands in the center of the room.',
        ' Which way do you go?',
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
        4,
        '   You examine the treasure. Gold coins and fine silverware lay strewn about. Someone - or something - has been collecting these artifacts.
                       You try to pick a bejewelled nicklace from the clutter, but before you can touch it, several worms swarm the necklace and lie menacingly atop in. 
                       Something appears strange about these worms. ',
        'What do you do?',
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
        4,
        '  You walk over to the bones, and reach out to touch them. Suddenly, the worms react viciously and bite into your hand. Clearly, these are no ordinary worms.',
        ' Which way do you go?',
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
        4,
        '  You walk over to the bones, and reach out to touch them. Suddenly, the worms react viciously and bite into your hand. Clearly, these are no ordinary worms.',
        '      Which way do you go?',
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
        4,
        ' You examine the treasure. Gold coins and fine silverware lay strewn about. Someone - or something - has been collecting these artifacts.
                       You try to pick a bejewelled nicklace from the clutter, but before you can touch it, several worms swarm the necklace and lie menacingly atop in. 
                       Something appears strange about these worms. ',
        ' Which way do you go?',
        'images/backgrounds/2-25.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        26,
        4,
        '     You walk over to the basin and examine it. The basin is empty. Engraved on the four sides of the basin are stones slabs with symbols. 
                      The first is engraved with a crescent moon, the second; a cauldron, the third; a leaf; and the fourth; a loaf of bread.
                      It appears something must be placed in the basin.',
        'What do you put in?',
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
        4,
        '  You place the coin in the basin. Suddenly, a terrible sound erupts and the basin crumbles and breaks. The ceiling shakes and collapses.',
        '',
        'images/backgrounds/2-27.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        28,
        4,
        '    You place the bone of the basin. Suddenly, a terrible sound erupts and the basin crumbles and breaks. The ceiling shakes and collapses. ',
        '',
        'images/backgrounds/2-28.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        29,
        4,
        ' A violent noise erupts and the walls behind the basin retreat into the mound, opening up a passage way.',
        '',
        'images/backgrounds/2-29.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        30,
        4,
        'You walk down the passage. A gurgling noise fills the hall.',
        '',
        'images/backgrounds/2-30.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        31,
        4,
        ' Using your device, you can just about make out the words.
                       "...This insolence will not go unpunished! You have lost your chance to run, now you must face me!" ',
        '  Will you try to run or press further into the passage?',
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
        4,
        '  You reach the end of the passage. A worn, wooden door stand between you and the gurgling now. You open the door and are confronted by the head of a massive worm.
                      Its mouth rests agape, filled with rows of razor sharp teeth. Before it lies a table, with large slabs of engraved stones on top. ',
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
        4,
        ' You listen to the noise the worm makes.
                       "...Pick up the cards, and prove that you are worthy to face me! Win and I might let you go, lose and you will feed the worms!"',
        '',
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
        4,
        ' Nine slabs lie on the table. Three have boulders engraved on them, three have mushrooms engraved on them, and three have worms engraved on them. You recognise this game, you have played it before.
                      You must memorise the location each card before they are flipped around. You must then select three matching cards.',
        '',
        'images/backgrounds/2-34.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    );
  (
        35,
        4,
        ' Nine slabs lie on the table. Three have boulders engraved on them, three have mushrooms engraved on them, and three have worms engraved on them. You recognise this game, you have played it before.
                      You must memorise the location each card before they are flipped around. You must then select three cards which have been indicated.',
        '',
        'images/backgrounds/2-34.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    );
  (
        36,
        4,
        ' The worm is livid it has been beaten. It screeches a terrible sound and thrashes around violently. Suddenly, the walls of dirt and mud start to heave, and begin to crash down.
                      The worm completely absorbed by its own fury is buried by the collapsing structure. The tunnel behind you is now completely blocked off by the falling debris. You spot a ray of light pokin gin through through the wall on your right.',
        'What do you do?',
        'images/backgrounds/2-34.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    );
  (
        37,
        4,
        ' The worm laughs a gutteral sound, and lunges toward you.',
        'What do you do?',
        'images/backgrounds/2-34.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    );
  (
        38,
        4,
        ' You reach the table. The worm eyes you with glaring eyes. It indicates to the table. It seems to want to play game. You sense that the worm would be displeased if you refused to play.',
        '',
        'images/backgrounds/2-34.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    );
  (
        39,
        4,
        ' You turn back and make a dash for the exit. In your haste you trip over a stone and hurtle to the ground, hitting your head on a rock. ',
        '',
        'images/backgrounds/2-34.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    );


  (
        40,
        4,
        ' You turn back and make a dash for the exit. The gurgling gets louder and louder. You cant make it out now as the sound reverberates around your skull. Deafening now, your head screams in agony. The sound gets louder and louder... ',
        '',
        'images/backgrounds/2-34.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    );


  (
        41,
        4,
        ' You refuse to play the game. The worm rages and lunges forward, sinking its teeth into you. ',
        '',
        'images/backgrounds/2-34.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    );




















