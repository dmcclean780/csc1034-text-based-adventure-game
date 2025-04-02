INSERT INTO areas
VALUES
    (7, 'Potentia', 'Coliseum', 2, 5, 6);

INSERT INTO decisions
    (id, areaID, details, prompt, backgroundFilePath, hasTimer, hasPopupMenu, hasDialogue, hasLibraryBook, hasDragDropGame, hasTextEntry, hasButtonOptions, hasSelectInventory)
VALUES
    (
        1,
        7,
        'At last, the entrance to Pandoro’s legendary coliseum. The way is blocked by a shiny, black boulder. No doubt it’s to keep people out, rather than in, Pandoro won’t be stopped by a simple rock in front of a doorway.',
        'Removing this boulder should be easy',
        'images/backgrounds/coliseum_boulder.jpg',
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
        7,
        'The hallway is shadowy; the scent of death hangs thick in the air. Just in range of sight, you spot a small furry creature scurrying for the light of the open doorway. Must’ve escaped the coliseum somehow. It could be a cat, or a dog. Or worse.',
        'Kill the beast before it reaches you?',
        'images/backgrounds/coliseum_corridor.jpg',
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
        7,
        'The creature’s blood has been spilled. It cannot harm anyone in the outside world. Still, it seems a shame to just leave the corpse here. Maybe it could become something more valuable?',
        'Turn the dead creature to gold?',
        'images/backgrounds/coliseum_corridor.jpg',
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
        7,
        'The creature’s body glows warmly with golden light. Some good has come of this encounter after all. Perhaps you can come back for it when you finish with Pandoro. You keep the Midas Glove on, why not see if you can “repurpose” a few more useless things.',
        'Continue down the musty corridor?',
        'images/backgrounds/coliseum_corridor.jpg',
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
        7,
        'The corridor comes to an end, and the coliseum proper opens in a flash of light. Despite being underground, you have no problem seeing. Pandoro is seated in the cubiculum – the best seat in the house. He’s enjoying a gladiator match between two gladiators; one in red, and the other in blue.',
        'Interfere in their fight?',
        'images/backgrounds/coliseum_gladiators.jpg',
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
        7,
        'You leap into action, separating the two warriors with your sword. The sword turns to gold in your hand, you never removed the glove. Upon closer inspection, the gladiators appear human, rather than skeleton. Perhaps they can be reasoned with. Or perhaps you could reason with Pandoro, he surely knows his defeat is soon approaching.',
        'Choose who to plea with',
        'images/backgrounds/coliseum_gladiators.jpg',
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
        7,
        'You tell the warriors that battle is useless, they would be killed off eventually. The only way to freedom is to kill their master, Pandoro. The blue warrior lowers his sword. You turn to the red warrior. After a moment of hesitation, he nods. It feels nice to make friends, for once. A flash of lightning later, however, and your two new buddies are reduced to dust.',
        'Continue?',
        'images/backgrounds/coliseum.jpg',
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
        8,
        7,
        'Strangely, the evil wizard Pandoro wasn’t in the mood for mercy. While you were trying for diplomacy, the two gladiators had closed in on you. They have both raised their swords on opposite sides. You cannot die now!',
        'Evade your death!',
        'images/backgrounds/coliseum_gladiators.jpg',
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
        7,
        'You dodged out of the way just in time. In working together, the gladiators’ managed to end each other’s lives. The red warrior’s head was left separate from his body, and the blue warrior’s heart was broken in a very literal sense of the word. Both bodies slumped to the floor. Now it’s just you and Pandoro…',
        'Continue?',
        'images/backgrounds/coliseum.jpg',
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
        7,
        'Pandoro lifts a small object to the sky, then throws it into the arena below. The object pulses with a darkness before spewing black all around it. A large blob emerges from the shadow. You recognise the opponent, you have faced it before, after all. Ill Ink. You must get to the book to defeat the monster. It bounds towards you, intending to crush you.',
        'Get to the book!',
        'images/backgrounds/coliseum_ill_ink_slime.jpg',
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
        7,
        'You reach the book. It seeps with ill ink. Cleansing it will certainly not be easy, but have dealt with this before. The monster turns, ready to strike you down. This will have to be quick. Looking back at the book, you realise you still have your Midas Glove on. Perhaps there is a quicker way to deal with this…',
        'Destroy the Ill Ink',
        'images/backgrounds/coliseum_ill_ink_book.jpg',
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
        7,
        'As the book turns to gold, the ill ink is turned, too. The book is a threat no longer, and has value to boot! Perhaps all books should be gold… The ink monster fades into shadow.',
        'Continue?',
        'images/backgrounds/coliseum_gold_book.jpg',
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
        13,
        7,
        'A segment of wall is removed, and out charges a great rhino, made entirely of gold. It’s wonderful, gleaming mass charges toward you.',
        'Act now!',
        'images/backgrounds/coliseum_golden_rhino.jpg',
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
        7,
        'You used the Anti-Midas Glove. The golden rhino’s metallic appearance fades, and becomes dust. The gold-lust that was growing in your heart fades too, though until now you didn’t know it was even there.',
        'Continue?',
        'images/backgrounds/coliseum.jpg',
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
        7,
        'The pickaxe struck the earth, and the ground between you and the rhino falls into a deep pit. Unable to stop its immense momentum, the golden rhino charges straight into it. You are safe, but seeing such a large amount of gold fall out of reach hurts your very soul. Seeing his options run out before his eyes; Pandoro casts a green fire out of his staff. It catches on the floor of the arena, somehow. The fire spreads toward you, burning along the very ground you stand upon.',
        'Stop the spreading fire!',
        'images/backgrounds/coliseum.jpg',
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
        7,
        'The gold races along the earth, transforming all into perfection. Your heartbeat increases. The floor, the walls, the ceiling. The very Earth itself is being turned into a most beautiful golden place. Pandoro gives a cry.',
        'Continue?',
        'images/backgrounds/golden_coliseum.jpg',
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
        17,
        7,
        'Before Pandoro can reach you, you grab his staff midair, converting it into a healthy gold. Pandoro starts to speak, but the glowing staff in your hand invites too much power to withhold from using. With just a thought of using it, it could transform all things to gold. This isn’t an opportunity to be missed. Pandoro, mouth still open, kneels with golden light, as does everything, everywhere, for all to see.',
        'Behold the power',
        'images/backgrounds/golden_coliseum.jpg',
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
        7,
        'Before Pandoro can reach you, you seize his arm, converting his whole being to a healthy gold. The staff’s purple fades. As you lift it from his vice-like grip, its glow becomes golden, perfect. With just a single thought of the gold that tugs at your heart strings, it begins to convert everything around you to the beautiful, shiny metal. Is this not all you have ever wanted?',
        'Behold the power',
        'images/backgrounds/golden_coliseum.jpg',
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
        7,
        'You stand amidst a field of gold. The world is yours. Perfect. But it could be more. You could be more. One more touch. Just one. Then you will be perfect, too.',
        'You must join your world. Become gold.',
        'images/backgrounds/golden_coliseum.jpg',
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
        7,
        'No! You cannot be gold! It’ll kill you… won’t it? What’s the point in life anyways, if you can’t achieve perfection. Yes. Better to be perfect in death than flawed in life. Become gold. ',
        'Join the perfection of your new world. Become gold.',
        'images/backgrounds/golden_coliseum.jpg',
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
        7,
        'You watch as the two warriors batter each other with swords, hacking through armour and tearing robes. Eventually, the red-clad warrior wins out, but he bleeds from a gaping wound in his right shoulder. Panting, he notices you. Pandoro, too, notices you. He screams a command to the victorious warrior, who then begins to approach.',
        'Deal with this threat',
        'images/backgrounds/coliseum_red_gladiator.jpg',
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
        7,
        'As you draw your sword, a yellow light glows upon its length. It became gold; you are still wearing the glove of Midas. The red warrior is now upon you, raising his injured arm to strike down with his sword.',
        'Fight back',
        'images/backgrounds/coliseum_red_gladiator.jpg',
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
        7,
        'The red gladiator has now truly earnt his namesake, as his tunic is drenched in the same deep red as his cloak. As he crumbles to the ground, Pandoro stands.',
        'Continue?',
        'images/backgrounds/coliseum.jpg',
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
        24,
        7,
        'It is dead now. Up close, the poor thing doesn’t look overly violent. More like a cat than a monster, could’ve helped with the village’s rat problem. What’s done is done, all you can do is press onward.',
        'Advance?',
        'images/backgrounds/coliseum_corridor.jpg',
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
        7,
        'You allow the creature to continue its course. With relief, you see it scurry past you, toward the sunlight outside. Luckily, it didn’t look harmful, only a large cat, the likes of which might even be welcome at the nearby village. You look onward, down the corridor. There are things far, far worse than a cat down there…',
        'Advance?',
        'images/backgrounds/coliseum_corridor.jpg',
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
        7,
        'The corridor comes to an end, and the coliseum proper opens in a flash of light. Despite being underground, you have no problem seeing. Pandoro is seated in the cubiculum – the best seat in the house. He’s enjoying a gladiator match between two gladiators; one in red, and the other in blue.',
        'Interfere in their fight?',
        'images/backgrounds/coliseum_gladiators.jpg',
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
        7,
        'You leap into action, separating the two warriors with your sword. Upon closer inspection, the gladiators appear human, rather than skeleton. Perhaps they can be reasoned with. Or perhaps you could reason with Pandoro, he surely knows his defeat is soon approaching.',
        'Choose who to plea with',
        'images/backgrounds/coliseum_gladiators.jpg',
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
        7,
        'You tell the warriors that battle is useless, they would be killed off eventually. The only way to freedom is to kill their master, Pandoro. The blue warrior lowers his sword. You turn to the red warrior. After a moment of hesitation, he nods. It feels nice to make friends, for once. A flash of lightning later, however, and your two new buddies are reduced to dust. ',
        'Continue?',
        'images/backgrounds/coliseum.jpg',
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
        29,
        7,
        'Strangely, the evil wizard Pandoro wasn’t in the mood for mercy. While you were trying for diplomacy, the two gladiators had closed in on you. They have both raised their swords on opposite sides. You cannot die now!',
        'Evade your death!',
        'images/backgrounds/coliseum_gladiators.jpg',
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
        7,
        'You dodged out of the way just in time. In working together, the gladiators’ managed to end each other’s lives. The red warrior’s head was left separate from his body, and the blue warrior’s heart was broken in a very literal sense of the word. Both bodies slumped to the floor. Now it’s just you and Pandoro…',
        'Continue?',
        'images/backgrounds/coliseum.jpg',
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
        7,
        'Pandoro lifts a small object to the sky, then throws it into the arena below. The object pulses with a darkness before spewing black all around it. A large blob emerges from the shadow. You recognise the opponent, you have faced it before, after all. Ill Ink. You must get to the book to defeat the monster. It bounds towards you, intending to crush you.',
        'Get to the book!',
        'images/backgrounds/coliseum_ill_ink_slime.jpg',
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
        7,
        'Pandoro doesn’t seem best pleased with you. With a cry he thrusts his staff into the ground, causing the earth itself to shake. A gaping chasm opens between you and him. “I’d like to see you try cleanse this out with a quill!”  As he spoke, the quill glows in your hand. Perhaps some latent power is awaking in it! If you used it on an item, could it swap its use?',
        'Select item to invert',
        'images/backgrounds/coliseum.jpg',
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
        7,
        'You swing the inverted pickaxe at the pit, and the ground in front of you reappears out of thin air. Instead of destroying, the pickaxe now creates! A bridge forward has been made, but it is narrow. Pandoro looks nervous; he releases a rhino of pure gold charging down the length of the bridge behind you. The quill still glows.',
        'Select item to invert',
        'images/backgrounds/coliseum_golden_rhino.jpg',
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
        7,
        'Once again, you rewrite the pickaxe, returning it to its original state. Using it in tandem with the ring of strength, a single blow to the bridge behind you brings the whole structure down, golden rhino and all. You charge on, determined to end this, once and for all. The coliseum wall is scaled easily, using the pickaxe to grab the edge of the wall to hoist yourself up. Now you stand face to face with Pandoro.',
        'Finish this?',
        'images/backgrounds/coliseum_Pandoro.jpg',
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
        35,
        7,
        'You put the pickaxe away and rewrite the Glove of Midas. You turn and face the golden rhino, though it’s momentum will surely kill you if you’re in touching distance. Miraculously, upon reaching your hand, the golden beast is reduced to dust, disappearing in an instant. You charge on, determined to end this, once and for all. The coliseum wall is scaled easily, using the pickaxe to grab the edge of the wall to hoist yourself up. Now you stand face to face with Pandoro.',
        'Finish this?',
        'images/backgrounds/coliseum_Pandoro.jpg',
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
        36,
        7,
        'His eyes begin to spark with a purple glow. He must be destroyed, but maybe it would be nice to hear what he has to say.',
        'Interrupt his speech?',
        'images/backgrounds/coliseum_Pandoro.jpg',
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
        7,
        'A shockwave tears through the arena, and the wizard staggers backward, his staff ripped from his grasp, and into your hands. It feels warm, but its glow flickers, dying. The power that once surged through Pandoro begins to wane, his body suddenly frail, mortal. ',
        'Continue',
        'images/backgrounds/coliseum_Pandoro.jpg',
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
        38,
        7,
        'You watch as the two warriors batter each other with swords, hacking through armour and tearing robes. Eventually, the red-clad warrior wins out, but he bleeds from a gaping wound in his right shoulder. Panting, he notices you. Pandoro, too, notices you. He screams a command to the victorious warrior, who then begins to approach.',
        'Deal with this threat',
        'images/backgrounds/coliseum_red_gladiator.jpg',
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
        7,
        'Hastily, you unsheathe your sword. It has served you well up to this point, let’s hope that doesn’t change anytime soon. The red warrior is now upon you, raising his injured arm to strike down with his sword.',
        'Fight back',
        'images/backgrounds/coliseum_red_gladiator.jpg',
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
        7,
        'Your blade meets its mark; the gladiator has fought his last. Pandoro seems impressed. The gladiators’ bodies fade into dust. You get the feeling this is going to be a very bad day…',
        'Continue?',
        'images/backgrounds/coliseum.jpg',
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
        7,
        'The notion of fighting the ugly, un-golden wizard had almost slipped your mind, as he leaped toward you, staff thrust forward, glowing with a menacing purple light.',
        'Stop his foolish behaviour',
        'images/backgrounds/golden_coliseum.jpg',
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
        7,
        'You reach the book. It seeps with ill ink. Cleansing it will certainly not be easy, but you have dealt with this before. The monster turns, ready to strike you down. This will have to be quick.',
        'Cleanse book',
        'images/backgrounds/coliseum_ill_ink_book.jpg',
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
        7,
        'Dodging the blast of fire, you unsheathe your sword with your Anti-Midas hand, turning it back to steel. You charge, stabbing Pandoro’s chest. Looking him in his eyes, you see his anger shift to despair. His plans have turned to ruin.',
        'Continue?',
        'images/backgrounds/coliseum_Pandoro.jpg',
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
        44,
        7,
        'He looks at your Midas-gloved hand. A flash of smugness grips his face. With an iron grip he grabs your golden hand, turning him to gold. The gold travels up your sword, and turns you, too.',
        'It is done.',
        'images/backgrounds/coliseum_Pandoro.jpg',
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
        45,
        7,
        'As you raise your hands to block the fire, the two gloves touch. The point between the Midas and Anti-Midas gloves becomes both gold and not gold, solid and not solid, there and not there.',
        'Continue?',
        'images/backgrounds/coliseum.jpg',
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
        46,
        7,
        'Reality itself seems to shake. You can no longer see Pandoro, in fact, you can no longer see anything but black. You feel yourself fall into nothing, the world itself fading, screaming. Then, silence. The paradox swallowed the entire coliseum, and all in it.',
        'It is done.',
        'images/backgrounds/2-2.jpg',
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
        47,
        7,
        'No. Killing is not the way. You snap Pandoro’s staff with your sword, and its power dissipates. Pandoro starts to get up, glowing faintly…',
        'Continue?',
        'images/backgrounds/coliseum_Pandoro.jpg',
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
        48,
        7,
        'Pandoro’s entire body is pulsing with a purple light. His expression is one of pure ecstasy, power being absorbed into every cell. He becomes so bright he’d have blinded you if you looked directly at him. ',
        'Continue?',
        'images/backgrounds/coliseum_Pandoro.jpg',
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
        49,
        7,
        'But he cannot hold it. The staff provided a release; a way to siphon his power out of his body. Pandoro explodes in a mesmerising flash of light. In sparing him, you have defeated him. The dark wizard is no more!',
        'It is done.',
        'images/backgrounds/coliseum.jpg',
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
        50,
        7,
        'You use the quill one last time, inverting Pandoro’s twisted staff. It will no longer serve him. His eyes open wide. With only the thought of killing the whimpering wizard, the staff unleashes a blinding light, destroying him instantly. ',
        'Continue?',
        'images/backgrounds/coliseum.jpg',
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
        51,
        7,
        'The sheer power of this magic staff courses through your veins, your very soul becoming bonded to it. This coliseum… it is yours. The magic weapons… yours too. Pandoro was foolish. He could’ve achieved immortality so easily. So easily…',
        'It is done.',
        'images/backgrounds/coliseum.jpg',
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
        52,
        7,
        'You kneel in front of Pandoro and place your hand on his neck. You stab him clean through the chest with your sword, but his eyes remain defiant. A dagger flashes from under his robes, straight across your neck. ',
        'Continue?',
        'images/backgrounds/coliseum_Pandoro.jpg',
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
        53,
        7,
        'You both keel over, and your blood mixes on the stone. Life fading from your body, you are left to wonder if it was enough, or if Pandoro can recover using his magic. As the world fades to black, you hear a faint, hollow laughter, mocking your death. Maybe in another life…',
        'It is done.',
        'images/backgrounds/2-2.jpg',
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
        54,
        7,
        'This staff you hold bears limitless power. Too much can go wrong from using it directly, and who knows if Pandoro can even be killed. Raising both your pickaxe and the staff, they cross. Heat radiates above your head. Pandoro’s fatigue is replaced by a desperate panic.',
        'Continue?',
        'images/backgrounds/coliseum_Pandoro.jpg',
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
        55,
        7,
        'You bring the pick and staff crashing down to the floor. The earth shakes; the coliseum walls shatter, the mountain above caves in. You watch a great boulder descend upon you, burying both you and Pandoro in a great tomb. He is defeated… for now.',
        'It is done.',
        'images/backgrounds/2-2.jpg',
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
        56,
        7,
        'Your fingers tingle as they shine. Gold spreads up your arms, warm, comforting. You are the richest being in the world. You are wealth incarnate. You are… silent. Still.',
        'Continue?',
        'images/backgrounds/golden_coliseum.jpg',
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
        57,
        7,
        'A golden statue stands where you once stood, its expression frozen in triumph and greed. You defeated Pandoro, but at what cost? You are lifeless. The world, too, is lifeless. You have lost.',
        'It is done.',
        'images/backgrounds/golden_coliseum.jpg',
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
        58,
        7,
        'Pandoro leaps into the arena. He throws a great ball of fire from his hand.',
        'Defend yourself!',
        'images/backgrounds/coliseum_Pandoro.jpg',
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
        59,
        7,
        'This moment is crucial.',
        'End this.',
        'images/backgrounds/coliseum_Pandoro.jpg',
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
        60,
        7,
        'You face Pandoro, and attempt to appeal to whatever humanity he may have left.',
        'Continue',
        'images/backgrounds/coliseum.jpg',
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
        61,
        7,
        'You face Pandoro, and attempt to appeal to whatever humanity he may have left.',
        'Continue',
        'images/backgrounds/coliseum.jpg',
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
        62,
        7,
        'You remove the Glove of Midas, this job needs done properly; no tricks.',
        'Destroy the Ill Ink',
        'images/backgrounds/coliseum_ill_ink_book.jpg',
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
        63,
        7,
        '',
        '',
        'images/backgrounds/coliseum_ill_ink_book.jpg',
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        FALSE
    ),
    (
        64,
        7,
        '',
        '',
        'images/backgrounds/coliseum_ill_ink_book.jpg',
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        FALSE
    ),
    (
        65,
        7,
        'You successfully cleansed the book of its ill ink infection.',
        'Continue?',
        'images/backgrounds/coliseum_ill_ink_book.jpg',
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
        66,
        7,
        'You successfully cleansed the book of its ill ink infection.',
        'Continue?',
        'images/backgrounds/coliseum_ill_ink_book.jpg',
        FALSE,
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    )
    
    ;
