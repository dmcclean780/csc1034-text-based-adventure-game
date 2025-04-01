document.getElementById("new-game-button").addEventListener("click", () => {
    setTimeout(() => {
        goToNewGame();
    }, 250);
});

document.getElementById("load-game-button").addEventListener("click", () => {
    setTimeout(() => {
        goToLoadGame();
    }, 250);
});

document.getElementById("return-button").addEventListener("click", () => {
    setTimeout(() => {
        backFromStartGame();
    }, 250);
});