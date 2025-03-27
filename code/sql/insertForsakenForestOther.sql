INSERT INTO timerBars(id, areaID, duration, onComplete)
VALUES
    (8, 5, 15, '(()=> {goToDeathScreen("You were defeated by the ogre and Death has come for you.")})');

INSERT INTO selectInventory(id, areaID, correctItem, correctAnswerFunction, incorrectAnswerFunction)
VALUES
    (3, 5, "FEATHER", '(()=> {increaseStateVariable("RIDDLES_CORRECT", 1); loadNextDecision(5, 4); changeState("RIDDLE1_COMPLETE", true);})', '(()=> {changeState("RIDDLE1_COMPLETE", true); loadNextDecision(5, 4);})'),
    (4, 5, "FLOWER", '(()=> {increaseStateVariable("RIDDLES_CORRECT", 1); checkState("RIDDLES_CORRECT", 2, ()=> {loadNextDecision(5, 7)}, 
                            ()=> {checkState("RIDDLES_CORRECT", 1, ()=> {loadNextDecision(5, 6)}, ()=> {loadNextDecision(5, 5)})});})', '(()=> {checkState("RIDDLES_CORRECT", 2, 
                            ()=> {loadNextDecision(5, 7)}, ()=> {checkState("RIDDLES_CORRECT", 1, ()=> {loadNextDecision(5, 6)}, ()=> {loadNextDecision(5, 5)})})})');