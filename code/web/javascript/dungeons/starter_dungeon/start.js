const prompt = "ENTER THE DUNGEON";
const option_1 = "YES";
const option_1_response = function () {
    window.location.href = "room_1.html";
}
const option_2_response = function () {
    window.location.href = "../../../generic/death.html";
}
const option_2 = "NO";
const background_path = "../../../images/starter_dungeon/start/background.png";




window.onload = function () {
    document.getElementById("prompt").innerHTML = prompt;
    document.getElementById("option_1").innerHTML = option_1;
    document.getElementById("option_2").innerHTML = option_2;
    document.getElementById("background").src = background_path;


    const button_1 = document.getElementById("option_1");
    button_1.addEventListener("click", option_1_response);

    const button_2 = document.getElementById("option_2");
    button_2.addEventListener("click", option_2_response);
}

