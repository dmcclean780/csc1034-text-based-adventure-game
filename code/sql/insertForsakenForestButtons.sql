INSERT INTO buttonOptions(id, areaID, buttonID, buttonText, buttonFunction, showCondition)
VALUES
    (1, 5, 'option_1', 'Approach Sphynx', '(()=> {loadNextDecision(5, 2)})', TRUE),
    (1, 5, 'option_2', 'Explore Forest', '(()=> {loadNextDecision(5, 11)})', TRUE),
    (1, 5, 'option_3', 'Leave Forest', '(()=> {goToDeathScreen("Death has come for you")})', TRUE),

    (2, 5, 'option_1', 'Yes', '(()=> {checkState("RIDDLE1_COMPLETE", true, loadNextDecision(5, 4), loadNextDecision(5, 3))})', TRUE),
    (2, 5, 'option_2', 'No', '(()=> {loadNextDecision(5, 1)})', TRUE),

    --NEED TO SELECT ITEM FROM INVENTORY--
    --THEN COMPARE ITEM--
    --NEED TO TRACK CORRECT ANSWERS--
    (3, 5, 'option_1', 'Select Item', '((event)=> {showPopupMenu(event);
                                                changeState("RIDDLE1_COMPLETE", true);})', TRUE),
    (3, 5, 'option_2', 'Explore Forest', '(()=> {loadNextDecision(5, 11)})', TRUE),

    --NEED TO TRACK CORRECT ANSWERS--
    (4, 5, 'option_1', 'Select Item', '((event)=> {showPopupMenu(event);
                                                checkState("RIDDLES_CORRECT", 2, loadNextDecision(5, 7), 
                                                checkState("RIDDLES_CORRECT", 1, loadNextDecision(5, 6), loadNextDecision(5, 5)))})', TRUE),
    (4, 5, 'option_2', 'Explore Forest', '(()=> {loadNextDecision(5, 11)})', TRUE),

    (5, 5, 'option_1', 'Continue', '(()=> {loadNextDecision(5, 8)})', TRUE),

    (6, 5, 'option_1', 'Continue', '(()=> {loadNextDecision(5, 8); addToInventory("RING OF STRENGTH", 1);})', TRUE),

    (7, 5, 'option_1', 'Continue', '(()=> {loadNextDecision(5, 8); addToInventory("RING OF STRENGTH", 1);})', TRUE),

    (8, 5, 'option_1', 'Throw Rocks', '(()=> {goToDeathScreen("You were defeated by the ogre and Death has come for you.")})', 'checkInventory("ROCKS", 1)'),
    (8, 5, 'option_2', 'Use Ring', '(()=> {checkState("RIDDLES_CORRECT", 2, loadNextDecision(5, 10), loadNextDecision(5, 9))})', 'checkInventory("RING OF STRENGTH", 1)'),
    (8, 5, 'option_3', 'Run Away', '(()=> {goToDeathScreen("You were defeated by the ogre and Death has come for you.")})', TRUE),

    --GO TO MAIN MENU--
    (9, 5, 'option_1', 'Continue', '(()=> {removeFromInventory("RING OF STRENGTH", 1)})', TRUE),
    --GO TO MAIN MENU--
    (10, 5, 'option_1', 'Continue', '(()=> {})', TRUE),

    (11, 5, 'option_1', 'The Clearing', '(()=> {loadNextDecision(5, 12)})', TRUE),
    (11, 5, 'option_2', 'The Trees', '(()=> {loadNextDecision(5, 15)})', TRUE),
    (11, 5, 'option_3', 'The River', '(()=> {loadNextDecision(5, 19)})', TRUE),
    (11, 5, 'option_4', 'The Cave', '(()=> {loadNextDecision(5, 20)})', TRUE),
    (11, 5, 'option_5', 'Approach Sphynx', '(()=> {loadNextDecision(5, 2)})', TRUE),

    (12, 5, 'option_1', 'Give Mushrooms', '(()=> {removeFromInventory("MUSHROOMS", 1); loadNextDecision(5, 13);})', 'checkInventory("MUSHROOMS", 1)'),
    (12, 5, 'option_2', 'Give Water Bottle', '(()=> {removeFromInventory("WATER BOTTLE", 1); loadNextDecision(5, 14);})', 'checkInventory("WATER BOTTLE", 1)'),
    (12, 5, 'option_3', 'Explore Forest', '(()=> {loadNextDecision(5, 11)})', TRUE),

    (13, 5, 'option_1', 'Explore Forest', '(()=> {loadNextDecision(5, 11)})', TRUE),

    (14, 5, 'option_1', 'Explore Forest', '(()=> {addToInventory("FLOWER", 1); loadNextDecision(5, 11);})', TRUE),

    (15, 5, 'option_1', 'Climb the tree', '(()=> {loadNextDecision(5, 16)})', TRUE),
    (15, 5, 'option_2', 'Search the roots', '(()=> {loadNextDecision(5, 18)})', TRUE),
    (15, 5, 'option_3', 'Explore Forest', '(()=> {loadNextDecision(5, 11)})', TRUE),

    (16, 5, 'option_1', 'Give Pinecone', '(()=> {removeFromInventory("PINECONE", 1): loadNextDecision(5, 17);})', 'checkInventory("PINECONE", 1)'),
    (16, 5, 'option_2', 'Climb Down', '(()=> {loadNextDecision(5, 15)})', TRUE),

    (17, 5, 'option_1', 'Climb Down', '(()=> {addToInventory("FEATHER", 1); loadNextDecision(5, 15);})', TRUE),

    (18, 5, 'option_1', 'Collect Mushrooms', '((event)=> {disableButton(event); addToInventory("MUSHROOMS", 1);})', TRUE),
    (18, 5, 'option_2', 'Eat Mushrooms', '((event)=> {disableButton(event)})', TRUE),
    (18, 5, 'option_3', 'Collect Pinecone', '(()=> {disableButton(event); addToInventory("PINECONE", 1);})', TRUE),
    (18, 5, 'option_4', 'Search Trees', '(()=> {loadNextDecision(5, 15)})', TRUE),

    (19, 5, 'option_1', 'Collect Water', '((event)=> {disableButton(event); addToInventory("WATER BOTTLE", 1); removeFromInventory("EMPTY BOTTLE", 1);})', 'checkInventory("EMPTY BOTTLE", 1)'),
    (19, 5, 'option_2', 'Drink Water', '((event)=> {disableButton(event)})', TRUE),
    (19, 5, 'option_3', 'Swim in the River', '(()=> {goToDeathScreen("You were attacked and eaten by crocodiles")})', TRUE),
    (19, 5, 'option_4', 'Explore Forest', '(()=> {loadNextDecision(5, 11)})', TRUE),

    (20, 5, 'option_1', 'Collect Rocks', '((event)=> {disableButton(event); addToInventory("ROCKS", 1)})', TRUE),
    (20, 5, 'option_2', 'Pick Up Litter', '(()=> {loadNextDecision(5, 21)})', TRUE),
    (20, 5, 'option_3', 'Explore Forest', '(()=> {loadNextDecision(5, 11)})', TRUE),

    (21, 5, 'option_1', 'Explore Forest', '(()=> {loadNextDecision(5, 11)})', TRUE);
