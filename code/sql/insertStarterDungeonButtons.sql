INSERT INTO buttonOptions(id, areaID, buttonID, buttonText, buttonFunction, showCondition)
VALUES
    (1, 2, 'option_1', 'YES', '(()=> {loadNextDecision(2, 2)})', TRUE),
    (1, 2, 'option_2', 'NO', '(()=> {goToDeathScreen("Death has claimed you for it&#39;s own")})', TRUE),

    (2, 2, 'option_1', 'FOLLOW WIND', '(()=> {loadNextDecision(2, 3)})', TRUE),
    (2, 2, 'option_2', 'FOLLOW WALL', '(()=> {loadNextDecision(2, 5)})', TRUE),

    (3, 2, 'option_1', 'CONTINUE ONWARD', '(() => {goToDeathScreen("Your Overconfidence in your navigation skills led you to your death")})', TRUE),
    (3, 2, 'option_2', 'FIND ANOTHER WAY', '(() => {loadNextDecision(2, 4)})', TRUE),

    (4, 2, 'option_1', 'FOLLOW WALL', '(() => {loadNextDecision(2, 5)})', TRUE),

    (5, 2, 'option_1', 'LEAVE', '(() => {loadNextDecision(2, 33)})', TRUE),
    (5, 2, 'option_6', 'LOOK AROUND', '(() => {loadNextDecision(2, 6)})', TRUE),

    (33, 2, 'option_1', 'YES', '(() => {loadNextDecision(2, 2)})', TRUE),
    (33, 2, 'option_2', 'NO, LOOK AROUND', '(() => {loadNextDecision(2, 6)})', TRUE),

    (6, 2, 'option_1', 'LOOK AT THE WALLS', '(() => {changeDetails("The walls are smooth, it is not possible to climb them to the natural light above. You should try to find a way to create a light source.")})', TRUE),
    (6, 2, 'option_2', 'LOOK AT THE SKELETON', '((event) => {changeDetails("This used to be a grave robber, he clutches a lantern in his hand. You can take it and use it to light your way.")
                                                        changeButton(event, "TAKE THE LANTERN AND LEAVE", ()=> {loadNextDecision(2, 7)})})', TRUE),
    (6, 2, 'option_3', 'LOOK AT THE FLOOR', '(() => {changeDetails("The floor bears remnants of old ornate tiles that used to lay here. You find remnants of an old campsite")})', TRUE),

    (7, 2, 'option_1', 'YES', '(() => {loadNextDecision(2, 8)})', TRUE),
    (7, 2, 'option_2', 'NO', '(() => {loadNextDecision(2, 17)})', TRUE),

    (8, 2, 'option_1', 'SQUEEZE THROUGH THE CRACK', '(() => {loadNextDecision(2, 9)})', TRUE),
    (8, 2, 'option_2', 'FOLLOW THE WIND', '(() => {loadNextDecision(2, 18)})', TRUE),

    (9, 2, 'option_1', 'OPEN THE CHEST', '((event) => {showPopupMenu(event);
                                                  addToInventory("OIL BOTTLE", 1);
                                                  changeState("CHEST_OPENED", true);})', '(getState("CHEST_OPENED") == "false")'),
    (9, 2, 'option_2', 'OPEN THE SARCOPHAGUS', '(() => {loadNextDecision(2, 10);
                                                        changeState("SARCOPHAGUS_OPENED", true);})', '(getState("SARCOPHAGUS_OPENED") == "false")'),
    (9, 2, 'option_3', 'LEAVE THIS TOMB', '(() => {loadNextDecision(2, 11)})', TRUE),

    (10, 2, 'option_1', 'READ THE TOME', '((event) => {showPopupMenu(event);
                                                  addToInventory("TOME", 1);})', TRUE),
    (10, 2, 'option_2', 'CONTINUE TO LOOK AROUND', '(() => {loadNextDecision(2, 9)})', TRUE),

    (11, 2, 'option_1', 'WALK DOWN THE CORRIDOR', '(() => {loadNextDecision(2, 12)})', TRUE),
    (11, 2, 'option_2', 'INVESTIGATE SARCOPHAGI', '(() => {loadNextDecision(2, 13)})', TRUE),

    (12, 2, 'option_1', 'FIGHT', '(() => {loadNextDecision(2, 34)})', TRUE),

    (13, 2, 'option_1', 'FIGHT', '(() => {loadNextDecision(2, 34)})', TRUE),

    (34, 2, 'option_1', 'ENTER MELEE', '(() => {loadNextDecision(2, 14);})', TRUE),
    (34, 2, 'option_2', 'INVESTIGATE THE ROPE', '(() => {loadNextDecision(2, 15)})', TRUE),

    (14, 2, 'option_1', 'CONTINUE', '(() => {loadNextDecision(2, 24)})', TRUE),

    (15, 2, 'option_1', 'YES', '(() => {loadNextDecision(2, 16)})', TRUE),
    (15, 2, 'option_2', 'NO, ENTER MELEE', '(() => {loadNextDecision(2, 14);})', TRUE),

    (16, 2, 'option_1', 'CONTINUE', '(() => {loadNextDecision(2, 24)})', TRUE),

    (17, 2, 'option_1', 'YES', '(() => {loadNextDecision(2, 18)})', TRUE),
    (17, 2, 'option_2', 'NO, LIGHT THE BRAZIER', '(() => {loadNextDecision(2, 8)})', TRUE),

    (18, 2, 'option_1', 'MOVE ON THE BRIDGE UNDERSIDE', '(() => {loadNextDecision(2, 19)})', TRUE),
    (18, 2, 'option_2', 'CROUCH AND CONTINUE', '(() => {loadNextDecision(2, 20)})', TRUE),

    (19, 2, 'option_1', 'CONTINUE', '(() => {loadNextDecision(2, 24)})', TRUE),

    (20, 2, 'option_1', 'FIGHT', '(() => {goToDeathScreen("The armour of the skeletons was too heavy for you to peirce and you were killed")})', TRUE),
    (20, 2, 'option_2', 'JUMP OVER THE SKELETONS', '(() => {loadNextDecision(2, 21)})', TRUE),

    (21, 2, 'option_1', 'CUT THE BRIDGE', '(() => {loadNextDecision(2, 22)})', TRUE),
    (21, 2, 'option_2', 'BURN THE BRIDGE', '(() => {loadNextDecision(2, 23)})', TRUE),

    (22, 2, 'option_1', 'CONTINUE', '(() => {loadNextDecision(2, 24)})', TRUE),

    (23, 2, 'option_1', 'CONTINUE', '(() => {loadNextDecision(2, 24)})', TRUE),

    (24, 2, 'option_1', 'LOOK AT THE DOOR', '((event) => {addToDetails("<br> The door is sealed shut, prehaps there is a clue of what to do somewhere in this room");
                                                     disableButton(event)})', TRUE),
    (24, 2, 'option_2', 'LOOK AT VERSE', '((event) => {addToDetails(`<br> The verse reads as follows: <br>
                                                                <br>
                                                                It creeps in silence, pale and cold, <br>
                                                                A grasp so tight, a tale untold.<br>
                                                                It steals the breath, I dim the light,<br>
                                                                It turns the day into endless night.<br>
                                                                <br>
                                                                Yet in the dark, a spark may rise,<br>
                                                                A dancing glow before your eyes.<br>
                                                                With ember&#39;s heart and golden breath,<br>
                                                                I turn away the touch of death. <br>
                                                                <br>
                                                                What am I? <br>
                                                                <br>
                                                                Prehaps speaking the answer will open the door`);
                                                  changeButton(event, "ANSWER THE RIDDLE", ()=> {loadNextDecision(2, 25)}) })', TRUE),
    
    (26, 2, 'option_1', 'CONTINUE', '(() => {loadNextDecision(2, 27)})', TRUE),

    (27, 2, 'option_1', 'CONTINUE', '(() => {showDialogue()})', TRUE),

    (28, 2, 'option_1', 'DODGE LEFT', '(() => {loadNextDecision(2, 29)})', TRUE),
    (28, 2, 'option_2', 'PARRY', '(() => {checkState("PARRY_AVAILABLE", 0, ()=>{goToDeathScreen("Your sword broke and you were killed")}, () => {decreaseStateVariable("PARRY_AVAILABLE", 1)}); loadNextDecision(2, 30)})', TRUE),
    (28, 2, 'option_3', 'DODGE RIGHT', '(() => {loadNextDecision(2, 29)})', TRUE),

    (29, 2, 'option_1', 'STRIKE', '(() => {decreaseStateVariable("ANKOU_HEALTH", 1);
                                           checkState("ANKOU_HEALTH", 0, () => {loadNextDecision(2, 31)}, () => {loadNextDecision(2, 28)})
                                           })', TRUE),

    (29, 2, 'option_2', 'USE OIL TO SET BLADE ON FIRE', 
    '(() => {removeFromInventory("OIL_BOTTLE", 1);
                decreaseStateVariable("ANKOU_HEALTH", 2);
                disableButton(event);
            })', 
    '(checkInventory("OIL_BOTTLE", 1) == true)'),

    (30, 2, 'option_1', 'STRIKE', 
    '(() => {decreaseStateVariable("ANKOU_HEALTH", 1);
                checkState("ANKOU_HEALTH", 0, () => {loadNextDecision(2, 31)}, () => {loadNextDecision(2, 28)})
            })', 
            TRUE),
    (30, 2, 'option_2', 'USE OIL TO SET BLADE ON FIRE', '(() => {removeFromInventory("OIL_BOTTLE", 1);
                                           decreaseStateVariable("ANKOU_HEALTH", 2);
                                           disableButton(event);
                                           })', '(checkInventory("OIL_BOTTLE", 1) == true)'),

    (31, 2, 'option_1', 'CONTINUE', '(() => {loadNextDecision(2, 32)})', TRUE),

    (32, 2, 'option_1', 'GO TO THE VILLAGE', '(() => {loadNextDecision(1, 1)})', TRUE);





