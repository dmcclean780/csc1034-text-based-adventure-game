function updateDialogueBox(npcData, dialogueBoxID, pathToRoot) {
    const dialogueBox = document.getElementById(dialogueBoxID);
    dialogueBox.setAttribute('name', npcData.name);
    dialogueBox.setAttribute('dialogue', npcData.firstDialogue);
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


    document.getElementById("details").style.display = "flex";
    document.getElementById("input-box-container").style.display = "flex";


    document.getElementById("details").innerHTML = decisionData.details;
    document.getElementById("prompt").innerHTML = decisionData.prompt;

    while (options.firstChild) {
        options.removeChild(options.firstChild);
    }

    if (decisionData.hasButtonOptions == 1) {
       buildButtonOptions(decisionData);
    }

    if (decisionData.hasDialogue == 1) {
        buildDialogue(decisionData);
    }
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
        const button = document.createElement("button");
        button.classList.add("button-option");
        button.id = decisionData.buttonIDs[i];
        button.innerHTML = decisionData.buttonTexts[i];
        const buttonFunction = eval(decisionData.buttonFunctions[i]);
        button.addEventListener('click', buttonFunction);
        options.appendChild(button);
    }
}

async function loadNextDecision(areaID, decisonID) {
    const decisionData = await makeDecisionQuery(decisonID, areaID);
    buildDecision(decisionData);
}

function showDialogue() {
    document.getElementById("details").style.display = "none";
    document.getElementById("input-box-container").style.display = "none";
    document.getElementById("dialogue-box").style.display = "flex";
}

loadNextDecision(1, 1);

