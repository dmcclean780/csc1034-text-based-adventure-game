//This obj will be fetched from sql and changed in the settings page
let settings = {
    doTextAnimations: true,
    textAnimationSpeed: 30, //controlled by slider with values 20 - 70
}

function loadSettings(){
    const username = sessionStorage.getItem("username");
    const query = `SELECT * FROM settings WHERE username = '${username}'`;
    makeDatabaseQuery(query).then((result) => {
        if(result && result.length > 0){
            settings = result[0];
            applySettings();
        }
    });
}


function applySettings(){
    document.getElementById("do-text-animations").innerHTML = `DO TEXT ANIMATIONS: ${settings.doTextAnimations == 1 ? "ON" : "OFF"}`;
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
    loadSettings();
    document.getElementById("do-text-animations").addEventListener("click", changeDoTextAnimations);
    document.getElementById("text-animation-speed").addEventListener("input", changeTextAnimationSpeed);
});

function saveAndReturn(){
    const username = sessionStorage.getItem("username");
    const query = `UPDATE settings SET doTextAnimations = ${settings.doTextAnimations ? 1 : 0}, textAnimationSpeed = ${settings.textAnimationSpeed} WHERE username = '${username}'`;
    makeDatabaseQuery(query).then(() => {
        window.location.href = "../../index.html";
    });
}