

async function loadNextDecision(areaID, decisonID) {
    if (settings.doTextAnimations == '1') {
        document.getElementById("details").style.display = "none";
        document.getElementById("details-box").style.display = "none";
        document.getElementById("prompt").style.display = "none";
        document.getElementById("options").style.display = "none";
        document.getElementById("input-box").style.display = "none";
    } else {
        document.getElementById("details").style.display = "block";
        document.getElementById("details-box").style.display = "flex";
        document.getElementById("prompt").style.display = "block";
        document.getElementById("options").style.display = "flex";
        document.getElementById("input-box").style.display = "flex";
    }

    changeState("currentArea", areaID);
    changeState("currentDecision", decisonID);
    printState();
    updateStateDatabase(gameState);
    updateDatabaseInventory(inventory);
    const decisionData = await makeDecisionQuery(decisonID, areaID);
    console.log(decisionData);
    buildDecision(decisionData);
}

document.addEventListener("settingsLoaded", () => {
    const areaID = getState("currentArea")
    const decisionID = getState("currentDecision")
    loadNextDecision(areaID, decisionID); //Change this to change what decision is loaded on page load of dungeon.html
});
