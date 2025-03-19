INSERT INTO timerBars(id, areaID, duration, onComplete)
VALUES
    (8, 5, 15, '(()=> {goToDeathScreen("You were defeated by the ogre and Death has come for you.")})');

INSERT INTO popupMenus(id, areaID, contentType, content, contentTitle)
VALUES
    --SELECT OPTION FROM INVENTORY?--
    (3, 5, 'list', 'inventory items', 'Inventory'),
    (4, 5, 'list', 'inventory items', 'Inventory');

--NEED TO FINNISH THIS--
INSERT INTO dialogues(id, areaID, npcID)
VALUES
    ();