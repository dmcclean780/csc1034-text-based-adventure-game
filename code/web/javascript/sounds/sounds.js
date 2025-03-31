const clickSound = new Audio(pathToRoot+"sounds/buttonclick.mp3");

document.querySelectorAll("button").forEach(button => {
    button.addEventListener("click", () => {
        clickSound.play();
    });
});

const timerCountdownSound = new Audio(pathToRoot+"sounds/timercountdown.mp3");

const backgroundmusic = new Audio(pathToRoot+"sounds/backgroundmusic.mp3");
backgroundmusic.loop = true;

document.getElementById("submit").addEventListener("click", () => {
    backgroundmusic.play().catch(error => console.log("Autoplay Blocked:", error));
});

window.addEventListener("load", playBackgroundMusic);
