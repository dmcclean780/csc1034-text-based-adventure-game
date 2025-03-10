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



function enterCaveOpt1() {
    window.location.href = "follow_wall.html";
}

function enterCaveOpt2() {
    window.location.href = "follow_wind_no_lantern.html";
}

function loadEnterCave() {
    document.getElementById("option_1").onclick = enterCaveOpt1;
    document.getElementById("option_2").onclick = enterCaveOpt2;
}



function followWallOpt1() {
    document.getElementById("details").innerHTML = "It is still too dark for you to navigate well in the rest of the cave. You should try to find a way to create a light source.";
    document.getElementById("prompt").innerHTML = "DO YOU WANT TO LEAVE ANYWAY?"
    document.getElementById("option_1").innerHTML = "YES";
    document.getElementById("option_2").innerHTML = "NO, LOOK AROUND";
    document.getElementById("option_1").onclick = startOpt1;
    document.getElementById("option_2").onclick = followWallOpt2;
}

function followWallOpt2() {
    window.location.href = "look_around.html";
}

function loadFollowWall() {
    document.getElementById("option_1").onclick = followWallOpt1;
    document.getElementById("option_2").onclick = followWallOpt2;
}



function lookAroundOpt1() {
    document.getElementById("details").innerHTML = "The walls are smooth, it is not possible to climb them to the natural light above. You should try to find a way to create a light source.";

}

function lookAroundOpt2() {
    document.getElementById("details").innerHTML = "This used to be a grave robber, he clutches a lantern in his hand. You can take it and use it to light your way.";
    document.getElementById("option_2").innerHTML = "TAKE THE LANTERN AND LEAVE";
    document.getElementById("option_2").onclick = () => { window.location.href = "light_the_brazier.html"; };
}

function lookAroundOpt3() {
    document.getElementById("details").innerHTML = "The floor bears remnants of old ornate tiles that used to lay here. You find remnants of an old campsite";
}

function loadLookAround() {
    document.getElementById("option_1").onclick = lookAroundOpt1;
    document.getElementById("option_2").onclick = lookAroundOpt2;
    document.getElementById("option_3").onclick = lookAroundOpt3;
}


function followWindOpt1() {
    window.location.href = "../../generic/death.html";
    localStorage['deathMessage'] = "Your Overconfidence in your navigation skills led you to your death";
}

function followWindOpt2() {
    window.location.href = "find_another_way.html";
}

function loadFollowWind() {
    document.getElementById("option_1").onclick = followWindOpt1;
    document.getElementById("option_2").onclick = followWindOpt2;
}




function findAnotherWayOpt() {
    window.location.href = "follow_wall.html";
}

function loadFindAnoutherWay() {
    document.getElementById("option_1").onclick = findAnotherWayOpt;
}

function findAnotherWayOpt() {
    window.location.href = "follow_wall.html";
}

function loadFindAnoutherWay() {
    document.getElementById("option_1").onclick = findAnotherWayOpt;
}



function lightBrazierOpt1() {
    window.location.href = "brazier_lit.html";
}

function lightBrazierOpt2() {
    window.location.href = "brazier_not_lit.html";
}

function loadLightBrazier() {
    document.getElementById("option_1").onclick = lightBrazierOpt1;
    document.getElementById("option_2").onclick = lightBrazierOpt2;
}



function brazierLitOpt1() {
    window.location.href = "squeeze_through_the_crack.html";
}

function brazierLitOpt2() {
    window.location.href = "follow_wind_lantern.html";
}

function loadBrazierLit() {
    document.getElementById("option_1").onclick = brazierLitOpt1;
    document.getElementById("option_2").onclick = brazierLitOpt2;
}



function squeezeThroughCrackOpt1() {

    document.getElementById("popup-menu").setAttribute("contentTitle", "Chest Contents");
    document.getElementById("popup-menu").setAttribute("content", "Gold x100, Jar of Oil x1");
    document.getElementById("popup-menu").setAttribute("contentType", "list");
    document.getElementById("popup-menu").style.display = "block";
    document.getElementById("popup-menu").render();
    document.getElementById("option_1").style.display = "none";
    localStorage['chestOpened'] = true;
    localStorage['hasOil'] = true; //This is a temporary solution to the oil being used in the future will be replaced with inventory system
}

function squeezeThroughCrackOpt2() {
    document.getElementById("option_2").style.display = "none";
    localStorage['sarcophagusOpened'] = true;
    window.location.href = "open_sarcophagus.html";
}

function squeezeThroughCrackOpt3() {
    window.location.href = "tomb_next_chamber.html";
}

