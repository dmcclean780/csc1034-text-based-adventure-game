async function loadNextDecision(areaID, decisonID) {
    const decisionData = await makeDecisionQuery(decisonID, areaID);
    console.log(decisionData);
    buildDecision(decisionData);
}


sessionStorage.clear();
loadNextDecision(7, 1); //Change this to change what decision is loaded on page load of dungeon.html