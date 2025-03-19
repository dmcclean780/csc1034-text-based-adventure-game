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

function backFromStartGame(){
    window.location.href = "../../index.html";
}

function goToLoadGame(){
    window.location.href = "loadGame.html";
}

function backFromLoadGame(){
    window.location.href = "startGame.html";
}