function loadSqueezeThroughCrack() {
    if (localStorage['chestOpened'] == "true") {
        document.getElementById("option_1").style.display = "none";
    }
    if (localStorage['sarcophagusOpened'] == "true") {
        document.getElementById("option_2").style.display = "none";
    }
    if (localStorage['chestOpened'] == "true" && localStorage['sarcophagusOpened'] == "true") {
        document.getElementById("details").innerHTML = "You have fully explored this room. You should return to the main chamber and continue your journey";
    }
    document.getElementById("option_1").onclick = squeezeThroughCrackOpt1;
    document.getElementById("option_2").onclick = squeezeThroughCrackOpt2;
    document.getElementById("option_3").onclick = squeezeThroughCrackOpt3;
}



function openSarchophagusOpt1() {
    document.getElementById("popup-menu").setAttribute("contentTitle", "Old Tome");
    document.getElementById("popup-menu").setAttribute("content", "THE TEXT CONTENT OF THE OLD TOME");
    document.getElementById("popup-menu").setAttribute("contentType", "text");
    document.getElementById("popup-menu").style.display = "block";
    document.getElementById("popup-menu").render();
    document.getElementById("option_1").style.display = "none";
}

function openSarchophagusOpt2() {
    window.location.href = "squeeze_through_the_crack.html";
    document.getElementById("option_2").style.display = "none";
}

function loadOpenSarchophagus() {
    document.getElementById("option_1").onclick = openSarchophagusOpt1;
    document.getElementById("option_2").onclick = openSarchophagusOpt2;
}



function tombNextChamberOpt1() {
    localStorage['walkDownCorridor'] = true;
    window.location.href = "wake_the_skeletons.html";
}

function tombNextChamberOpt2() {
    localStorage['openSarcophogi'] = true;
    window.location.href = "wake_the_skeletons.html";
}

function loadTombNextChamber() {
    localStorage['openSarcophogi'] = false;
    localStorage['walkDownCorridor'] = false;
    document.getElementById("option_1").onclick = tombNextChamberOpt1;
    document.getElementById("option_2").onclick = tombNextChamberOpt2;
}



function wakeTheSkeletonsOpt1() {
    window.location.href = "fight_the_skeletons.html";
}

function loadWakeTheSkeletons() {
    if (localStorage['walkDownCorridor'] == "true") {
        document.getElementById("details").innerHTML = "As You walk down the corridor the oppressive chill becomes stronger but you continue forward. When you are half way accross the corridorr all of the sarcophogi open and skeletons rise from them. You must fight your way through to the other side";
    }
    if (localStorage['openSarcophogi'] == "true") {
        document.getElementById("details").innerHTML = "You pry open the lid of the closest sarcophagus and find a skeleton clad in ancient armor. As you leave the sarcophagus all the other sarcophogi open and skeletons rise from them. You must fight your way through to the other side";
    }
    document.getElementById("option_1").onclick = wakeTheSkeletonsOpt1;
}


function fightTheSkeletonsOpt1() {
    window.location.href = "enter_melee.html";
}

function fightTheSkeletonsOpt2() {
    window.location.href = "investigate_rope.html";
}

function loadFightTheSkeletons() {
    document.getElementById("option_1").onclick = fightTheSkeletonsOpt1;
    document.getElementById("option_2").onclick = fightTheSkeletonsOpt2;
}


function investigateRopeOpt1() {
    window.location.href = "burn_the_rope.html";
}

function investigateRopeOpt2() {
    window.location.href = "enter_melee.html";
}

function loadInvestigateRope() {
    document.getElementById("option_1").onclick = investigateRopeOpt1;
    document.getElementById("option_2").onclick = investigateRopeOpt2;
}


function burnTheRopeOpt1() {
    window.location.href = "boss_antechamber.html";
}

function loadBurnTheRope() {
    document.getElementById("option_1").onclick = burnTheRopeOpt1;
}



function enterMeleeOpt1() {
    window.location.href = "boss_antechamber.html";
}

function loadEnterMelee() {
    localStorage['meleeEntered'] = true;
    document.getElementById("option_1").onclick = enterMeleeOpt1;
}



function brazierNotLitOpt1() {
    window.location.href = "follow_wind_lantern.html";
}

function brazierNotLitOpt2() {
    window.location.href = "brazier_lit.html";
}

function loadBrazierNotLit() {
    document.getElementById("option_1").onclick = brazierNotLitOpt1;
    document.getElementById("option_2").onclick = brazierNotLitOpt2;
}



function followWindLanternOpt1() {
    window.location.href = "move_on_underside.html";
}

function followWindLanternOpt2() {
    window.location.href = "crouch_and_continue.html";
}

function loadFollowWindLantern() {
    document.getElementById("option_1").onclick = followWindLanternOpt1;
    document.getElementById("option_2").onclick = followWindLanternOpt2;
}



