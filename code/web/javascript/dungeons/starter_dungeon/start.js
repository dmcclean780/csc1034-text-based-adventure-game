/**
    All these constants can be stored in the SQL database in the future
    This code is purley temporary and does not represent the final design
    ATM just use each decision as a seperate html and link them. 
*/

// const start_html ="   <div class=\"details-box\"> " +
//     "       <div id=\"details\"> " + 
//     "       </div> " +
//     "    </div> " +
//     "    <div class=\"input-box\"> " +
//     "       <div id=\"prompt\"> " +
//     "       </div> " +
//     "       <timer-bar id=\"timer-bar\" ></timer-bar> " +
//     "       <div class=\"options\"> " +
//     "           <button class=\"button_option\" id=\"option_1\" ></button> " +
//     "           <button class=\"button_option\" id=\"option_2\" ></button> " +
//     "       </div> " +
//     "   </div> ";
// const input_prompt = "ENTER THE CAVE?";
// const option_1 = "YES";
// const option_2 = "NO";
// const details = "As you rise from the ground, you find yourself in a forest glade with a single cave to exit. You can feel your Death calling for your return if you remain.";
// const timerDuration = 30;
// const option_1_response = eval("(function () {loadNextRoom(0)})");
// const option_2_response = eval("(function () {window.location.href = \"../generic/death.html\";localStorage['deathMessage'] = \"You have chosen to return to Death's embrace\";})");
// const background_path = "../../images/starter_dungeon/start/background.png";
// const timerResponse = eval("(function () {window.location.href = \"../generic/death.html\";localStorage['deathMessage'] = \"Indescision allowed Death to renew it's claim on You\";})");


// document.addEventListener("DOMContentLoaded", () => {
//     loadStart()
//     localStorage['possibleNextDecisions'] = '1';//Some method to get a string of possible next decisionIDs for a decision
// });

// //This will be stored in the database and constant names will be replaced with appropriate SQL or other accessing method
// function loadStart(){
//     document.getElementById("input-box-container").innerHTML = start_html
//     document.getElementById("prompt").innerHTML = input_prompt;
//     document.getElementById("option_1").innerHTML = option_1;
//     document.getElementById("option_2").innerHTML = option_2;
//     document.getElementById("background").src = background_path;
//     document.getElementById("details").innerHTML = details
//     document.getElementById("timer-bar").duration = timerDuration;
//     //document.getElementById("timer-bar").onCompleteCallback = timerResponse;


//     const button_1 = document.getElementById("option_1");
//     button_1.addEventListener("click", option_1_response);

//     const button_2 = document.getElementById("option_2");
//     button_2.addEventListener("click", option_2_response);
// }

// /**
//  * All Decisions in Dungeons should use this method to choose the next decison to load
//  * @param {*} nextDecisionIDIndex Index of the chosen next decisionID in the list of possible next decisionIDs
//  */
// function loadNextRoom(nextDecisionIDIndex){
//     nextDecisionID = localStorage['possibleNextDecisions'][nextDecisionIDIndex];//Accessed as an array of possible next decisionIDs
//     console.log(nextDecisionID); //be replaced by a method to get and call the load function stored at the appropriate descision
//     localStorage['currentDecisionID'] = nextDecisionID;
// }

function startOpt1() {
    window.location.href = "enter_the_cave.html";
}

function startOpt2() {
    window.location.href = "../../generic/death.html";
    localStorage['deathMessage'] = "You have chosen to return to Death's embrace";
}

function startTimerComplete() {
    window.location.href = "../../generic/death.html";
    localStorage['deathMessage'] = "Indescision allowed Death to renew it's claim on You";
}

function loadStart() {
    document.getElementById("timer-bar").onCompleteCallback = startTimerComplete;
    document.getElementById("option_1").onclick = startOpt1;
    document.getElementById("option_2").onclick = startOpt2;
}



function enterCaveOpt1(){
    window.location.href = "follow_wall.html";
}

function enterCaveOpt2(){
    window.location.href = "follow_wind_no_lantern.html";
}

function loadEnterCave(){
    document.getElementById("option_1").onclick = enterCaveOpt1;
    document.getElementById("option_2").onclick = enterCaveOpt2;
}



function followWallOpt1(){
    document.getElementById("details").innerHTML = "It is still too dark for you to navigate well in the rest of the cave. You should try to find a way to create a light source.";
    document.getElementById("prompt").innerHTML = "DO YOU WANT TO LEAVE ANYWAY?"
    document.getElementById("option_1").innerHTML = "YES";
    document.getElementById("option_2").innerHTML = "NO, LOOK AROUND";
    document.getElementById("option_1").onclick = startOpt1;
    document.getElementById("option_2").onclick = followWallOpt2;
}

