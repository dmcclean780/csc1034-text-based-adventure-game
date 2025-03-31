

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

function goToGloalAnalytics(){
    window.location.href = "globalAnalytics.html";
}

function goToUserAnalytics(){
    window.location.href = "userAnalytics.html";
}

function goToAchievements(){
    window.location.href = "achievements.html";
}

function backToStatistics(){
    window.location.href = "statistics.html";
}

function goToGameSummary(characterID){
    sessionStorage.setItem("lastPage", window.location.href);
    sessionStorage.setItem("characterID", characterID);
    window.location.href = pathToRoot+"html/menus/gameSummary.html";
}

function backToLastPage(){
    window.location.href = sessionStorage.getItem("lastPage");
}

document.addEventListener("DOMContentLoaded", () => {
    if (sessionStorage.getItem("username") === null || sessionStorage.getItem("username") === "") {
        window.location.href = pathToRoot+"html/menus/login.html";
    }
});
