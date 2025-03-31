const deathMessage = sessionStorage.getItem("deathMessage");
console.log(deathMessage);

window.onload = function () {
    document.getElementById("death-message").innerHTML = deathMessage;

    let username = sessionStorage.getItem("username");
    sessionStorage.clear();
    sessionStorage.setItem("username", username);
}

function restart() {
    window.location.href = "../../index.html";
}