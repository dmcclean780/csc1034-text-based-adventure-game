document.getElementById("play-game-button").addEventListener("click", () => {
    setTimeout(() => {
        goToPlayGame();
    }, 250);

});

document.getElementById("statistics-button").addEventListener("click", () => {
    setTimeout(() => {
        goToStatistics();
    }, 250);
});

document.getElementById("settings-button").addEventListener("click", () => {
    setTimeout(() => {
        goToSettings();
    }, 250);
});

document.getElementById("log-out-button").addEventListener("click", () => {
    setTimeout(() => {
        goToLogin();
    }, 250);
});

document.getElementById("edit-account-button").addEventListener("click", () => {
    setTimeout(() => {
        goToEditAccount();
    }, 250);
});

document.getElementById("delete-account-button").addEventListener("click", () => {
    setTimeout(() => {
        goToDeleteAccount();
    }, 250);
});