function followWallOpt2(){
    window.location.href = "look_around.html";
}

function loadFollowWall(){
    document.getElementById("option_1").onclick = followWallOpt1;
    document.getElementById("option_2").onclick = followWallOpt2;
}

function lookAroundOpt1(){
    document.getElementById("details").innerHTML = "The walls are smooth, it is not possible to climb them to the natural light above. You should try to find a way to create a light source.";
    
}

function lookAroundOpt2(){
    document.getElementById("details").innerHTML = "This used to be a grave robber, he clutches a lantern in his hand. You can take it and use it to light your way.";
    document.getElementById("option_2").innerHTML = "TAKE THE LANTERN AND LEAVE";
    document.getElementById("option_2").onclick = () => {window.location.href = "light_the_brazier.html";};
}

function lookAroundOpt3(){
    document.getElementById("details").innerHTML = "The floor bears remnants of old ornate tiles that used to lay here. You find remnants of an old campsite";
}

function loadLookAround(){
    document.getElementById("option_1").onclick = lookAroundOpt1;
    document.getElementById("option_2").onclick = lookAroundOpt2;
    document.getElementById("option_3").onclick = lookAroundOpt3;
}


function followWindOpt1(){
    window.location.href = "../../generic/death.html";
    localStorage['deathMessage'] = "Your Overconfidence in your navigation skills led you to your death";
}

function followWindOpt2(){
    window.location.href = "find_another_way.html";
}

function loadFollowWind(){
    document.getElementById("option_1").onclick = followWindOpt1;
    document.getElementById("option_2").onclick = followWindOpt2;
}




function findAnotherWayOpt(){
    window.location.href = "follow_wall.html";
}

function loadFindAnoutherWay(){
    document.getElementById("option_1").onclick = findAnotherWayOpt;
}

function findAnotherWayOpt(){
    window.location.href = "follow_wall.html";
}

function loadFindAnoutherWay(){
    document.getElementById("option_1").onclick = findAnotherWayOpt;
}



function lightBrazierOpt1(){
    window.location.href = "brazier_lit.html";
}

function lightBrazierOpt2(){
    window.location.href = "brazier_not_lit.html";
}

function loadLightBrazier(){
    document.getElementById("option_1").onclick = lightBrazierOpt1;
    document.getElementById("option_2").onclick = lightBrazierOpt2;
}



function brazierLitOpt1(){
    window.location.href = "squeeze_through_the_crack.html";
}

function brazierLitOpt2(){
    console.log("follow wind with lantern")
}

function loadBrazierLit(){
    document.getElementById("option_1").onclick = brazierLitOpt1;
    document.getElementById("option_2").onclick = brazierLitOpt2;
}



function squeezeThroughCrackOpt1(){
    
    document.getElementById("popup-menu").setAttribute("contentTitle", "Chest Contents");
    document.getElementById("popup-menu").setAttribute("content", "Gold x100, Jar of Oil x1");
    document.getElementById("popup-menu").setAttribute("contentType", "list");
    document.getElementById("popup-menu").style.display= "block";
    document.getElementById("popup-menu").render();
    document.getElementById("option_1").style.display = "none";
    localStorage['chestOpened'] = true;
}

function squeezeThroughCrackOpt2(){
    document.getElementById("option_2").style.display = "none"; 
    localStorage['sarcophagusOpened'] = true;
    window.location.href = "open_sarcophagus.html"; 
}

function squeezeThroughCrackOpt3(){
    window.location.href = "tomb_next_chamber.html"; 
}

function loadSqueezeThroughCrack(){
    if(localStorage['chestOpened'] == "true"){
        document.getElementById("option_1").style.display = "none";
    }
    if(localStorage['sarcophagusOpened'] == "true"){
        document.getElementById("option_2").style.display = "none";
    }
    if(localStorage['chestOpened'] == "true" && localStorage['sarcophagusOpened'] == "true"){
        document.getElementById("details").innerHTML = "You have fully explored this room. You should return to the main chamber and continue your journey";
    }
    document.getElementById("option_1").onclick = squeezeThroughCrackOpt1;
    document.getElementById("option_2").onclick = squeezeThroughCrackOpt2;
    document.getElementById("option_3").onclick = squeezeThroughCrackOpt3;
}



function openSarchophagusOpt1(){
    document.getElementById("popup-menu").setAttribute("contentTitle", "Old Tome");
    document.getElementById("popup-menu").setAttribute("content", "THE TEXT CONTENT OF THE OLD TOME");
    document.getElementById("popup-menu").setAttribute("contentType", "text");
    document.getElementById("popup-menu").style.display= "block";
    document.getElementById("popup-menu").render();
    document.getElementById("option_1").style.display = "none"; 
}

