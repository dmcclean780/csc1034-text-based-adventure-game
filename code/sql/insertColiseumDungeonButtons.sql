INSERT INTO buttonOptions(id, areaID, buttonID, buttonText, buttonFunction, showCondition)
VALUES
    (1, 7, 'option_1', 'Use Ring of Strength', '(()=> {loadNextDecision(7, 2)})', TRUE),

    (2, 7, 'option_1', 'Yes, draw sword', '(()=> {loadNextDecision(7, 3)})', TRUE),
    (2, 7, 'option_2', 'No, grant it freedom', '(()=> {loadNextDecision(7, 25)})', TRUE),

    (3, 7, 'option_1', 'Yes', '(()=> {loadNextDecision(7, 4)})', TRUE),
    (3, 7, 'option_2', 'No', '(()=> {loadNextDecision(7, 24)})', TRUE),

    (4, 7, 'option_1', 'Continue', '(()=> {loadNextDecision(7, 5)})', TRUE),

    (5, 7, 'option_1', 'Yes', '(()=> {loadNextDecision(7, 6)})', TRUE),
    (5, 7, 'option_2', 'No', '(()=> {loadNextDecision(7, 21)})', TRUE),

    (6, 7, 'option_1', 'The warriors', '(()=> {loadNextDecision(7, 7)})', TRUE),
    (6, 7, 'option_2', 'Pandoro', '(()=> {loadNextDecision(7, 61)})', TRUE),

    (7, 7, 'option_1', 'Continue', '(()=> {showDialogue()})', TRUE),

    (8, 7, 'option_1', 'Dive to the side', '(()=> {loadNextDecision(7, 9)})', TRUE),
    (8, 7, 'option_2', 'Block with sword', '(()=> {goToDeathScreen("Blocking two blows at once? No wonder you got stabbed in the back...")})', TRUE),

    (9, 7, 'option_1', 'Continue', '(()=> {loadNextDecision(7, 10)})', TRUE),

    (10, 7, 'option_1', 'Dodge left', '(()=> {loadNextDecision(7, 11)})', TRUE),
    (10, 7, 'option_2', 'Dodge right', '(()=> {loadNextDecision(7, 11)})', TRUE),

    (11, 7, 'option_1', 'Use Magic Quill', '(()=> {loadNextDecision(7, 42)})', TRUE),
    (11, 7, 'option_2', 'Use Midas Glove', '(()=> {loadNextDecision(7, 12)})', TRUE),

    (12, 7, 'option_1', 'Continue', '(()=> {showDialogue()})', TRUE),

    (13, 7, 'option_1', 'Use Midas Glove', '(()=> {goToDeathScreen("So you tried to turn a gold rhino... to gold? You&#39;re not very bright, are you?")})', TRUE),
    (13, 7, 'option_2', 'Use Pickaxe', '(()=> {loadNextDecision(7, 15)})', TRUE),
    (13, 7, 'option_3', 'Use Anti-Midas Glove', '(()=> {loadNextDecision(7, 14)})', TRUE),

    (14, 7, 'option_1', 'Continue', '(()=> {showDialogue()})', TRUE),

    (15, 7, 'option_1', 'Try to turn the fire to gold', '(()=> {goToDeathScreen("Did you just put your hand directly into the magic fire? Crazy person...")})', TRUE),
    (15, 7, 'option_2', 'Turn the floor to gold', '(()=> {loadNextDecision(7, 16)})', TRUE),

    (16, 7, 'option_1', 'Continue', '(()=> {showDialogue()})', TRUE),

    (17, 7, 'option_1', 'Gaze in wonder', '(()=> {loadNextDecision(7, 19)})', TRUE),
    (17, 7, 'option_2', 'Gaze in awe', '(()=> {loadNextDecision(7, 19)})', TRUE),

    (18, 7, 'option_1', 'Gaze in wonder', '(()=> {loadNextDecision(7, 19)})', TRUE),
    (18, 7, 'option_2', 'Gaze in awe', '(()=> {loadNextDecision(7, 19)})', TRUE),

    (19, 7, 'option_1', 'Succumb', '(()=> {loadNextDecision(7, 56)})', TRUE),
    (19, 7, 'option_2', 'Resist', '(()=> {loadNextDecision(7, 20)})', TRUE),

    (20, 7, 'option_1', 'Succumb', '(()=> {loadNextDecision(7, 56)})', TRUE),
    (20, 7, 'option_2', 'Resist', '(()=> {loadNextDecision(7, 20)})', TRUE),

    (21, 7, 'option_1', 'Draw sword', '(()=> {loadNextDecision(7, 22)})', TRUE),
    (21, 7, 'option_2', 'Reason with the warrior', '(()=> {goToDeathScreen("Should&#39;ve really done that earlier, before it was 1 on 1.")})', TRUE),

    (22, 7, 'option_1', 'Side-step and strike', '(()=> {loadNextDecision(7, 23)})', TRUE),
    (22, 7, 'option_2', 'Parry and counter', '(()=> {loadNextDecision(7, 23)})', TRUE),

    (23, 7, 'option_1', 'Continue', '(()=> {showDialogue()})', TRUE),

    (24, 7, 'option_1', 'Continue', '(()=> {loadNextDecision(7, 26)})', TRUE),

    (25, 7, 'option_1', 'Continue', '(()=> {loadNextDecision(7, 26)})', TRUE),

    (26, 7, 'option_1', 'Yes', '(()=> {loadNextDecision(7, 27)})', TRUE),
    (26, 7, 'option_2', 'No', '(()=> {loadNextDecision(7, 38)})', TRUE),

    (27, 7, 'option_1', 'The warriors', '(()=> {loadNextDecision(7, 28)})', TRUE),
    (27, 7, 'option_2', 'Pandoro', '(()=> {loadNextDecision(7, 60)})', TRUE),

    (28, 7, 'option_1', 'Continue', '(()=> {showDialogue()})', TRUE),

    (29, 7, 'option_1', 'Dive to the side', '(()=> {loadNextDecision(7, 30)})', TRUE),
    (29, 7, 'option_2', 'Block with sword', '(()=> {goToDeathScreen("Blocking two blows at once? No wonder you got stabbed in the back...")})', TRUE),

    (30, 7, 'option_1', 'Continue', '(()=> {loadNextDecision(7, 31)})', TRUE),

    (31, 7, 'option_1', 'Dodge left', '(()=> {loadNextDecision(7, 42)})', TRUE),
    (31, 7, 'option_2', 'Dodge right', '(()=> {loadNextDecision(7, 42)})', TRUE),

    (32, 7, 'option_1', 'Sword', '(()=> {goToDeathScreen("Upon swinging the anti-sword, you slice yourself. The handle bacame a blade. Just your luck, eh?")})', TRUE),
    (32, 7, 'option_2', 'Pickaxe', '(()=> {loadNextDecision(7, 33)})', TRUE),

    (33, 7, 'option_1', 'Pickaxe', '(()=> {loadNextDecision(7, 34)})', TRUE),
    (33, 7, 'option_2', 'Midas Glove', '(()=> {loadNextDecision(7, 35)})', TRUE),
    (33, 7, 'option_3', 'Use Anti-Midas Glove', '(()=> {loadNextDecision(7, 35)})', TRUE),

    (34, 7, 'option_1', 'Finish this.', '(()=> {showDialogue()})', TRUE),

    (35, 7, 'option_1', 'Finish this.', '(()=> {showDialogue()})', TRUE),

    (36, 7, 'option_1', 'Disarm him', '(()=> {loadNextDecision(7, 37)})', TRUE),
    (36, 7, 'option_2', 'Hear him out', '(()=> {goToDeathScreen("You think you’ve won, but victory is an illusion. You are nothing but a footnote in my legend. A flickering light before the dawn of my eternal reign. Mercy is weakness. Hesitation is death. And you… you are already dead.")})', TRUE),

    (37, 7, 'option_1', 'Continue', '(()=> {showDialogue()})', TRUE),

    (38, 7, 'option_1', 'Draw sword', '(()=> {loadNextDecision(7, 39)})', TRUE),
    (38, 7, 'option_2', 'Reason with warrior', '(()=> {goToDeathScreen("Should&#39;ve really done that earlier, before it was 1 on 1.")})', TRUE),

    (39, 7, 'option_1', 'Side-step and strike', '(()=> {loadNextDecision(7, 40)})', TRUE),
    (39, 7, 'option_2', 'Parry and counter', '(()=> {loadNextDecision(7, 40)})', TRUE),

    (40, 7, 'option_1', 'Continue', '(()=> {loadNextDecision(7, 31)})', TRUE),

    (41, 7, 'option_1', 'Turn the staff to gold', '(()=> {loadNextDecision(7, 17)})', TRUE),
    (41, 7, 'option_2', 'Turn Pandoro to gold', '(()=> {loadNextDecision(7, 18)})', TRUE),

    (42, 7, 'option_1', '(beat ink game)', '(()=> {showDialogue()})', TRUE),
    
    (43, 7, 'option_1', 'Continue', '(()=> {loadNextDecision(7, 44)})', TRUE),
    
    (44, 7, 'option_1', 'Finish', '(()=> {goToEndScreen(1)})', TRUE),
    
    (45, 7, 'option_1', 'Continue', '(()=> {loadNextDecision(7, 46)})', TRUE),
    
    (46, 7, 'option_1', 'Finish', '(()=> {goToEndScreen(1)})', TRUE),
    
    (47, 7, 'option_1', 'Continue', '(()=> {showDialogue()})', TRUE),
    
    (48, 7, 'option_1', 'Continue', '(()=> {loadNextDecision(7, 49)})', TRUE),
    
    (49, 7, 'option_1', 'Finish', '(()=> {goToEndScreen(1)})', TRUE),
    
    (50, 7, 'option_1', 'Continue', '(()=> {loadNextDecision(7, 51)})', TRUE),
    
    (51, 7, 'option_1', 'Finish', '(()=> {goToEndScreen(1)})', TRUE),
    
    (52, 7, 'option_1', 'Continue', '(()=> {loadNextDecision(7, 53)})', TRUE),
    
    (53, 7, 'option_1', 'Finish', '(()=> {goToEndScreen(1)})', TRUE),
    
    (54, 7, 'option_1', 'Continue', '(()=> {loadNextDecision(7, 55)})', TRUE),
    
    (55, 7, 'option_1', 'Finish', '(()=> {goToEndScreen(1)})', TRUE),
    
    (56, 7, 'option_1', 'Continue', '(()=> {loadNextDecision(7, 57)})', TRUE),
    
    (57, 7, 'option_1', 'Finish', '(()=> {goToEndScreen(1)})', TRUE),

    (58, 7, 'option_1', 'Dodge and stab', '(()=> {loadNextDecision(7, 43)})', TRUE),
    (58, 7, 'option_2', 'Block the blow with your gloves', '(()=> {loadNextDecision(7, 45)})', TRUE),

    (59, 7, 'option_1', 'Spare his life', '(()=> {loadNextDecision(7, 47)})', TRUE),
    (59, 7, 'option_2', 'Invert his staff', '(()=> {loadNextDecision(7, 50)})', TRUE),
    (59, 7, 'option_3', 'Use sword', '(()=> {loadNextDecision(7, 52)})', TRUE),
    (59, 7, 'option_4', 'Bury him in his coliseum', '(()=> {loadNextDecision(7, 54)})', TRUE),

    (60, 7, 'option_1', 'Continue?', '(()=> {showDialogue()})', TRUE),

    (61, 7, 'option_1', 'Continue?', '(()=> {showDialogue()})', TRUE),

    (62, 7, 'option_1', '(beat ink game)', '(()=> {showDialogue()})', TRUE)
    ;





