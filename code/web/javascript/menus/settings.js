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

function changeTextSize() {
    var e = document.getElementById("text-size");
    settings.textSize = e.value;
}

function saveAndReturn() {
    if (serverReachable) {
        const username = sessionStorage.getItem("username");
        const query = `UPDATE settings SET doTextAnimations = ${settings.doTextAnimations ? 1 : 0}, textAnimationSpeed = ${settings.textAnimationSpeed}, textSize = '${settings.textSize}' WHERE username = '${username}'`;
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
            document.getElementById("text-size").addEventListener("change", changeTextSize);
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
    }, 250);

});