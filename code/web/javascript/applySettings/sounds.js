const clickSound = new Audio(pathToRoot+"sounds/buttonclick.mp3");

const timerCountdownSound = new Audio(pathToRoot+"sounds/timercountdown.mp3");
timerCountdownSound.loop = true;

const backgroundmusic = new Audio(pathToRoot+"sounds/backgroundmusic.mp3");
backgroundmusic.loop = true;


document.addEventListener("settingsLoaded", () => {
    clickSound.volume = settings.musicVolume/100;
    timerCountdownSound.volume = settings.musicVolume/100;
    backgroundmusic.volume = settings.musicVolume/100;
    if(settings.soundEffects == '1'){
        if(window.location.href.includes("dungeons")){
            document.addEventListener("decisionLoaded", () => {
                document.querySelectorAll("button").forEach(button => {;
                    button.addEventListener("click", () => {
                        clickSound.play();
                    });
                });
            });

            document.addEventListener("timer-start", (event) => {
                console.log("Timer started, playing sound");
                timerCountdownSound.play().catch(error => console.log("Autoplay Blocked:", error));
            });

            document.addEventListener("timer-end", () => {
                console.log("Timer ended, stopping sound");
                timerCountdownSound.pause();
                timerCountdownSound.currentTime = 0;
            });

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


        } else {
            document.querySelectorAll("button").forEach(button => {
                button.addEventListener("click", () => {
                    clickSound.play();
                });
            });
        }

    }
});
