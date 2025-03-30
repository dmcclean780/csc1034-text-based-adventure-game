

function goToPlayGame(){
    window.location.href = "html/menus/startGame.html";
}

function goToSettings(){
    window.location.href = "html/menus/settings.html";
}

function goToLogin(){
    sessionStorage.setItem("username", "");
    window.location.href = "html/menus/login.html";
}

function goToStatistics(){
   window.location.href="html/menus/statistics.html";
}

function backFromStartGame(){
    window.location.href = "../../index.html";
}

function goToNewGame(){
    window.location.href = "newGame.html";
}

function goToLoadGame(){
    window.location.href = "loadGame.html";
} 

function goToEditAccount(){
    window.location.href = "html/menus/editAccount.html";
}

function goToDeleteAccount(){
    window.location.href = "html/menus/deleteAccount.html";
}

function backFromLoadGame(){
    window.location.href = "startGame.html";
}

document.addEventListener("DOMContentLoaded", () => {
    if (sessionStorage.getItem("username") === null || sessionStorage.getItem("username") === "") {
        window.location.href = pathToRoot+"html/menus/login.html";
    }
});
