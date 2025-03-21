async function loadNextDecision(areaID, decisonID) {
    if(settings.doTextAnimations){
        document.getElementById("details").style.display = "none";
        document.getElementById("details-box").style.display = "none";
        document.getElementById("prompt").style.display = "none";
        document.getElementById("options").style.display = "none";
        document.getElementById("input-box").style.display = "none";
    } else{
        document.getElementById("details").style.display = "block";
        document.getElementById("details-box").style.display = "flex";
        document.getElementById("prompt").style.display = "block";
        document.getElementById("options").style.display = "flex";
        document.getElementById("input-box").style.display = "flex";
    }
    
    const decisionData = await makeDecisionQuery(decisonID, areaID);
    console.log(decisionData);
    buildDecision(decisionData);

}

const areaID = sessionStorage.getItem("areaID") || 1;
sessionStorage.clear();
loadNextDecision(6, 1); //Change this to change what decision is loaded on page load of dungeon.html