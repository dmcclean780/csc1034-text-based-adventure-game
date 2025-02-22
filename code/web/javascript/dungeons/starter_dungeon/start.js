import { runTimerBar } from "../../utils/timerBar.js";

/**
    All these constants can be stored in the SQL database in the future 
*/

const details = "As you rise from the ground, you find yourself in a forest glade with a single cave to exit. " +
    "You can feel your Death calling for your return if you remain.";

const prompt = "ENTER THE CAVE?";

const option_1 = "YES";
const option_1_response = eval("(function () {window.location.href = \"room_1.html\";})")
const option_2 = "NO";
const option_2_response = eval("(function () {window.location.href = \"../../generic/death.html\";localStorage['deathMessage'] = \"You have chosen to return to Death's embrace\";})");

const background_path = "../../../images/starter_dungeon/start/background.png";

const initailTimerLength = 30;
const timerResponse = eval("(function () {window.location.href = \"../../generic/death.html\";localStorage['deathMessage'] = \"Indescision allowed Death to renew it's claim on You\";})");





window.onload = function () {
    document.getElementById("prompt").innerHTML = prompt;
    document.getElementById("option_1").innerHTML = option_1;
    document.getElementById("option_2").innerHTML = option_2;
    document.getElementById("background").src = background_path;
    document.getElementById("details").innerHTML = details
    document.getElementById("timer-time").innerHTML = initailTimerLength;


    const button_1 = document.getElementById("option_1");
    button_1.addEventListener("click", option_1_response);

    const button_2 = document.getElementById("option_2");
    button_2.addEventListener("click", option_2_response);

    runTimerBar(initailTimerLength)
}


