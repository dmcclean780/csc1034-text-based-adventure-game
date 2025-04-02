

INSERT INTO areas VALUES
    (5, 'Potentia', 'Forsaken Forest', 2, 3, 2);

INSERT INTO decisions
    (id, areaID, details, prompt, backgroundFilePath, hasTimer, hasPopupMenu, hasDialogue, hasLibraryBook, hasDragDropGame, hasTextEntry, hasButtonOptions, hasSelectInventory)
VALUES
    (
        1,
        5,
        'An evil ogre has taken over the forest and is threatening the creatures within.
        You must banish the ogre from the forest and restore peace.
        There is a powerful sphynx in the forest who will help you on your quest.',
        '',
        'images/backgrounds/forest.png',
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
        5,
        'You approach the sphynx.
        The sphynx will ask you two riddles and you must present her with items.
        She will use these items to help her create a weapon for you to defeat the ogre with.
        But beware, if you present her with the wrong items, your weapon will be weakened.',
        'Continue?',
        'images/backgrounds/forest-sphynx.png',
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
        5,
        '&quot;Your first riddle:
        I dance in the wind but never walk,
        I help you write but never talk.
        Light as air, yet I can fall,
        What am I, can you recall?&quot;',
        '',
        'images/backgrounds/forest-sphynx.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        TRUE
    ),
    (
        4,
        5,
        '&quot;Your second riddle:
        I start as a seed, so small and round,
        Yet in silence, I break through the ground.
        Though I do not speak, I can say so much,
        A gift of love, a healing touch.
        What am I?&quot;',
        '',
        'images/backgrounds/forest-sphynx.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        TRUE
    ),
    (
        5,
        5,
        'The sphynx has nothing to offer you.
        Good luck facing the ogre.',
        '',
        'images/backgrounds/forest-sphynx.png',
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
        5,
        'The sphynx presents you with a ring that will grant you incredible power and strength.
        But beware, you can only use it once.
        Good luck facing the ogre.',
        '',
        'images/backgrounds/forest-sphynx.png',
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
        5,
        'The sphynx presents you with a ring that will grant you incredible strength and power.
        Good luck facing the ogre.',
        '',
        'images/backgrounds/forest-sphynx.png',
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
        5,
        'You approach the ogre, ready to fight.
        He spots you and charges towars you.',
        'What do you do?',
        'images/backgrounds/forest-ogre.png',
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
        9,
        5,
        'Congratulations! You defeated the ogre!
        The forest creatures will be forever grateful.
        Unfortunately your ring of strength broke in your battle with the ogre.
        Good luck continuing your quest.',
        '',
        'images/backgrounds/forest.png',
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
        5,
        'Congratulations! You defeated the ogre!
        The forest creatures will be forever grateful.
        Fortunately you still have your ring of strength. Use it wisely, it will serve you well in your future battles.
        Good luck continuing your quest.',
        '',
        'images/backgrounds/forest.png',
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
        5,
        'You decide to explore the forest.
        Where would you like to search?',
        '',
        'images/backgrounds/forest.png',
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
        5,
        'You enter the clearing.
        In the centre there is a gnome.
        &quot;Welcome!
        You must be the hero here to save us from that evil ogre.
        Can you help us?&quot;',
        '',
        'images/backgrounds/forest-gnome.png',
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
        5,
        '&quot;Thank you!
        These will go great with dinner!&quot;',
        '',
        'images/backgrounds/forest-gnome.png',
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
        14,
        5,
        '&quot;Thank you!
        We haven&apos;t had access to water here in the forest since crocodiles took over the lake.
        I will use this to water my plants.
        Here!
        Take this with you, it may come in useful.&quot;
        The gnome presents you with a flower. You take it with you.',
        '',
        'images/backgrounds/forest-gnome.png',
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
        15,
        5,
        'As you walk through the trees, one in particular stands out.
        It looks taller and older than all the rest.
        You decide to investigate the tree further.',
        'What would you like to do?',
        'images/backgrounds/forest-tree.png',
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
        5,
        'You carefully climb up the tree.
        Perched on the top branch is a great brown owl.
        However, everytime you get close to him, he snaps his beak at you.',
        'What would you like to do?',
        'images/backgrounds/forest-owl.png',
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
        5,
        'You offer the owl a pinecone.
        He takes it from you and adds it to his nest.
        To thank you, he gives you one of his finest feathers.
        You take it with you. It could be useful later.',
        '',
        'images/backgrounds/forest-owl.png',
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
        5,
        'You decide to search the roots of the tree.
        There is a small cluster of mushrooms growing at the base of the tree.
        There is also a pinecone lying near the roots.',
        'What would you like to do?',
        'images/backgrounds/forest-tree.png',
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
        5,
        'There is a twisting river that runs through the forest.
        You decide to walk down to its banks to get a closer look.',
        '',
        'images/backgrounds/forest-river.png',
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
        5,
        'You decide to investigate a nearby cave.
        There are rocks of all shapes and sizes scattered on the ground of the cave.
        There is also a lot of litter on the ground that the locals must have left here.',
        '',
        'images/backgrounds/forest-cave.png',
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
        5,
        'You pick up the litter.
        Thank you for helping the environment!
        Among the litter you find an empty water bottle.
        You take it with you, it could come in useful later.',
        '',
        'images/backgrounds/forest-cave.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    );