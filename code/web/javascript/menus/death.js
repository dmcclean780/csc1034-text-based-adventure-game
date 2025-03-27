const deathMessage = sessionStorage.getItem("deathMessage");
console.log(deathMessage);

window.onload = function () {
    document.getElementById("death-message").innerHTML = deathMessage;
}

function restart() {
    window.location.href = "../../index.html";
}