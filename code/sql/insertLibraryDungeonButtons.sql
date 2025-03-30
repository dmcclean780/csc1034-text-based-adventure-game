INSERT INTO 
buttonOptions(id, areaID, buttonID, buttonText, buttonFunction, showCondition)
VALUES
        -- library_outside_enterQuestion --
    (1, 3, 'option_1', 'Enter Library', '(()=> {loadNextDecision(3, 3)})', TRUE),
    (1, 3, 'option_2', 'Look Around', '(()=> {loadNextDecision(3, 2)})', TRUE),
    (1, 3, 'option_3', 'Return to Village', '(()=> {loadNextDecision(1, 1)})', TRUE),
        -- library_outside_lookAround --
    (2, 3, 'option_1', 'Enter Library', '(()=> {loadNextDecision(3, 3)})', TRUE),
    (2, 3, 'option_2', 'Return to Village', '(()=> {loadNextDecision(1, 1)})', TRUE),
        -- library_r1_enter --
    (3, 3, 'option_1', 'Investigate the Bookcase', '(()=> {loadNextDecision(3, 4)})', TRUE),
    (3, 3, 'option_2', 'Investigate the Ink Pot', '(()=> {loadNextDecision(3, 6)})', TRUE),
        -- library_r1_investigateBookcase --
    (4, 3, 'option_1', 'Investigate the Ink Pot', '(()=> {loadNextDecision(3, 6)})', TRUE),
    (4, 3, 'option_2', 'Raise your torch to the Bookcase', '(()=> {loadNextDecision(3, 5)})', TRUE),
        -- library_r1_raiseTorchBookcase --
    (5, 3, 'option_1', 'Investigate the Ink Pot', '(()=> {loadNextDecision(3, 6)})', TRUE),
    (5, 3, 'option_2', 'Try to torch a Book', '(()=> {goToDeathScreen("The book clamps around your hand as the ink slowly consumes you.")})', TRUE),
        -- library_r1_investigateInkPot --
    (6, 3, 'option_1', 'Investigate the Ink Pot', '(()=> {loadNextDecision(3, 7)})', TRUE),
        -- library_r1_takeQuill --
    (7, 3, 'option_1', 'Take control of the Quill', '(()=> {loadNextDecision(3, 8)})', TRUE),
    (7, 3, 'option_2', 'Allow quill to write', '(()=> {goToDeathScreen("The ink floods out of the quill, flowing over your hands as you feel yourself being stripped away.")})', TRUE),
    (7, 3, 'option_3', 'Raise torch to the book', '(()=> {goToDeathScreen("The book clamps around your hand as the ink slowly consumes you.")})', TRUE),
        -- library_r1_bookReadPeace --
    
        -- library_r1_bookPeaceWin --
    (9, 3, 'option_1', 'Yes', '(() => { loadNextDecision(3, 10); 
        addToInventory("Quill", 1); 
        addToInventory("Book of Peace", 1); })', TRUE), 
        -- library_r1_nextRoom --
    (10, 3, 'option_1', 'Continue', '(()=> {loadNextDecision(3, 11)})', TRUE), 
        -- library_r2_enter --
    (11, 3, 'option_1', 'Walk toward Book', '(()=> {loadNextDecision(3, 12)})', TRUE), 
    (11, 3, 'option_2', 'Walk around Bookcases ', '(()=> {loadNextDecision(3, 14)})', TRUE), 
        -- library_r2_stepForwardBookcaseFall --
    (12, 3, 'option_1', 'Dive forward', '(()=> {goToDeathScreen("As you dive foward, you fall just short... both bookcases slam down onto your body.")})', TRUE), 
    (12, 3, 'option_2', 'Dive backward', '(()=> {loadNextDecision(3, 13)})', TRUE), 
        -- library_r2_diveBackwards --
    (13, 3, 'option_1', 'Walk toward Book', '(()=> {loadNextDecision(3, 15)})', TRUE), 
        -- library_r2_walkAroundBookcase --
    (14, 3, 'option_1', 'Walk toward Book', '(()=> {loadNextDecision(3, 15)})', TRUE), 
        -- library_r2_approachBook --
    (15, 3, 'option_1', 'Slice stronger tendril', '(()=> {loadNextDecision(3, 16)})', TRUE), 
    (15, 3, 'option_2', 'Slice weaker tendril', '(()=> {loadNextDecision(3, 17)})', TRUE), 
        -- library_r2_sliceStronger --
    (16, 3, 'option_1', 'Slice weaker tendril', '(()=> {loadNextDecision(3, 17)})', TRUE), 
        -- library_r2_sliceWeaker --
    (17, 3, 'option_1', 'Bring the Quill to the Book', '(()=> {loadNextDecision(3, 18)})', TRUE), 
        -- library_r2_bookReadWar --

        -- library_r2_bookWarWin --
    (19, 3, 'option_1', 'Yes', '(() => {loadNextDecision(3, 20); 
        addToInventory("Book of War", 1); })', TRUE),
        -- library_r2_nextRoom --
    (20, 3, 'option_1', 'Move to next Room', '(()=> {loadNextDecision(3, 22)})', TRUE), 
    (20, 3, 'option_2', 'Unlock the Glass Cage', '(()=> {loadNextDecision(3, 21)})', TRUE), 
        -- library_r2_unlockGlassCage --
    (21, 3, 'option_1', 'Continue', '(() => {loadNextDecision(3, 22); 
        addToInventory("Paige&#39;s Book", 1); })', TRUE),
        -- library_r3_entrance --
    (22, 3, 'option_1', 'Continue', '(() => {showDialogue()})', TRUE), 
        -- library_r3_bookDecision --
    (23, 3, 'option_1', 'War', '(() => {showDialogue()})', TRUE), 
    (23, 3, 'option_2', 'Peace', '(()=> {loadNextDecision(3, 28)})', TRUE), 
        -- library_r3_finalBookInHand --
    (24, 3, 'option_1', 'Try to cure the Book', '(()=> {loadNextDecision(3, 25)})', TRUE), 
        -- library_r3_bookReadFinal --

        -- library_r3_bookFinalWin --
    (26, 3, 'option_1', 'Continue', '(() => {showDialogue()})', TRUE), 
        -- library_r3_calligraphousKillSpare --
    (27, 3, 'option_1', 'Spare Calligraphous', '(() => {showDialogue()})', TRUE), 
    (27, 3, 'option_2', 'Kill Calligraphous', '(()=> {loadNextDecision(3, 29)})', TRUE), 
        -- library_r3_peaceChosen --
    (28, 3, 'option_1', 'Continue', '(() => {showDialogue()})', TRUE), 
        -- library_end_epilogue --
    (29, 3, 'option_1', 'Continue', '(() => {changeState("libraryCompleted", 1); clearLocalState(); goToMap()}', TRUE);

