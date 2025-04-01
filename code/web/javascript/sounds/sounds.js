const clickSound = new Audio(pathToRoot+"sounds/buttonclick.mp3");

document.addEventListener("settingsLoaded", () => {
    if(settings.soundEffects == '1'){
        if(window.location.href.includes("dungeons")){
            document.addEventListener("decisionLoaded", () => {
                document.querySelectorAll("button").forEach(button => {
                    console.log("adding listener");
                    button.addEventListener("click", () => {
                        clickSound.play();
                        console.log("Play sould pls");
                    });
                });
            });
        } else {
            document.querySelectorAll("button").forEach(button => {
                console.log("adding listener");
                button.addEventListener("click", () => {
                    clickSound.play();
                    console.log("Play sould");
                });
            });
        }
    }
});

const timerCountdownSound = new Audio(pathToRoot+"sounds/timercountdown.mp3");
timerCountdownSound.loop = true;

document.addEventListener("DOMContentLoaded", () => {
    document.addEventListener("timer-start", (event) => {
        console.log("Timer started, playing sound");
        timerCountdownSound.play().catch(error => console.log("Autoplay Blocked:", error));
    });

    document.addEventListener("timer-end", () => {
        console.log("Timer ended, stopping sound");
        timerCountdownSound.pause();
        timerCountdownSound.currentTime = 0;
    })
})

const backgroundmusic = new Audio(pathToRoot+"sounds/backgroundmusic.mp3");
backgroundmusic.loop = true;
//backgroundmusic.volume = settings.musicVolume;
if(window.location.href.includes("dungeons")){
    document.addEventListener("DOMContentLoaded", () => {
        if(sessionStorage.getItem("musicPlaying") === "true"){
            backgroundmusic.play().catch(error => console.log("Autoplay Blocked:", error));
        }

        document.addEventListener("click", () => {
            if(backgroundmusic.paused){
                backgroundmusic.play().then(() => {
                    sessionStorage.setItem("musicPlaying", "true")
                }).catch(error => console.log("Autoplay Blocked:", error));
            }
        }), {once: true};
    });
}
