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
        document.getElementById("details").style.fontSize = "0.5em";
        document.getElementById("details-box").style.fontSize = "0.5em";
        document.getElementById("prompt").style.fontSize = "0.5em";
        document.getElementById("options").style.fontSize = "0.5em";
        document.getElementById("input-box").style.fontSize = "0.5em";
    } else if (settings.textSize == 'Medium') {
        document.getElementById("details").style.fontSize = "1em";
        document.getElementById("details-box").style.fontSize = "1em";
        document.getElementById("prompt").style.fontSize = "1em";
        document.getElementById("options").style.fontSize = "0.75em";
        document.getElementById("input-box").style.fontSize = "1em";
    } else if (settings.textSize == 'Large') {
        document.getElementById("details").style.fontSize = "1.25em";
        document.getElementById("details-box").style.fontSize = "1.25em";
        document.getElementById("prompt").style.fontSize = "1.25em";
        document.getElementById("options").style.fontSize = "0.8em";
        document.getElementById("input-box").style.fontSize = "1.25em";
    }

    changeState("currentArea", areaID);
    changeState("currentDecision", decisonID);
    printState();

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

