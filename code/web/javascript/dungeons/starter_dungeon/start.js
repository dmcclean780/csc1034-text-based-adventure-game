/**
    All these constants can be stored in the SQL database in the future 
*/
const start_html ="   <div class=\"details-box\"> " +
    "       <div id=\"details\"> " + 
    "       </div> " +
    "    </div> " +
    "    <div class=\"input-box\"> " +
    "       <div id=\"prompt\"> " +
    "       </div> " +
    "       <timer-bar id=\"timer-bar\" ></timer-bar> " +
    "       <div class=\"options\"> " +
    "           <button id=\"option_1\" ></button> " +
    "           <button id=\"option_2\" ></button> " +
    "       </div> " +
    "   </div> ";
const input_prompt = "ENTER THE CAVE?";
const option_1 = "YES";
const option_2 = "NO";
const details = "As you rise from the ground, you find yourself in a forest glade with a single cave to exit. You can feel your Death calling for your return if you remain.";
const timerDuration = 30;
const option_1_response = eval("(function () {loadNextRoom(0)})");
const option_2_response = eval("(function () {window.location.href = \"../generic/death.html\";localStorage['deathMessage'] = \"You have chosen to return to Death's embrace\";})");
const background_path = "../../images/starter_dungeon/start/background.png";
const timerResponse = eval("(function () {window.location.href = \"../generic/death.html\";localStorage['deathMessage'] = \"Indescision allowed Death to renew it's claim on You\";})");


document.addEventListener("DOMContentLoaded", () => {
    loadStart()
    localStorage['possibleNextDecisions'] = '1';//Some method to get a string of possible next decisionIDs for a decision
});

//This will be stored in the database and constant names will be replaced with appropriate SQL or other accessing method
function loadStart(){
    document.getElementById("input-box-container").innerHTML = start_html
    document.getElementById("prompt").innerHTML = input_prompt;
    document.getElementById("option_1").innerHTML = option_1;
    document.getElementById("option_2").innerHTML = option_2;
    document.getElementById("background").src = background_path;
    document.getElementById("details").innerHTML = details
    document.getElementById("timer-bar").duration = timerDuration;
    document.getElementById("timer-bar").onCompleteCallback = timerResponse;


    const button_1 = document.getElementById("option_1");
    button_1.addEventListener("click", option_1_response);

    const button_2 = document.getElementById("option_2");
    button_2.addEventListener("click", option_2_response);
}

/**
 * All Decisions in Dungeons should use this method to choose the next decison to load
 * @param {*} nextDecisionIDIndex Index of the chosen next decisionID in the list of possible next decisionIDs
 */
function loadNextRoom(nextDecisionIDIndex){
    nextDecisionID = localStorage['possibleNextDecisions'][nextDecisionIDIndex];//Accessed as an array of possible next decisionIDs
    console.log(nextDecisionID); //be replaced by a method to get and call the load function stored at the appropriate descision
    localStorage['currentDecisionID'] = nextDecisionID;
}


