async function makeDecisionQuery(decisionID, areaID) {
    const query = `SELECT 
                        decisions.id AS decisionID,
                        areas.name AS areaName,
                        decisions.details,
                        decisions.prompt,
                        decisions.backgroundFilePath,
                        decisions.hasTimer,
                        decisions.hasPopupMenu,
                        decisions.hasDialogue,
                        decisions.hasLibraryBook,
                        decisions.hasDragDropGame,
                        decisions.hasTextEntry,
                        decisions.hasButtonOptions,

                        -- Conditionally fetch Timer Bar Info
                        CASE WHEN decisions.hasTimer THEN timerBars.duration ELSE NULL END AS timerDuration,
                        CASE WHEN decisions.hasTimer THEN timerBars.onComplete ELSE NULL END AS timerOnComplete,

                        -- Conditionally fetch Popup Menu Info
                        CASE WHEN decisions.hasPopupMenu THEN popupMenus.contentType ELSE NULL END AS popupContentType,
                        CASE WHEN decisions.hasPopupMenu THEN popupMenus.content ELSE NULL END AS popupContent,
                        CASE WHEN decisions.hasPopupMenu THEN popupMenus.contentTitle ELSE NULL END AS popupContentTitle,

                        -- Conditionally fetch Text Entry Info
                        CASE WHEN decisions.hasTextEntry THEN textEntries.correctAnswer ELSE NULL END AS textEntryCorrectAnswer,
                        CASE WHEN decisions.hasTextEntry THEN textEntries.onCorrect ELSE NULL END AS textEntryOnCorrect,
                        CASE WHEN decisions.hasTextEntry THEN textEntries.onIncorrect ELSE NULL END AS textEntryOnIncorrect,

                        -- Conditionally fetch Library Book Info
                        CASE WHEN decisions.hasLibraryBook THEN libraryBooks.content ELSE NULL END AS bookContent,
                        CASE WHEN decisions.hasLibraryBook THEN libraryBooks.contentTitle ELSE NULL END AS bookTitle,
                        CASE WHEN decisions.hasLibraryBook THEN libraryBooks.scoreNeeded ELSE NULL END AS bookScoreNeeded,
                        CASE WHEN decisions.hasLibraryBook THEN libraryBooks.totalLives ELSE NULL END AS bookTotalLives,

                        -- Conditionally fetch Drag Drop Game Info
                        CASE WHEN decisions.hasDragDropGame THEN dragDropGames.noDragItems ELSE NULL END AS noDragItems,
                        CASE WHEN decisions.hasDragDropGame THEN dragDropGames.dragItemsImg ELSE NULL END AS dragItemsImg,
                        CASE WHEN decisions.hasDragDropGame THEN dragDropGames.timeLimit ELSE NULL END AS dragDropTimeLimit,
                        CASE WHEN decisions.hasDragDropGame THEN dragDropGames.onFail ELSE NULL END AS dragDropOnFail,
                        CASE WHEN decisions.hasDragDropGame THEN dragDropGames.title ELSE NULL END AS dragDropTitle,
                        CASE WHEN decisions.hasDragDropGame THEN dragDropGames.backgroundStyle ELSE NULL END AS dragDropBackground,

                         -- Conditionally fetch Dialogue Info
                        CASE WHEN decisions.hasDialogue THEN dialogues.npcID ELSE NULL END AS npcID,

                        -- Conditionally fetch Button Options
                        CASE WHEN decisions.hasButtonOptions THEN JSON_ARRAYAGG(buttonOptions.buttonID ORDER BY buttonOptions.buttonID) ELSE NULL END AS buttonIDs,
                        CASE WHEN decisions.hasButtonOptions THEN JSON_ARRAYAGG(buttonOptions.buttonText ORDER BY buttonOptions.buttonID) ELSE NULL END AS buttonTexts,
                        CASE WHEN decisions.hasButtonOptions THEN JSON_ARRAYAGG(buttonOptions.buttonFunction ORDER BY buttonOptions.buttonID) ELSE NULL END AS buttonFunctions,
                        CASE WHEN decisions.hasButtonOptions THEN JSON_ARRAYAGG(buttonOptions.showCondition ORDER BY buttonOptions.buttonID) ELSE NULL END AS buttonConditions

                    FROM decisions
                    JOIN areas ON decisions.areaID = areas.id

                    LEFT JOIN timerBars ON decisions.hasTimer = TRUE AND decisions.id = timerBars.id AND decisions.areaID = timerBars.areaID
                    LEFT JOIN popupMenus ON decisions.hasPopupMenu = TRUE AND decisions.id = popupMenus.id AND decisions.areaID = popupMenus.areaID
                    LEFT JOIN textEntries ON decisions.hasTextEntry = TRUE AND decisions.id = textEntries.id AND decisions.areaID = textEntries.areaID
                    LEFT JOIN libraryBooks ON decisions.hasLibraryBook = TRUE AND decisions.id = libraryBooks.id AND decisions.areaID = libraryBooks.areaID
                    LEFT JOIN dragDropGames ON decisions.hasDragDropGame = TRUE AND decisions.id = dragDropGames.id AND decisions.areaID = dragDropGames.areaID
                    LEFT JOIN buttonOptions ON decisions.hasButtonOptions = TRUE AND decisions.id = buttonOptions.id AND decisions.areaID = buttonOptions.areaID
                    LEFT JOIN dialogues ON decisions.hasDialogue = TRUE AND decisions.id = dialogues.id AND decisions.areaID = dialogues.areaID

                    WHERE decisions.id = ${decisionID} AND areas.id = ${areaID}

                    GROUP BY decisions.id, areas.id;
`;

    let decisionData = await makeDatabaseQuery(query);
    console.log(decisionID, areaID)
    console.log(decisionData);
    decisionData = decisionData.pop();
    console.log(decisionData);
    if(decisionData.hasButtonOptions == 1){
        decisionData.buttonIDs = JSON.parse(decisionData.buttonIDs);
        decisionData.buttonTexts = JSON.parse(decisionData.buttonTexts);
        decisionData.buttonFunctions = JSON.parse(decisionData.buttonFunctions);
        decisionData.buttonConditions = JSON.parse(decisionData.buttonConditions);
    }
    return decisionData;
}

