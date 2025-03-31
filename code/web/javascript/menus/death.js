const deathMessage = sessionStorage.getItem("deathMessage");
console.log(deathMessage);

window.onload = function () {
    document.getElementById("death-message").innerHTML = deathMessage;

    sessionStorage.clear();
}

function restart() {
    window.location.href = "../../index.html";
}