async function loadNextDecision(areaID, decisonID) {
    const decisionData = await makeDecisionQuery(decisonID, areaID);
    console.log(decisionData);
    buildDecision(decisionData);
}

let areaID = sessionStorage.getItem("areaID") || 1;
sessionStorage.clear();
loadNextDecision(areaID, 1); //Change this to change what decision is loaded on page load of dungeon.html