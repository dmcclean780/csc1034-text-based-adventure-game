function updateDialogueBox(npcData, dialogueBoxID, pathToRoot) {
    const dialogueBox = document.getElementById(dialogueBoxID);
    dialogueBox.setAttribute('name', npcData.name);
    dialogueBox.setAttribute('dialogue', npcData.firstDialogue.replaceAll("PlayerNameHere", getState("name")));
    dialogueBox.setAttribute('finishedSpeakingFunction', npcData.onFirstDialogueEnd);
    dialogueBox.setAttribute('characterImage', pathToRoot + npcData.imageFilePath);
    dialogueBox.render();
}

async function buildDecision(decisionData) {
    try {
        document.getElementById("dialogue-box").remove();
    } catch (e) {
        console.log("No dialogue box to remove");
    }
    try {
        document.getElementById("timer-bar").stopTimer()
        document.getElementById("timer-bar").remove();
    } catch (e) {
        console.log("No timer bar to remove");
    }
    try {
        document.getElementById("popup-menu").remove();
    } catch (e) {
        console.log("No popup menu to remove");
    }
    try {
        document.getElementById("drag-drop-game").remove();
    } catch (e) {
        console.log("No drag drop game to remove");
    }
    try {
        document.getElementById("library-book").remove();
    } catch (e) {
        console.log("No library book to remove");
    }


    document.getElementById("details").style.display = "flex";
    document.getElementById("input-box-container").style.display = "flex";

    document.getElementById("details").innerHTML = decisionData.details;
    document.getElementById("prompt").innerHTML = decisionData.prompt;
    document.getElementById("background").src = "../../"+decisionData.backgroundFilePath;

    while (options.firstChild) {
        options.removeChild(options.firstChild);
    }

    if (decisionData.hasButtonOptions == 1) {
       buildButtonOptions(decisionData);
    }

    if (decisionData.hasDialogue == 1) {
        buildDialogue(decisionData);
    }

    if (decisionData.hasTimer == 1) {
        buildTimerBar(decisionData);
    }

    if (decisionData.hasTextEntry == 1) {
        buildTextEntry(decisionData);
    }

    if (decisionData.hasDragDropGame == 1) {
        buildDragDropGame(decisionData);
    }

    if (decisionData.hasPopupMenu == 1) {
        buildPopupMenu(decisionData);
    }

    if (decisionData.hasLibraryBook == 1) {
        buildLibraryBook(decisionData);
    }

    buildInventory(decisionData);
}

async function buildDialogue(decisionData) {
    const main = document.getElementById("main-container");
    const dialogueBox = document.createElement("dialogue-box");
    dialogueBox.id = "dialogue-box";
    main.appendChild(dialogueBox);
    const npcData = await makeNpcQuery(decisionData.npcID);
    updateDialogueBox(npcData, "dialogue-box", "../../");
}

function buildButtonOptions(decisionData){
    const options = document.getElementById("options");
    for (let i = 0; i < decisionData.buttonIDs.length; i++) {
        
        if(!eval(decisionData.buttonConditions[i]))
        {
            continue;
        }
        const button = document.createElement("button");
        button.classList.add("button-option");
        button.id = decisionData.buttonIDs[i];
        button.innerHTML = decisionData.buttonTexts[i];
        const buttonFunction = eval(decisionData.buttonFunctions[i]);
        button.addEventListener('click', buttonFunction);
        options.appendChild(button);
    }
}

function buildTimerBar(decisionData){
    const options = document.getElementById("options");
    const inputBox = document.getElementById("input-box");
    const timerBar = document.createElement("timer-bar");
    timerBar.setAttribute("id", "timer-bar");
    timerBar.duration = decisionData.timerDuration;
    timerBar.onCompleteCallback =eval(decisionData.timerOnComplete);
    timerBar.style.display = "block";
    inputBox.insertBefore(timerBar, options);
    
}

function buildDragDropGame(decisionData){
    const main = document.getElementById("main-container");
    const dragDropGame = document.createElement("drag-drop-game");
   
    dragDropGame.setAttribute("gameTitle", decisionData.dragDropTitle);
    dragDropGame.setAttribute("noItemsToDrag", decisionData.noDragItems);
    dragDropGame.setAttribute("dragItemsImage", "../../"+decisionData.dragItemsImg);
    dragDropGame.setAttribute("gameTimeLimit", decisionData.dragDropTimeLimit);
    dragDropGame.setAttribute("gameFailFunction", decisionData.dragDropOnFail);
    dragDropGame.setAttribute("destBoxBackgroundStylings", decisionData.dragDropBackground);
    dragDropGame.setAttribute("id", "drag-drop-game");
    main.appendChild(dragDropGame);
    dragDropGame.render();
}

function buildPopupMenu(decisionData){
    const main = document.getElementById("main-container");
    const popupMenu = document.createElement("popup-menu");
    popupMenu.setAttribute("contentTitle", decisionData.popupContentTitle);
    popupMenu.setAttribute("content", decisionData.popupContent);
    popupMenu.setAttribute("contentType", decisionData.popupContentType);
    popupMenu.setAttribute("id", "popup-menu");
    
    main.appendChild(popupMenu);
    popupMenu.render();
}

function buildTextEntry(decisionData){
    const options = document.getElementById("options");
    const textEntry = document.createElement("text-entry");
    textEntry.setAttribute("id", "text-entry");
    textEntry.setAttribute("correctAnswer", decisionData.textEntryCorrectAnswer);
    textEntry.setAttribute("correctResponseFunction", decisionData.textEntryOnCorrect);
    textEntry.setAttribute("incorrectResponseFunction", decisionData.textEntryOnIncorrect);
    options.appendChild(textEntry);
    textEntry.render();
    textEntry.connectedCallback();
}


function buildLibraryBook(decisionData){
    const main = document.getElementById("main-container");
    const libraryBook = document.createElement("library-book");
    libraryBook.setAttribute("id", "library-book");
    libraryBook.setAttribute("content", decisionData.bookContent);
    libraryBook.setAttribute("contentTitle", decisionData.bookTitle);
    libraryBook.setAttribute("scoreNeeded", decisionData.bookScoreNeeded);
    libraryBook.setAttribute("fileRel", "../../");
    libraryBook.setAttribute("livesRemaining", decisionData.bookTotalLives);
    libraryBook.setAttribute("bookFunction", decisionData.bookFunction);

    main.appendChild(libraryBook);
    libraryBook.render();
}

function buildInventory(decisionData) {
    const main = document.getElementById("main-container");

    // Remove existing inventory if it already exists
    const existingInventory = main.querySelector("inventory-container");
    if (existingInventory) {
        main.removeChild(existingInventory);
    }

    // Create and append a new inventory component
    const inventory = document.createElement("inventory-container");
    inventory.setAttribute("id", "inventory");
    
    // Append the newly created inventory
    main.appendChild(inventory);
}
