//This obj will be fetched from sql and changed in the settings page
let settings;

async function loadSettings() {
    const username = sessionStorage.getItem("username");
    const query = `SELECT * FROM settings WHERE username = '${username}'`;
    const result = await makeDatabaseQuery(query);
    if (result && result.length > 0) {

        return result[0];
    }
}


function applySettings() {
    var savedSize = settings.textSize;

    document.getElementById("do-text-animations").innerHTML = `DO TEXT ANIMATIONS: ${settings.doTextAnimations == 1 ? "ON" : "OFF"}`;
    document.getElementById("sound-effects").innerHTML = `SOUND EFFECTS: ${settings.soundEffects == 1 ? "ON" : "OFF"}`;
    document.getElementById("text-animation-speed").value = 90 - settings.textAnimationSpeed;
    document.getElementById("slider-value").innerHTML = 90 - settings.textAnimationSpeed;
    document.getElementById("music-volume").value = settings.musicVolume;
    document.getElementById("music-slider-value").value = settings.musicVolume;
    document.getElementById("text-size-value").innerHTML = savedSize;


    if(savedSize == "Small")
    {
        document.getElementById("text-size").value = 1;
    }
    else if(savedSize == "Medium")
    {
        document.getElementById("text-size").value = 2;
    }
    else if(savedSize == "Large")
    {
        document.getElementById("text-size").value = 3;
    }
}

function changeDoTextAnimations() {
    settings.doTextAnimations = !settings.doTextAnimations;
    document.getElementById("do-text-animations").innerHTML = `DO TEXT ANIMATIONS: ${settings.doTextAnimations ? "ON" : "OFF"}`;
}

function changeSoundEffects() {
    settings.soundEffects = !settings.soundEffects;
    document.getElementById("sound-effects").innerHTML = `SOUND EFFECTS: ${settings.soundEffects ? "ON" : "OFF"}`;
}

function changeTextAnimationSpeed(e) {
    settings.textAnimationSpeed = 90 - e.target.value;
    document.getElementById("slider-value").innerHTML = 90 - settings.textAnimationSpeed;
}

function changeMusicVolume(e) {
    settings.musicVolume = e.target.value;
    document.getElementById("music-slider-value").innerHTML = settings.musicVolume;
}

function changeTextSize(e) {
    if(e.target.value == 1)
    {
        console.log(1);
        settings.textSize = "Small";
        document.getElementById("text-size-value").innerHTML = "Small";
    }
    else if(e.target.value == 2)
    {
        console.log(2);
        settings.textSize = "Medium";
        document.getElementById("text-size-value").innerHTML = "Medium";
    }
    else if(e.target.value == 3)
    {
        console.log(3);
        settings.textSize = "Large";
        document.getElementById("text-size-value").innerHTML = "Large";
    }
}

function saveAndReturn() {
    if (serverReachable) {
        const username = sessionStorage.getItem("username");
        const query = `UPDATE settings SET doTextAnimations = ${settings.doTextAnimations ? 1 : 0}, textAnimationSpeed = ${settings.textAnimationSpeed}, soundEffects = ${settings.soundEffects}, musicVolume = ${settings.musicVolume}, textSize = '${settings.textSize}' WHERE username = '${username}'`;

        makeDatabaseQuery(query).then(() => {
            window.location.href = "../../index.html";
        });
    } else {
        alert("Server Unreachable - Unable To Change Settings")
        window.location.href = "../../index.html";
    }
}


document.addEventListener("DOMContentLoaded", async () => {
    setTimeout(async () => {
        if (serverReachable) {
            document.getElementById("do-text-animations").addEventListener("click", changeDoTextAnimations);
            document.getElementById("text-animation-speed").addEventListener("input", changeTextAnimationSpeed);
            document.getElementById("sound-effects").addEventListener("click", changeSoundEffects);
            document.getElementById("music-volume").addEventListener("input", changeMusicVolume);
            document.getElementById("text-size").addEventListener("input", changeTextSize);
            if (serverReachable && settings == null) {
                try {
                    settings = await querySettings();
                    if (window.location.href.includes("settings.html")) {
                        applySettings();
                    }
                } catch (error) {
                    console.error("Error loading settings:", error);
                    alert("An error occurred. Please try again later.");
                }
            }
        }
    }, 500);

});