function openSarchophagusOpt2(){
    window.location.href = "squeeze_through_the_crack.html";
    document.getElementById("option_2").style.display = "none";
}

function loadOpenSarchophagus(){
    document.getElementById("option_1").onclick = openSarchophagusOpt1;
    document.getElementById("option_2").onclick = openSarchophagusOpt2;
}



function tombNextChamberOpt1(){
    localStorage['walkDownCorridor'] = true;
    window.location.href = "wake_the_skeletons.html";
}

function tombNextChamberOpt2(){
    localStorage['openSarcophogi'] = true;
    window.location.href = "wake_the_skeletons.html";
}

function loadTombNextChamber(){
    localStorage['openSarcophogi'] = false;
    localStorage['walkDownCorridor'] = false;
    document.getElementById("option_1").onclick = tombNextChamberOpt1;
    document.getElementById("option_2").onclick = tombNextChamberOpt2;
}



function wakeTheSkeletonsOpt1(){
    window.location.href = "fight_the_skeletons.html";
}

function loadWakeTheSkeletons(){
    if(localStorage['walkDownCorridor'] == "true"){
        document.getElementById("details").innerHTML = "As You walk down the corridor the oppressive chill becomes stronger but you continue forward. When you are half way accross the corridorr all of the sarcophogi open and skeletons rise from them. You must fight your way through to the other side";
    }
    if(localStorage['openSarcophogi'] == "true"){
        document.getElementById("details").innerHTML = "You pry open the lid of the closest sarcophagus and find a skeleton clad in ancient armor. As you leave the sarcophagus all the other sarcophogi open and skeletons rise from them. You must fight your way through to the other side";
    }
    document.getElementById("option_1").onclick = wakeTheSkeletonsOpt1;
}


function fightTheSkeletonsOpt1(){
    window.location.href = "enter_melee.html";
}

function fightTheSkeletonsOpt2(){
    window.location.href = "investigate_rope.html";
}

function loadFightTheSkeletons(){
    document.getElementById("option_1").onclick = fightTheSkeletonsOpt1;
    document.getElementById("option_2").onclick = fightTheSkeletonsOpt2;
}


function investigateRopeOpt1(){
    window.location.href = "burn_the_rope.html";
}

function investigateRopeOpt2(){
    window.location.href = "enter_melee.html";
}

function loadInvestigateRope(){
    document.getElementById("option_1").onclick = investigateRopeOpt1;
    document.getElementById("option_2").onclick = investigateRopeOpt2;
}


function burnTheRopeOpt1(){
    window.location.href = "boss_antechamber.html";
}

function loadBurnTheRope(){
    document.getElementById("option_1").onclick = burnTheRopeOpt1;
}

function enterMeleeOpt1(){
    window.location.href = "boss_antechamber.html";
}

function loadEnterMelee(){
    document.getElementById("option_1").onclick = enterMeleeOpt1;
}





window.addEventListener('load', () => {
    console.log(window.location.href.split('/').pop());
    if(window.location.href.split('/').pop() == "starter_dungeon.html") {
        localStorage.clear();
        loadStart()
    } else if(window.location.href.split('/').pop() == "enter_the_cave.html") {
        loadEnterCave()
    } else if(window.location.href.split('/').pop() == "follow_wall.html") {
        loadFollowWall()
    } else if(window.location.href.split('/').pop() == "follow_wind_no_lantern.html") {
        loadFollowWind()
    } else if(window.location.href.split('/').pop() == "find_another_way.html") {
        loadFindAnoutherWay()
    } else if(window.location.href.split('/').pop() == "light_the_brazier.html") {
        loadLightBrazier()
    }  else if(window.location.href.split('/').pop() == "look_around.html") {
        loadLookAround()
    } else if(window.location.href.split('/').pop() == "brazier_lit.html") {
        loadBrazierLit()
    } else if(window.location.href.split('/').pop() == "squeeze_through_the_crack.html") {
        loadSqueezeThroughCrack()
    } else if(window.location.href.split('/').pop() == "open_sarcophagus.html") {
        loadOpenSarchophagus()
    } else if(window.location.href.split('/').pop() == "tomb_next_chamber.html") {
        loadTombNextChamber()
    } else if(window.location.href.split('/').pop() == "wake_the_skeletons.html") {
        loadWakeTheSkeletons()
    } else if(window.location.href.split('/').pop() == "fight_the_skeletons.html") {
        loadFightTheSkeletons()
    } else if(window.location.href.split('/').pop() == "investigate_rope.html") {
        loadInvestigateRope()
    } else if(window.location.href.split('/').pop() == "burn_the_rope.html") {
        loadBurnTheRope()
    } else if(window.location.href.split('/').pop() == "enter_melee.html") {
        loadEnterMelee()
    }
});