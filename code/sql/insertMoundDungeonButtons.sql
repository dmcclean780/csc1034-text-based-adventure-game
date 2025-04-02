INSERT INTO buttonOptions(id, areaID, buttonID, buttonText, buttonFunction, showCondition)
VALUES
    (1, 4, 'option_1', 'Go through the crevice.', '(()=> {loadNextDecision(4, 2)})', TRUE),
    (1, 4, 'option_2', 'Inspect the boulder.', '(()=> {loadNextDecision(4, 13)})', TRUE),

    (2, 4, 'option_1', 'Go further into the mound.', '(()=> {loadNextDecision(4, 3)})', TRUE),
    (2, 4, 'option_2', 'Study the floor.', '(()=> {loadNextDecision(4, 14)})', TRUE),

    (3, 4, 'option_1', 'Inspect the boulder.', '(() => {loadNextDecision(4, 4)})', TRUE),
    (3, 4, 'option_2', 'Go down the steps.', '(() => {loadNextDecision(4, 5)})', TRUE),

    (4, 4, 'option_1', 'Go down the steps.', '(() => {loadNextDecision(4, 5)})', TRUE),
    (4, 4, 'option_2', 'Go back and study the floor.', '(() => {loadNextDecision(4, 6)})', TRUE),

    (5, 4, 'option_1', 'Read the diary.', '(() => {loadNextDecision(4, 42)})', TRUE),
    (5, 4, 'option_2', 'Turn back and inspect the boulder.', '(() => {loadNextDecision(4, 4)})', TRUE),
    (5, 4, 'option_3', 'Turn back and study the floor.', '(() => {loadNextDecision(4, 6)})', TRUE),

    (6, 4, 'option_1', 'Inspect the piece of metal.', '((event) => {showPopupMenu(event);
                                                  addToInventory("Pickaxe of Courage", 1);})',
                                                 '(() => {loadNextDecision(4, 7)})', TRUE),

    (7, 4, 'option_1', 'Exit the mound.', '(() =>{loadNextDecision(4, 8)})', TRUE),
    (7, 4, 'option_2', 'Return deeper into the mound.', '(() =>{loadNextDecision(4, 16)})', TRUE),

    (8, 4, 'option_1', 'Use the pickaxe.', '(() => {loadNextDecision(4, 9)})', TRUE),
    (8, 4, 'option_2', 'Headbutt the boulder.','(()=> {goToDeathScreen("Death has claimed you for it&#39;s own")})', TRUE),

    (9, 4, 'option_1', 'Put the accessory on your ear and return to the mound, farther this time.', '(() => {loadNextDecision(4, 10)})', TRUE),
    (9, 4, 'option_2', 'Study the accessory', '(() => {loadNextDecision(4, 17)})', TRUE),

    (10, 4, 'option_1', 'Inspect the boulder.','(() => {loadNextDecision(4, 12)})', TRUE),
    (10, 4, 'option_2', 'Go down the steps.','(() => {loadNextDecision(4, 11)})', TRUE),

    (11, 4, 'option_1', 'Read the diary.', '(() => {loadNextDecision(4, 43)})', TRUE),
    (11, 4, 'option_2', 'Turn back and inspect the boulder.', '(() => {loadNextDecision(4, 12)})', TRUE),

    (12, 4, 'option_1', 'Use the pickaxe.', '(() => {loadNextDecision(4, 18)})', TRUE),

    (13, 4, 'option_1', 'Go through the crevice.', '(() => {loadNextDecision(4, 2)})', TRUE),
    (13, 4, 'option_2', 'Headbutt the boulder.','(()=> {goToDeathScreen("Death has claimed you for it&#39;s own")})', TRUE),

    (14, 4, 'option_1', 'Inspect the piece of metal.', '((event) => {showPopupMenu(event);
                                                  addToInventory("Pickaxe of Courage", 1);
                                                  loadNextDecision(4, 15);})', TRUE),
    (14, 4, 'option_2', 'Go further into the tunnel.', '(() => {loadNextDecision(4, 2)})', TRUE),

    (15, 4, 'option_1', 'Turn back.', '(() => {loadNextDecision(4, 8)})', TRUE),
    (15, 4, 'option_2', 'Go further into the mound.', '(() => {loadNextDecision(4, 10);})', TRUE),

    (16, 4, 'option_1', 'Inspect the boulder.', '(() => {loadNextDecision(4, 12)})', TRUE),
    (16, 4, 'option_2', 'Go down the steps.', '(() => {loadNextDecision(4, 11)})', TRUE),

    (17, 4, 'option_1', 'Put the accessory on your ear and return to the mound, farther this time.', '((event) => {showPopupMenu(event);
                                                  addToInventory("Mysterious Earpiece", 1);})', 
     '(() => {loadNextDecision(4, 10)})', TRUE),

    (18, 4,  'checkInventory("Mysterious Earpiece", 1), == true',
     '((event) => {addToDetails("<br>The device in your ear had whirred into life when the gurgling began")})','option_1', 'Bang your pickaxe against the remants of the boulder.','(() => {loadNextDecision(4, 19)})', TRUE),
    (18, 4, 'option_2', 'Walk further into the room.', '(() => {loadNextDecision(4, 21)})', TRUE),

    (19, 4, 'option_1', 'Bang your pickaxe again.', '(() => {showDialogue()})', TRUE), 

    (20, 4, 'option_1', 'Go further into the chamber.','(() => {showDialogue()})', TRUE), 

    (21, 4, 'option_1', 'Inspect the treasure.', '(() => {loadNextDecision(4, 22)})', TRUE),
    (21, 4, 'option_2', 'Inspect the bones.', '(() => {loadNextDecision(4, 24)})', TRUE),
    (21, 4, 'option_3', 'Inspect the basin.', '(() => {loadNextDecision(4, 26)})', TRUE),

    (22, 4, 'option_1', 'Inspect the bones.', '(() => {loadNextDecision(4, 23)})', TRUE),
    (22, 4, 'option_2', 'Inspect the basin', '(() => {loadNextDecision(4, 26)})', TRUE),

    (23, 4, 'option_1', 'Inspect the basin.', '(() => {loadNextDecision(4, 26)})', TRUE),

    (24, 4, 'option_1', 'Inspect the treasure.',  '(() => {loadNextDecision(4, 25)})', TRUE),
    (24, 4, 'option_2', 'Inspect the basin.',  '(() => {loadNextDecision(4, 26)})', TRUE),
    
    (25, 4, 'option_1', 'Inspect the basin.',  '(() => {loadNextDecision(4, 26)})', TRUE),

    (26, 4, 'option_1', 'A gold coin from the ground.', '(() => {loadNextDecision(4, 27)})', TRUE),
    (26, 4, 'option_2', 'One of the mushrooms.', '(() => {loadNextDecision(4, 29)})', TRUE),
    (26, 4, 'option_3', 'One of the bones.', '(() => {loadNextDecision(4, 28)})', TRUE),

    (27, 4, 'option_1', 'Cry out.',  '(()=> {goToDeathScreen("Death has claimed you for it&#39;s own")})', TRUE),
    (27, 4, 'option_2', 'Cover your head.', '(()=> {goToDeathScreen("Death has claimed you for it&#39;s own")})', TRUE),

    (28, 4, 'option_1', 'Cry out.','(()=> {goToDeathScreen("Death has claimed you for it&#39;s own")})', TRUE),
    (28, 4, 'option_2', 'Cover your head.', '(()=> {goToDeathScreen("Death has claimed you for it&#39;s own")})', TRUE),

    (29, 4, 'option_1', 'Make your way down the passage.',  '(() => {loadNextDecision(4, 30)})', TRUE),

    (30, 4,  '(checkInventory("Mysterious Earpiece", 1) == true)', 'option_1', 'Listen closely.', '(() => {loadNextDecision(4, 31)})', TRUE),
    (30, 4, 'option_2', 'Press further.', '(() => {loadNextDecision(4, 32)})', TRUE),

    (31, 4, 'option_1', 'Go further into the passage.', '(() => {showDialogue()})', TRUE), 

    (32, 4,  '(checkInventory("Mysterious Earpiece", 1) == true)', 'option_1', 'Listen to the gurgling.', '(() => {loadNextDecision(4, 33)})', TRUE),
    (32, 4, 'option_2', 'Walk to the table.', '(() => {loadNextDecision(4, 38)})', TRUE),

    (33, 4, 'option_1', 'Pick up the slabs.', '(() => {showDialogue()})', TRUE), 

    (34, 4, 'option_1', 'Play the game.', '(() => {window.location.href = "DirtMound/dung_M_Pt2CardsGame.html"})', TRUE),

    (35, 4, 'option_1', 'Win game.', '(() => {loadNextDecision(4, 36)})', TRUE),
    (35, 4, 'option_2', 'Lose game.', '(() => {loadNextDecision(4, 37)})', TRUE),

    (36, 4, 'option_1', 'Use your pickaxe to open the hole wider and escape through it.', '(() => {loadNextDecision(4, 1)})', TRUE),

    (37, 4, 'option_1', 'Die.', '(()=> {goToDeathScreen("Death has claimed you for it&#39;s own")})', TRUE),

    (38, 4, 'option_1', 'Pick up the slabs.', '(() => {loadNextDecision(4, 34)})', TRUE),
    (38, 4, 'option_2', 'Refuse to play.', '(() => {loadNextDecision(4, 41)})', TRUE),

    (39, 4, 'option_1', 'Try to get up.', '(()=> {goToDeathScreen("Death has claimed you for it&#39;s own")})', TRUE),
    (39, 4, 'option_2', 'Accept your fate.', '(()=> {goToDeathScreen("Death has claimed you for it&#39;s own")})', TRUE),

    
    (40, 4, 'option_1', 'Cry out in pain.', '(()=> {goToDeathScreen("Death has claimed you for it&#39;s own")})', TRUE),
    (40, 4, 'option_2', 'Accept your fate.', '(()=> {goToDeathScreen("Death has claimed you for it&#39;s own")})', TRUE),
    
    (41, 4, 'option_1', 'Shake your fist at the worm.', '(()=> {goToDeathScreen("Death has claimed you for it&#39;s own")})', TRUE),

    (42, 4, 'option_1', 'Turn back and inspect the boulder.', '(() => {loadNextDecision(4, 4)})', TRUE),
    (42, 4, 'option_2', 'Turn back and study the floor.', '(() => {loadNextDecision(4, 6)})', TRUE),

    
    (43, 4, 'option_1', 'Turn back and inspect the boulder.', '(() => {loadNextDecision(4, 12)})', TRUE);
