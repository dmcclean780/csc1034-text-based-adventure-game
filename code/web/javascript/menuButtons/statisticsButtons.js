document.getElementById("global-analytics-button").addEventListener("click", () => {
    setTimeout(() => {
        goToGloalAnalytics();
    }, 250);
});

document.getElementById("user-analytics-button").addEventListener("click", () => {
    setTimeout(() => {
        goToUserAnalytics();
    }, 250);
});

document.getElementById("achievments-button").addEventListener("click", () => {
    setTimeout(() => {
        goToAchievements();
    }, 250);
});

document.getElementById("return-button").addEventListener("click", () => {
    setTimeout(() => {
        backFromStartGame();
    }, 250);
});