INSERT INTO areas
    (id, name, rowPosition, colPosition, ableToVisitCondition)
VALUES
    (2, 'Catacombs', 2, 1, FALSE);

INSERT INTO decisions
    (id, areaID, details, prompt, backgroundFilePath, hasTimer, hasPopupMenu, hasDialogue, hasLibraryBook, hasDragDropGame, hasTextEntry, hasButtonOptions, hasSelectInventory)
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
    ),
    (
        18,
        2,
        'As you move into this chamber, the lantern illuminates the path ahead and you can see that there is
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        FALSE,
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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
        TRUE,
        FALSE
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









