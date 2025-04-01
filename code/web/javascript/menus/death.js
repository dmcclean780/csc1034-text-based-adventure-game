const deathMessage = sessionStorage.getItem("deathMessage");
console.log(deathMessage);

document.getElementById("return-btn").addEventListener("click", function() {
    let username = sessionStorage.getItem("username");
    sessionStorage.setItem("username", username);
    sessionStorage.clear();
    window.location.href = "../../html/menus/startGame.html";
});

document.getElementById("stats-btn").addEventListener("click", function() {
    goToGameSummary(gameState.globalState.characterID);
});

window.onload = function () {
    document.getElementById("death-message").innerHTML = deathMessage;
}

function restart() {
    window.location.href = "../../index.html";
}