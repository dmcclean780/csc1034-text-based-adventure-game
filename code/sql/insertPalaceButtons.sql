INSERT INTO buttonOptions(id, areaID, buttonID, buttonText, buttonFunction, showCondition)
VALUES
(1, 6, 'option_1', 'YES', '(()=> {loadNextDecision(2, 6)})', TRUE),
(1, 6, 'option_2', 'NO', '', TRUE),

(2, 6, 'option_1', 'FORWARD', '(()=> {loadNextDecision(3, 6)})', TRUE),
(2, 6, 'option_2', 'BACKWARD', '(()=> {loadNextDecision(1, 6)})',TRUE),
(2, 6, 'option_3', 'LEFT', '(()=> {loadNextDecision(4, 6)})', TRUE),
(2, 6, 'option_4', 'RIGHT', '(()=> {loadNextDecision(8, 6)})', TRUE),

(3, 6, 'option_1', 'TRY THE DOOR', '(()=> {loadNextDecision(11, 6)})', '(checkInventory("KEY", 1) == true)'),
(3, 6, 'option_2', 'GO BACK', '(()=> {loadNextDecision(2, 6)})', TRUE),

(4, 6, 'option_1', 'OPEN THE DOOR', '(()=> {loadNextDecision(5, 6)})', TRUE),
(4, 6, 'option_2', 'BACKWARD', '(()=> {loadNextDecision(3, 6)})', TRUE),

(5, 6, 'option_1', 'FORWARD', '(()=> {loadNextDecision(6, 6)})', TRUE),
(5, 6, 'option_2', 'BACKWARD', '(()=> {loadNextDecision(4, 6)})', TRUE),
(5, 6, 'option_3', 'OPEN CHEST', '(()=> {loadNextDecision(17, 6)})', TRUE),

(6, 6, 'option_1', 'CHEST 1', '(()=> {loadNextDecision(17, 6)})', TRUE),
(6, 6, 'option_2', 'CHEST 2', '(()=> {loadNextDecision(7, 6)})', TRUE),
(6, 6, 'option_3', 'CHEST 3', '(()=> {loadNextDecision(17, 6)})', TRUE),
(6, 6, 'option_4', 'CHEST 4', '(()=> {loadNextDecision(17, 6)})', TRUE),

(7, 6, 'option_1', 'ACCEPT', '(()=> addToInventory("KEY", 1); {loadNextDecision(5, 6)})', TRUE),

(8, 6, 'option_1', 'TRY DOOR', '{loadNextDecision(9, 6)})', '(checkInventory("KEY", 1) == true)'),
(8, 6, 'option_2', 'RETURN', '{loadNextDecision(2, 6)})', TRUE),

(9, 6, 'option_1', 'OPEN CHEST', '{loadNextDecision(10, 6)})', TRUE),
(9, 6, 'option_2', 'GO BACK', '{loadNextDecision(8, 6)})', TRUE),

(10, 6, 'option_1', 'ACCEPT', '(()=> addToInventory("ANTIMIDAS", 1); {loadNextDecision(5, 6)})', TRUE),

(11, 6, 'option_1', 'FIGHT', '(()=> {loadNextDecision(12, 6)})', TRUE),
(11, 6, 'option_2', 'ARMWRESTLE', '(()=> {loadNextDecision(16, 6)})', '(checkInventory("ANTIMIDAS", 1) == true)'),

(12, 6, 'option_1', 'LEFT', '(()=> {loadNextDecision(13, 6)})', TRUE),
(12, 6, 'option_2', 'RIGHT', '(()=> {loadNextDecision(14, 6)})', TRUE),

(13, 6, 'option_1', 'JUMP OVER', '(()=> {loadNextDecision(14, 6)})', TRUE),
(13, 6, 'option_2', 'DUCK UNDER', '(()=> {loadNextDecision(18, 6)})', TRUE),

(14, 6, 'option_1', 'YES', '(()=> {loadNextDecision(15, 6)})', TRUE),

(15, 6, 'option_1', 'ACCEPT', 'addToInventory("MIDAS_HAND", 1)', TRUE),

(16, 6, 'option_1', 'BREAK HIS ARM', '(()=> {loadNextDecision(15, 6)})', TRUE),

(17, 6, 'option_1', 'ACCEPT', '(()=> {goToDeathScreen("You are torn to pieces and eaten. Your legend ends here.")})', TRUE),

(18, 6, 'option_1', 'ACCEPT', '(()=> {goToDeathScreen("You will forever remain a statue of gold.")})', TRUE);