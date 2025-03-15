//This obj will be fetched from sql and changed in the settings page
//loadSettings() will be called in the settings page and set the setting obj state according to the sql

let settings = {
    doTextAnimations: false,
    textAnimationSpeed: 30, //controlled by slider with values 20 - 70
}

function applySettings(){
    console.log('Applying settings');
    document.getElementById("do-text-animations").innerHTML = `DO TEXT ANIMATIONS: ${settings.doTextAnimations ? "ON" : "OFF"}`;
    document.getElementById("text-animation-speed").value = 90 - settings.textAnimationSpeed;
    document.getElementById("slider-value").innerHTML = 90 - settings.textAnimationSpeed;
}


function changeDoTextAnimations(){
    settings.doTextAnimations = !settings.doTextAnimations;
    document.getElementById("do-text-animations").innerHTML = `DO TEXT ANIMATIONS: ${settings.doTextAnimations ? "ON" : "OFF"}`;
}

function changeTextAnimationSpeed(e){
    settings.textAnimationSpeed = 90 - e.target.value;
    document.getElementById("slider-value").innerHTML = 90 - settings.textAnimationSpeed;
}

document.addEventListener("DOMContentLoaded", () => {
    applySettings();
    document.getElementById("do-text-animations").addEventListener("click", changeDoTextAnimations);
    document.getElementById("text-animation-speed").addEventListener("input", changeTextAnimationSpeed);
});

function saveAndReturn(){
    window.location.href = "../../index.html";
}