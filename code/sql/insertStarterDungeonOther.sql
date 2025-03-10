INSERT INTO timerBars(id, areaID, duration, onComplete)
VALUES
    (1, 2, 30, '(()=>{goToDeathScreen("Indescision allowed Death to renew it&#39;s claim on You")})'),
    (28, 2, 5, '(()=>{goToDeathScreen("You were unable to dodge the Ankou&#39;s attack and were slain")})'),
    (29, 2, 5, '(()=>{loadNextDecision(2,28)})'),
    (30, 2, 5, '(()=>{loadNextDecision(2,28)})');

INSERT INTO popupMenus(id, areaID, contentType, content, contentTitle)
VALUES
    (9, 2, 'list', 'Gold x100, Jar of Oil x1', 'Chest Contents'),
    (10, 2, 'text', 'THE TEXT CONTENT OF THE OLD TOME', 'Old Tome');

INSERT INTO textEntries(id, areaID, correctAnswer, onCorrect, onIncorrect)
VALUES 
    (25, 2, 'fire', '(()=> {loadNextDecision(2, 26)})', '(()=> {changePrompt("Incorrect. Try again.")})');

INSERT INTO dragDropGames(id, areaID, noDragItems, dragItemsImg, timeLimit, onFail, title, backgroundStyle)
VALUES
    (
        16,
        2,
        5,
        'images/items/fire.png',
        20,
        '(() => {goToDeathScreen("As you attempt to set fire to the rope, skeletons overwhelm you and you are killed.")})',
        'Set the rope on Fire',
        'background-color: rgba(200, 175, 100, 1);
        background: linear-gradient(210deg, rgba(200, 175, 100, 1) 45%, rgba(56, 36, 16, 0.75) 45%, rgba(56, 36, 16, 0.75) 55%, rgba(200, 175, 100, 1) 55%);
        clip-path: circle(60% at 50% 50%);'
    );

INSERT INTO dialogues
    (id, areaID, npcID)
VALUES
    (
        27,
        2,
        1
    );