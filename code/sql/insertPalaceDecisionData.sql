INSERT INTO areas
    (id, name, rowPosition, colPosition, ableToVisitCondition)
VALUES
    (6, "Palace", 4, 3, TRUE);

INSERT INTO decisions
    (id, areaID, details, prompt, backgroundFilePath, hasTimer, hasPopupMenu, hasDialogue, hasLibraryBook, hasDragDropGame, hasTextEntry, hasButtonOptions)
VALUES
    (
        1,
        6,
        'Before you stands a tall, golden palace. It shines brightly as the sun perfectly reflects its light off of it. A huge door beckons you inside.',
        'ENTER THE PALACE?',
        'images/backgrounds/palace.png',
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
        6,
        'A grand hall stretching for what looks like miles is before you. There are doors leading out of this hall lining the walls. This seems to be the center of the palace. Time to get exploring!',
        'WHAT DIRECTION SHALL YOU TAKE?',
        'images/backgrounds/palace.png',
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
        6,
        'At the end of the hall, there stands a huge golden door. It looks incredibly heavy and sturdy. It also seems to be locked. If only you had the key.',
        'WHAT WILL YOU DO?',
        'images/backgrounds/palace.png',
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
        6,
        'Off to the left of the main hall, there is a door. It appears to be unlocked.',
        'WHAT WILL YOU DO?',
        'images/backgrounds/palace.png',
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
        6,
        'You find yourself in a small room with a chest off to the side. There is a door directly ahead lying open. A sign on the wall opposite the chest reads, "WATCH FOR MIMICS!"',
        'WHAT WILL YOU DO?',
        'images/backgrounds/palace.png',
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
        6,
        'Four chests sit on the floor before you. A sign above them reads, "FIND THE CORRECT CHEST: CHEST 1 IS NOT SAFE, ONE OF THE CHESTS NEXT TO CHEST 3 IS NOT SAFE, THERE ARE NO MORE THAN TWO DANGEROUS CHESTS IN A ROW, CHEST 4 IS NOT NEXT TO THE SAFE CHEST"',
        'WHICH CHEST IS SAFE?',
        'images/backgrounds/palace.png',
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
        6,
        'Inside the chest is a key. You take it and add it to your inventory.',
        '',
        'images/backgrounds/palace.png',
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
        6,
        'Before you is a very plain door, despite being made of gold. It seems to be locked. If only you had a key...',
        'TRY THE DOOR?',
        'images/backgrounds/palace.png',
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
        6,
        'You find yourself in an impossibly large room. It is completely empty except for a chest in the very center. Strangely, the chest and a small area around it are not turned to gold.',
        'OPEN THE CHEST?',
        'images/backgrounds/palace.png',
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
        6,
        'Inside the chest is a gauntlet made of a dark grey metal. You take it and add it to your inventory.',
        '',
        'images/backgrounds/palace.png',
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
        6,
        'Before you looms Midas, the mighty king who has taken over this palace and turned almost all of it to gold. His golden gauntlet, the source of his power, glints and shines in the golden light streaming through the windows of the chamber. In a loud booming voice, he says, "What could you be here for? Leave at once or I shall petrify you in gold. I was sent here to collect riches for my master and I will not disappoint. Away with you now."',
        'WHAT WILL YOU DO?',
        'images/backgrounds/palace.png',
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
        6,
        'Provoked by your challenge, Midas swings down with his gloved hand. If you make any contact wth it, you instantly turn to gold.',
        'WHICH WAY DO YOU DODGE?',
        'images/backgrounds/palace.png',
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        13,
        6,
        'Seeing you dodge further enrages Midas. He slams the floor, leaving a crack in the otherwise perfect golden form. He tries to catch you by going for a backhand.',
        'HOW DO YOU AVOID IT?',
        'images/backgrounds/palace.png',
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        14,
        6,
        'Midas leaves himself open from that last attack and you see a sizeable gap in his armour. This is your chance.',
        'STRIKE?',
        'images/backgrounds/palace.png',
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    ),
    (
        15,
        6,
        'With Midas defeated, the palace and everything in it returns to its original form. Everything that was once a brilliant gold, turned back to a more normal grey concrete. Now, you return to where you came, to continue your adventure.',
        '',
        'images/backgrounds/palace.png',
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
        6,
        '"Are you serious?" Midas says, his voice echoing through the palace. "Don`t you know? One touch of this gauntlet of mine and you will instantly be turned to gold." You pull out the Anti-Midas gauntlet and has face turns pale. "I see," he mutters, "This is why. Very well, I`m not one to back down from a challenge!"',
        'BREAK HIS ARM?',
        'images/backgrounds/palace.png',
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
        6,
        'Suddenly, the chest you opened revealed a mouth full of teeth.
        It`s a mimic!',
        '',
        'images/backgrounds/palace.png',
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
        6,
        'Midas` gauntlet makes contact wth you. You feel a cold, metallic feeling rapidly make its way up your body. Suddenly..',
        '',
        'images/backgrounds/palace.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE
    );