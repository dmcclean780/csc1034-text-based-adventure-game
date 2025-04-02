INSERT INTO areas
VALUES
    (4, 'Potentia', 'DirtMound', 6, 5, 5);

INSERT INTO decisions
    (id, areaID, details, prompt, backgroundFilePath, hasTimer, hasPopupMenu, hasDialogue, hasLibraryBook, hasDragDropGame, hasTextEntry, hasButtonOptions)
VALUES
    (
        1,
        4,
        ' You find yourself at an opening for a huge mound of dirt. You see a crevice that you could fit through.
                        To your right, on the mound, is a boulder. It appears cracked.',
        ' Will you go through the crevice or inspect the boulder?',
        'images/backgrounds/dirtmound1.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        2,
        4,
        '  You squeeze through the crevice and stand up. You appear to be in a tunnel. The tunnel is lit only by the sunlight which pushes through holes in the exterior. ',
        ' Will you go further into the mound or study the floor more closely?',
         'images/backgrounds/dirtmound2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        3,
        4,
        ' You walk further into the tunnel, feeling the icy wind on your back. You find yourself at a crossroads. To your right lies a boulder. You spot cracks running through it. There are steps which plunge downwards into the mound. ',
        ' Which way do you go?',
        'images/backgrounds/dirtmound2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        4,
        4,
        ' The boulder wont budge without a tool. ',
        ' What do you do?',
        'images/backgrounds/dirtmound2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        5,
        4,
        '  You walk down the steps. Abruptly the pathway ends, a wall of fallen dirt blocks the path forward.
                     You find a diary sticking out of the mud.',
        ' Will you read the diary?',
         'images/backgrounds/dirtmound2.png',
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        6,
        4,
        '  You scan the floor and spot a piece of metal sticking up throught the mudded ground.',
        ' What do you do?',
         'images/backgrounds/dirtmound2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        7,
        4,
        ' You pull the metal out of the ground. Its a pickaxe! You pick it up.',
        ' Will you exit the mound or return deeper into the mound?',
         'images/backgrounds/dirtmound2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        8,
        4,
        'You return to the boulder.',
        ' What do you do?',
         'images/backgrounds/dirtmound2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        9,
        4,
        '  You swing the pickaxe and the boulder shatters. You find a small box which had previously been hidden by the boulder. In the box you find a accessory of some sort. It looks like it would fit on your ear. ',
        ' What do you do?',
        'images/backgrounds/dirtmound2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        10,
        4,
        ' You walk further into the tunnel, feeling the icy wind on your back. You find yourself at a crossroads. To your right lies a boulder. You spot cracks running through it. Theres a steps to the right which plunge deeper into the moumd. ',
        ' Which way do you go?',
        'images/backgrounds/dirtmound2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        11,
        4,
        '    You walk down the steps. Abruptly the pathway ends, a wall of fallen dirt blocks the path forward.
                     You find a diary sticking out of the mud.',
        ' Will you read the diary?',
          'images/backgrounds/dirtmound2.png',
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        12,
        4,
        'The boulder wont budge without a tool.',
        'What do you do?',
          'images/backgrounds/dirtmound2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        13,
        4,
        ' You push into the boulder. It strains under the pressure but remains intact - if only you had some sort of tool to break it.',
        ' What do you do?',
         'images/backgrounds/dirtmound2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        14,
        4,
        '  You scan the floor and spot a piece of metal sticking up throught the mudded ground.',
        '  Inspect the piece of metal or go further into the tunnel.',
          'images/backgrounds/dirtmound2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        15,
        4,
        ' You pull the metal out of the ground. Its a pickaxe! You pick it up.',
        '',
         'images/backgrounds/dirtmound2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        16,
        4,
        '   You return deeper into the mound. Will you go down the steps or inspect the boulder?',
        '  Will you go down the steps or inspect the boulder?',
         'images/backgrounds/dirtmound2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        17,
        4,
        ' It looks almost like an earphone, but has an antenna protruding from the top. Perhaps this device will allow you to hear better?',
        ' What do you do?',
        'images/backgrounds/dirtmound2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        18,
        4,
        ' The boulder shatters, the crash echoes through the mound. In response, a gurgling noise resounds through your ears.
                      In front of you, the mound opens up into a large chamber. ',
        ' What do you do?',
          'images/backgrounds/dirtmound3.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        19,
        4,
        'Again, the noise calls in response to the crashing. This time you train your ear and listen closer.
                       The device in your ear seems to translate the noise. ',
        '',
         'images/backgrounds/dirtmound3.png',
        FALSE,
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        20,
        4,
        'Again, the noise calls in response to the crashing. This time you train your ear and listen closer.
                       The device in your ear seems to translate the noise. ',
        'Go further into the mound.',
        'images/backgrounds/dirtmound3.png',
        FALSE,
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        21,
        4,
        '  You walk further into the chamber. Large luminous plants cover the ground and walls, casting an eery glow on the room. Bones lie shattered on the floor, and piles of artificats and treasures lay decaying in the mud.
                       A stone basin stands in the center of the room.',
        ' Which way do you go?',
         'images/backgrounds/dirtmound3.png',
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
         'images/backgrounds/dirtmound3.png',,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        23,
        4,
        '  You walk over to the bones, and reach out to touch them. Suddenly, the worms react viciously and bite into your hand. Clearly, these are no ordinary worms.',
        ' Which way do you go?',
         'images/backgrounds/dirtmound3.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        24,
        4,
        '  You walk over to the bones, and reach out to touch them. Suddenly, the worms react viciously and bite into your hand. Clearly, these are no ordinary worms.',
        '      Which way do you go?',
         'images/backgrounds/dirtmound3.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        25,
        4,
        ' You examine the treasure. Gold coins and fine silverware lay strewn about. Someone - or something - has been collecting these artifacts.
                       You try to pick a bejewelled nicklace from the clutter, but before you can touch it, several worms swarm the necklace and lie menacingly atop in. 
                       Something appears strange about these worms. ',
        ' Which way do you go?',
         'images/backgrounds/dirtmound3.png',
        FALSE,
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
        4,
        '    You walk over to the basin and examine it. The basin is empty. Engraved on the side of the basin is a short riddle.
                      "What kind of room has no doors or windows?"
                      It appears something must be placed in the basin.',
        'What do you put in?',
        'images/backgrounds/dirtmound3.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        27,
        4,
        '  You place the coin in the basin. Suddenly, a terrible sound erupts and the basin crumbles and breaks. The ceiling shakes and collapses.',
        '',
         'images/backgrounds/dirtmound3.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        28,
        4,
        '    You place the bone of the basin. Suddenly, a terrible sound erupts and the basin crumbles and breaks. The ceiling shakes and collapses. ',
        '',
         'images/backgrounds/dirtmound3.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        29,
        4,
        ' A violent noise erupts and the walls behind the basin retreat into the mound, opening up a passage way.',
        '',
         'images/backgrounds/dirtmound3.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        30,
        4,
        'You walk down the passage. A gurgling noise fills the hall.',
        '',
        'images/backgrounds/dirtmound2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        31,
        4,
        ' Using your device, you can just about make out the words. ',
        ' Press further into the passage.',
       'images/backgrounds/dirtmound2.png',
        FALSE,
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        32,
        4,
        '  You reach the end of the passage. A worn, wooden door stand between you and the gurgling now. You open the door and are confronted by the head of a massive worm.
                      Its mouth rests agape, filled with rows of razor sharp teeth. Before it lies a table, with large slabs of engraved stones on top. ',
        '',
       'images/backgrounds/dirtmound4.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        33,
        4,
        ' You listen to the noise the worm makes.',
        '',
        'images/backgrounds/dirtmound4.png',
        FALSE,
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    (
        34,
        4,
        ' Nine slabs lie on the table. Three have boulders engraved on them, three have mushrooms engraved on them, and three have worms engraved on them. You recognise this game, you have played it before.
                      You must memorise the location each card before they are flipped around. You must then select three matching cards.',
        '',
        'images/backgrounds/dirtmound4.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
  (
        35,
        4,
        ' Nine slabs lie on the table. Three have boulders engraved on them, three have mushrooms engraved on them, and three have worms engraved on them. You recognise this game, you have played it before.
                      You must memorise the location each card before they are flipped around. You must then select three cards which have been indicated.',
        '',
       'images/backgrounds/dirtmound4.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
  (
        36,
        4,
        ' The worm is livid it has been beaten. It screeches a terrible sound and thrashes around violently. Suddenly, the walls of dirt and mud start to heave, and begin to crash down.
                      The worm completely absorbed by its own fury is buried by the collapsing structure. The tunnel behind you is now completely blocked off by the falling debris. You spot a ray of light pokin gin through through the wall on your right.',
        'What do you do?',
       'images/backgrounds/dirtmound4.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
  (
        37,
        4,
        ' The worm laughs a gutteral sound, and lunges toward you.',
        'What do you do?',
        'images/backgrounds/dirtmound4.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
  (
        38,
        4,
        ' You reach the table. The worm eyes you with glaring eyes. It indicates to the table. It seems to want to play game. You sense that the worm would be displeased if you refused to play.',
        '',
       'images/backgrounds/dirtmound4.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
  (
        39,
        4,
        ' You turn back and make a dash for the exit. In your haste you trip over a stone and hurtle to the ground, hitting your head on a rock. ',
        '',
        'images/backgrounds/dirtmound4.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),


  (
        40,
        4,
        ' You turn back and make a dash for the exit. The gurgling gets louder and louder. You cant make it out now as the sound reverberates around your skull. Deafening now, your head screams in agony. The sound gets louder and louder... ',
        '',
        'images/backgrounds/dirtmound4.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),


  (
        41,
        4,
        ' You refuse to play the game. The worm rages and lunges forward, sinking its teeth into you. ',
        '',
        'images/backgrounds/dirtmound4.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
  (
        42, 
        4, 
        'You open the diary. Scrawled across its pages is an incoherent mess of words and characters. You notice the words courage and pickaxe being repeated more than any.',
        ' Which way do you go?',
         'images/backgrounds/dirtmound2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE

    ),
  (
        43, 
        4, 
        'You open the diary. Scrawled across its pages is an incoherent mess of words and characters. You notice the words courage and pickaxe being repeated more than any.',
        ' Which way do you go?',
         'images/backgrounds/dirtmound2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE

    );

























