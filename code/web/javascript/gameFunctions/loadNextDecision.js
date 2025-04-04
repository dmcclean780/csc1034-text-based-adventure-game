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

    if (settings.textSize == 'Small') {
        document.documentElement.style.fontSize = "10px";
    } else if (settings.textSize == 'Medium') {
        document.documentElement.style.fontSize = "15px";
    } else if (settings.textSize == 'Large') {
        document.documentElement.style.fontSize = "20px";
    }

    changeState("currentArea", areaID);
    changeState("currentDecision", decisonID);
    printState();
    printInventory();

    try {
        updateStateDatabase(gameState);
    } catch (e) {
        console.log("Error updating state in database, ", e);
        alert("Error updating state in database");
    }

    try {
        updateDatabaseInventory(inventory);
    } catch (e) {
        console.log("Error updating inventory in database, ", e);
        alert("Error updating inventory in database");
    }


    try {
        const decisionData = await makeDecisionQuery(decisonID, areaID);
        console.log(decisionData);
        buildDecision(decisionData);
    } catch (e) {
        console.log("Error loading decision, ", e);
        alert("Error loading decision");
    }
}

