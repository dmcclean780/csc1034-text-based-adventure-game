function showDialogue() {
    document.getElementById("details").style.display = "none";
    document.getElementById("input-box-container").style.display = "none";
    document.getElementById("dialogue-box").style.display = "flex";
}

function showPopupMenu(event) {
    document.getElementById("popup-menu").style.display = "block";
    document.getElementById(event.target.id).style.display = "none";
}

function goToDeathScreen(deathMessage) {
    sessionStorage.setItem("deathMessage", deathMessage);
    window.location.href = "../generic/death.html";
}

function changeDetails(newDetails) {
    document.getElementById("details").innerHTML = newDetails;
}

function changeButton(event, newText, newFunction) {
    const button = document.getElementById(event.target.id);
    button.innerHTML = newText;
    button.addEventListener('click', newFunction);
}

function changePrompt(newPrompt) {
    document.getElementById("prompt").innerHTML = newPrompt;
}

function addToDetails(newDetails) {
    document.getElementById("details").innerHTML += newDetails;
}

function disableButton(event) {
    document.getElementById(event.target.id).style.display = "none";
}


function goToEndScreen(ending) {
    sessionStorage.setItem("ending", ending);
    window.location.href = "../generic/end.html";
}