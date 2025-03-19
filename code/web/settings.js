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
    document.getElementById("do-text-animations").innerHTML = `DO TEXT ANIMATIONS: ${settings.doTextAnimations == 1 ? "ON" : "OFF"}`;
    document.getElementById("text-animation-speed").value = 90 - settings.textAnimationSpeed;
    document.getElementById("slider-value").innerHTML = 90 - settings.textAnimationSpeed;
}


function changeDoTextAnimations() {
    settings.doTextAnimations = !settings.doTextAnimations;
    document.getElementById("do-text-animations").innerHTML = `DO TEXT ANIMATIONS: ${settings.doTextAnimations ? "ON" : "OFF"}`;
}

function changeTextAnimationSpeed(e) {
    settings.textAnimationSpeed = 90 - e.target.value;
    document.getElementById("slider-value").innerHTML = 90 - settings.textAnimationSpeed;
}

function saveAndReturn() {
    const username = sessionStorage.getItem("username");
    const query = `UPDATE settings SET doTextAnimations = ${settings.doTextAnimations ? 1 : 0}, textAnimationSpeed = ${settings.textAnimationSpeed} WHERE username = '${username}'`;
    makeDatabaseQuery(query).then(() => {
        window.location.href = "../../index.html";
    });
}


document.addEventListener("DOMContentLoaded", async () => {
    settings = await loadSettings();
    document.dispatchEvent(new Event("settingsLoaded"));
    console.log(settings);
    if (window.location.href.includes("settings.html")) {
        applySettings();
        document.getElementById("do-text-animations").addEventListener("click", changeDoTextAnimations);
        document.getElementById("text-animation-speed").addEventListener("input", changeTextAnimationSpeed);
    }
});