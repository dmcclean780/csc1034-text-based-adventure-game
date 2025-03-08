SELECT 
    d.id AS decisionID,
    a.name AS areaName,
    d.details,
    d.prompt,
    d.backgroundFilePath,
    d.hasTimer,
    d.hasPopupMenu,
    d.hasDialogue,
    d.hasLibraryBook,
    d.hasDragDropGame,
    d.hasTextEntry,
    d.hasButtonOptions,

    -- Conditionally fetch Timer Bar Info
    CASE WHEN d.hasTimer THEN t.duration ELSE NULL END AS timerDuration,
    CASE WHEN d.hasTimer THEN t.onComplete ELSE NULL END AS timerOnComplete,

    -- Conditionally fetch Popup Menu Info
    CASE WHEN d.hasPopupMenu THEN pm.contentType ELSE NULL END AS popupContentType,
    CASE WHEN d.hasPopupMenu THEN pm.content ELSE NULL END AS popupContent,
    CASE WHEN d.hasPopupMenu THEN pm.contentTitle ELSE NULL END AS popupContentTitle,

    -- Conditionally fetch Text Entry Info
    CASE WHEN d.hasTextEntry THEN te.correctAnswer ELSE NULL END AS textEntryCorrectAnswer,
    CASE WHEN d.hasTextEntry THEN te.onCorrect ELSE NULL END AS textEntryOnCorrect,
    CASE WHEN d.hasTextEntry THEN te.onIncorrect ELSE NULL END AS textEntryOnIncorrect,

    -- Conditionally fetch Library Book Info
    CASE WHEN d.hasLibraryBook THEN lb.content ELSE NULL END AS bookContent,
    CASE WHEN d.hasLibraryBook THEN lb.contentTitle ELSE NULL END AS bookTitle,
    CASE WHEN d.hasLibraryBook THEN lb.scoreNeeded ELSE NULL END AS bookScoreNeeded,
    CASE WHEN d.hasLibraryBook THEN lb.totalLives ELSE NULL END AS bookTotalLives,

    -- Conditionally fetch Drag Drop Game Info
    CASE WHEN d.hasDragDropGame THEN ddg.noDragItems ELSE NULL END AS noDragItems,
    CASE WHEN d.hasDragDropGame THEN ddg.dragItemsImg ELSE NULL END AS dragItemsImg,
    CASE WHEN d.hasDragDropGame THEN ddg.timeLimit ELSE NULL END AS dragDropTimeLimit,
    CASE WHEN d.hasDragDropGame THEN ddg.onFail ELSE NULL END AS dragDropOnFail,
    CASE WHEN d.hasDragDropGame THEN ddg.title ELSE NULL END AS dragDropTitle,
    CASE WHEN d.hasDragDropGame THEN ddg.backgroundStyle ELSE NULL END AS dragDropBackground,

    -- Conditionally fetch Button Options
    CASE WHEN d.hasButtonOptions THEN JSON_ARRAYAGG(bo.buttonID ORDER BY bo.buttonID) ELSE NULL END AS buttonIDs,
    CASE WHEN d.hasButtonOptions THEN JSON_ARRAYAGG(bo.buttonText ORDER BY bo.buttonID) ELSE NULL END AS buttonTexts,
    CASE WHEN d.hasButtonOptions THEN JSON_ARRAYAGG(bo.buttonFunction ORDER BY bo.buttonID) ELSE NULL END AS buttonFunctions

FROM decisions d
JOIN areas a ON d.areaID = a.id

LEFT JOIN timerBars t ON d.hasTimer = TRUE AND d.id = t.id
LEFT JOIN popupMenus pm ON d.hasPopupMenu = TRUE AND d.id = pm.id
LEFT JOIN textEntries te ON d.hasTextEntry = TRUE AND d.id = te.id
LEFT JOIN libraryBooks lb ON d.hasLibraryBook = TRUE AND d.id = lb.id
LEFT JOIN dragDropGames ddg ON d.hasDragDropGame = TRUE AND d.id = ddg.id
LEFT JOIN buttonOptions bo ON d.hasButtonOptions = TRUE AND d.id = bo.decisionID

WHERE d.id = ?  -- Replace ? with the specific decision ID

GROUP BY d.id, a.id;
