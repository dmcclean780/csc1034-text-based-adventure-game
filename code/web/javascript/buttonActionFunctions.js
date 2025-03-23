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
    changeState("alive", 0);
    changeState("successful", 0);
    window.location.href = pathToRoot + "html/other_game_pages/death.html";
}

function changeDetails(newDetails) {
    document.getElementById("details").innerHTML = newDetails;
}

function changeButton(event, newText, newFunction) {
    const button = document.getElementById(event.target.id);
    const newButton = button.cloneNode(true); // Clone the button
    newButton.innerHTML = newText; // Set new text
    newButton.addEventListener("click", newFunction); // Reattach event listener
    button.replaceWith(newButton); // Replace old button with the new one
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
    window.location.href = pathToRoot+"html/other_game_pages/end.html";
}

function goToMap() {
    window.location.href = pathToRoot +"html/other_game_pages/map.html";

}