function moveOnUndersideOpt1() {
    window.location.href = "boss_antechamber.html";
}

function loadMoveOnUnderside() {
    document.getElementById("option_1").onclick = moveOnUndersideOpt1;
}



function crouchAndContinueOpt1() {
    window.location.href = "../../generic/death.html";
    localStorage['deathMessage'] = "The armour of the skeletons was too heavy for you to peirce and you were killed";
}

function crouchAndContinueOpt2() {
    window.location.href = "jump_over_skeletons.html";
}

function loadCrouchAndContinue() {
    document.getElementById("option_1").onclick = crouchAndContinueOpt1;
    document.getElementById("option_2").onclick = crouchAndContinueOpt2;
}



function jumpOverSkeletonsOpt1() {
    window.location.href = "cut_the_bridge.html";
}

function jumpOverSkeletonsOpt2() {
    window.location.href = "burn_the_bridge.html";
}

function loadJumpOverSkeletons() {
    document.getElementById("option_1").onclick = jumpOverSkeletonsOpt1;
    document.getElementById("option_2").onclick = jumpOverSkeletonsOpt2;
}



function cutTheBridgeOpt1() {
    window.location.href = "boss_antechamber.html";
}

function loadCutTheBridge() {
    document.getElementById("option_1").onclick = cutTheBridgeOpt1;
}



function burnTheBridgeOpt1() {
    window.location.href = "boss_antechamber.html";
}

function loadBurnTheBridge() {
    document.getElementById("option_1").onclick = burnTheBridgeOpt1;
}



function bossAntechamberOpt1() {
    let currentDetails = document.getElementById("details").innerHTML;
    document.getElementById("details").innerHTML = currentDetails + "<br> The door is sealed shut, prehaps there is a clue of what to do somewhere in this room";
    document.getElementById("option_1").onclick = "";
}

function bossAntechamberOpt2() {
    let currentDetails = document.getElementById("details").innerHTML;
    document.getElementById("details").innerHTML = currentDetails + `<br> The verse reads as follows: <br>
    <br>
    It creeps in silence, pale and cold, <br>
    A grasp so tight, a tale untold.<br>
    It steals the breath, I dim the light,<br>
    It turns the day into endless night.<br>
    <br>
    Yet in the dark, a spark may rise,<br>
    A dancing glow before your eyes.<br>
    With ember's heart and golden breath,<br>
    I turn away the touch of death. <br>
    <br>
    What am I? <br>
    <br>
    Prehaps speaking the answer will open the door`;

    document.getElementById("option_2").innerHTML = "ANSWER THE RIDDLE";
    document.getElementById("option_2").onclick = () => {
        window.location.href = "answer_riddle.html";
    };
}

function loadBossAntechamber() {
    document.getElementById("option_1").onclick = bossAntechamberOpt1;
    document.getElementById("option_2").onclick = bossAntechamberOpt2;
}


function bossAnteChamberOpenOpt1() {
    window.location.href = "boss_chamber.html";
}

function loadBossAnteChamberOpen() {
    document.getElementById("option_1").onclick = bossAnteChamberOpenOpt1;
}



async function bossChamberOpt1() {
    const ankouData = await makeNpcQuery(1);
    updateDialogueBox(ankouData, "dialogue", "../../../", () => {window.location.href = "boss_fight.html";});
    document.getElementById("details").style.display = "none";
    document.getElementById("input-box-container").style.display = "none";
    document.getElementById("dialogue").style.display = "flex";
}

function loadBossChamber() {
    document.getElementById("option_1").onclick = bossChamberOpt1;
}

function bossFightOpt1() {
    window.location.href = "dodge.html";
}

function bossFightOpt2() {
    window.location.href = "parry.html";
}

function bossFightTimerBarComplete() {
    window.location.href = "../../generic/death.html";
    localStorage['deathMessage'] = "You were unable to dodge the Ankou's attack and were slain";
}

function loadBossFight() {
    console.log(localStorage['strikes']);

    document.getElementById("timer-bar").onCompleteCallback = bossFightTimerBarComplete;
    document.getElementById("option_1").onclick = bossFightOpt1;
    document.getElementById("option_2").onclick = bossFightOpt2;
    document.getElementById("option_3").onclick = bossFightOpt1;
}



function dodgeOpt1() {
    localStorage['strikes'] = Number(localStorage['strikes']) + 1;
    console.log(localStorage['strikes']);
    if (Number(localStorage['strikes']) >= 5) {
        window.location.href = "victory.html";
        return;
    }
    window.location.href = "boss_fight.html";
}

function dodgeTimerBarComplete() {
    window.location.href = "boss_fight.html";
}

function loadDodge() {
    document.getElementById("option_1").onclick = dodgeOpt1;
    document.getElementById("timer-bar").onCompleteCallback = parryTimerBarComplete;
    checkOil();
}


