INSERT INTO buttonOptions(id, areaID, buttonID, buttonText, buttonFunction, showCondition)
VALUES
(1, 6, 'option_1', 'YES', '(()=> {loadNextDecision(6, 2)})', TRUE),
(1, 6, 'option_2', 'NO', '(()=> {goToMap()})', TRUE),

(2, 6, 'option_1', 'FORWARD', '(()=> {loadNextDecision(6, 3)})', TRUE),
(2, 6, 'option_2', 'BACKWARD', '(()=> {loadNextDecision(6, 1)})',TRUE),
(2, 6, 'option_3', 'LEFT', '(()=> {loadNextDecision(6, 4)})', TRUE),
(2, 6, 'option_4', 'RIGHT', '(()=> {loadNextDecision(6, 8)})', TRUE),

(3, 6, 'option_1', 'TRY THE DOOR', '(()=> {loadNextDecision(6, 11)})', '(checkInventory("PALACEKEY", 1) == true)'),
(3, 6, 'option_2', 'GO BACK', '(()=> {loadNextDecision(6, 2)})', TRUE),

(4, 6, 'option_1', 'OPEN THE DOOR', '(()=> {loadNextDecision(6, 5)})', TRUE),
(4, 6, 'option_2', 'BACKWARD', '(()=> {loadNextDecision(6, 2)})', TRUE),

(5, 6, 'option_1', 'FORWARD', '(()=> {loadNextDecision(6, 6); changeState("P_CHEST_1_OPENED", true);})', '(getState("P_CHEST_1_OPENED") == false)'),
(5, 6, 'option_2', 'BACKWARD', '(()=> {loadNextDecision(6, 4)})', TRUE),
(5, 6, 'option_3', 'OPEN CHEST', '(()=> {loadNextDecision(6, 17)})', TRUE),

(6, 6, 'option_1', 'CHEST 1', '(()=> {loadNextDecision(6, 17)})', TRUE),
(6, 6, 'option_2', 'CHEST 2', '(()=> {loadNextDecision(6, 7)})', TRUE),
(6, 6, 'option_3', 'CHEST 3', '(()=> {loadNextDecision(6, 17)})', TRUE),
(6, 6, 'option_4', 'CHEST 4', '(()=> {loadNextDecision(6, 17)})', TRUE),

(7, 6, 'option_1', 'ACCEPT', '(()=> {addToInventory("PALACEKEY", 1); loadNextDecision(6, 5)})', TRUE),

(8, 6, 'option_1', 'TRY DOOR', '(()=> {loadNextDecision(6, 9)})', '(checkInventory("PALACEKEY", 1) == true)'),
(8, 6, 'option_2', 'RETURN', '(()=> {loadNextDecision(6, 2)})', TRUE),

(9, 6, 'option_1', 'OPEN CHEST', '(()=> {loadNextDecision(6, 10); changeState("P_CHEST_2_OPENED", true);})', '(getState("P_CHEST_2_OPENED") == false)'),
(9, 6, 'option_2', 'GO BACK', '(()=> {loadNextDecision(6, 8)})', TRUE),

(10, 6, 'option_1', 'ACCEPT', '(()=> {addToInventory("ANTIMIDAS", 1); loadNextDecision(6, 8)})', TRUE),

(11, 6, 'option_1', 'FIGHT', '(()=> {loadNextDecision(6, 12)})', TRUE),
(11, 6, 'option_2', 'ARMWRESTLE', '(()=> {loadNextDecision(6, 16)})', '(checkInventory("ANTIMIDAS", 1) == true)'),

(12, 6, 'option_1', 'LEFT', '(()=> {loadNextDecision(6, 13)})', TRUE),
(12, 6, 'option_2', 'RIGHT', '(()=> {loadNextDecision(6, 14)})', TRUE),

(13, 6, 'option_1', 'JUMP OVER', '(()=> {loadNextDecision(6, 14)})', TRUE),
<<<<<<< HEAD
(13, 6, 'option_2', 'DUCK UNDER', '(()=> {loadNextDecision(6, 14)})', TRUE),
=======
(13, 6, 'option_2', 'DUCK UNDER', '(()=> {loadNextDecision(6, 18)})', TRUE),
>>>>>>> main

(14, 6, 'option_1', 'YES', '(()=> {loadNextDecision(6, 15)})', TRUE),

(15, 6, 'option_1', 'ACCEPT', '(()=> {addToInventory("MIDAS_HAND", 1); goToMap()})', TRUE),

(16, 6, 'option_1', 'BREAK HIS ARM', '(()=> {loadNextDecision(6, 15)})', TRUE),

(17, 6, 'option_1', 'ACCEPT', '(()=> {goToDeathScreen("You are torn to pieces and eaten. Your legend ends here.")})', TRUE),

(18, 6, 'option_1', 'ACCEPT', '(()=> {goToDeathScreen("You will forever remain a statue of gold.")})', TRUE);