function parryOpt1() {
    localStorage['strikes'] = localStorage['strikes'] + 1;
    if (localStorage['strikes'] == 5) {
        window.location.href = "victory.html";
        return;
    }
    window.location.href = "boss_fight.html";
}

function parryTimerBarComplete() {
    window.location.href = "boss_fight.html";
}

function loadParry() {
    document.getElementById("option_1").onclick = dodgeOpt1;
    document.getElementById("timer-bar").onCompleteCallback = parryTimerBarComplete;
    console.log("parrys: ", localStorage['parrys'], Boolean(localStorage['meleeEntered']) == true);

    checkOil();

    if (Boolean(localStorage['meleeEntered']) == true) {
        document.getElementById("details").innerHTML += "Your previosly weaked sword cannot withstand many more blows";
        localStorage['parrys'] = Number(localStorage['parrys']) + 1;
        if (Number(localStorage['parrys']) == 3) {
            window.location.href = "../../generic/death.html";
            localStorage['deathMessage'] = "Your Sword broke and you were slain by Ankou and reclaimed by Death";
        }
    }
}


function checkOil(){
    if (localStorage['hasOil'] === 'true') {
        let button = document.createElement("button");
        button.className = "button_option";
        button.id = "option_2";
        button.textContent = "USE OIL TO SET SWORWD AFLAME";
        button.addEventListener('click', () => {
            localStorage['strikes'] = Number(localStorage['strikes']) + 2;
            window.location.href = "boss_fight.html";
        });
        document.getElementById("options").appendChild(button);
        localStorage['hasOil'] = 'false';
    }
}



function victoryOpt1() {
    window.location.href = "exit.html";
}

function loadVictory() {
    document.getElementById("option_1").onclick = victoryOpt1;
}



function exitOpt1() {
   console.log("go to villiage start page")
}

function loadExit() {
    document.getElementById("option_1").onclick = exitOpt1;
}



window.addEventListener('load', () => {
    const currentPage = window.location.href.split('/').pop().split('.').shift();
    if (currentPage == "starter_dungeon") {
        localStorage.clear();
        localStorage['strikes'] = 0;
        localStorage['parrys'] = 0;
        loadStart()
    } else if (currentPage == "enter_the_cave") {
        loadEnterCave()
    } else if (currentPage == "follow_wall") {
        loadFollowWall()
    } else if (currentPage == "follow_wind_no_lantern") {
        loadFollowWind()
    } else if (currentPage == "find_another_way") {
        loadFindAnoutherWay()
    } else if (currentPage == "light_the_brazier") {
        loadLightBrazier()
    } else if (currentPage == "look_around") {
        loadLookAround()
    } else if (currentPage == "brazier_lit") {
        loadBrazierLit()
    } else if (currentPage == "squeeze_through_the_crack") {
        loadSqueezeThroughCrack()
    } else if (currentPage == "open_sarcophagus") {
        loadOpenSarchophagus()
    } else if (currentPage == "tomb_next_chamber") {
        loadTombNextChamber()
    } else if (currentPage == "wake_the_skeletons") {
        loadWakeTheSkeletons()
    } else if (currentPage == "fight_the_skeletons") {
        loadFightTheSkeletons()
    } else if (currentPage == "investigate_rope") {
        loadInvestigateRope()
    } else if (currentPage == "burn_the_rope") {
        loadBurnTheRope()
    } else if (currentPage == "enter_melee") {
        loadEnterMelee()
    } else if (currentPage == "brazier_not_lit") {
        loadBrazierNotLit()
    } else if (currentPage == "follow_wind_lantern") {
        loadFollowWindLantern()
    } else if (currentPage == "move_on_underside") {
        loadMoveOnUnderside()
    } else if (currentPage == "crouch_and_continue") {
        loadCrouchAndContinue()
    } else if (currentPage == "jump_over_skeletons") {
        loadJumpOverSkeletons()
    } else if (currentPage == "cut_the_bridge") {
        loadCutTheBridge()
    } else if (currentPage == "burn_the_bridge") {
        loadBurnTheBridge()
    } else if (currentPage == "boss_antechamber") {
        loadBossAntechamber()
    } else if (currentPage == "boss_antechamber_open") {
        loadBossAnteChamberOpen()
    } else if (currentPage == "boss_chamber") {
        loadBossChamber()
    } else if (currentPage == "boss_fight") {
        loadBossFight()
    } else if (currentPage == "dodge") {
        loadDodge()
    } else if (currentPage == "parry") {
        loadParry()
    } else if (currentPage == "victory") {
        loadVictory()
    } else if (currentPage == "exit") {
        loadExit()
    }
});