function villageOpt1(){
    window.location.href = "village_square.html";
}

function villageOpt2(){
    window.location.href = "armoury.html";
}

function villageOpt3(){
    /**This will only be visable if the user has already talked to a certian NPC, will be quiried from the Database */
    console.log("Go To The Map");
}

function loadVillage(){
    document.getElementById("option_1").addEventListener('click', villageOpt1);
    document.getElementById("option_2").addEventListener('click', villageOpt2);
    document.getElementById("option_3").addEventListener('click', villageOpt3);
}




function villiageSquareOpt1(){
    window.location.href = "village_outskirts.html";
}

function villiageSquareOpt2(){
    window.location.href = "library.html";
}

function villiageSquareOpt3(){
    window.location.href = "tavern.html";
}

function villiageSquareOpt4(){
    window.location.href = "town_hall.html";
}

function villiageSquareOpt5(){
    window.location.href = "village.html";
}

function loadVillageSquare(){
    document.getElementById("option_1").addEventListener('click', villiageSquareOpt1);
    document.getElementById("option_2").addEventListener('click', villiageSquareOpt2);
    document.getElementById("option_3").addEventListener('click', villiageSquareOpt3);
    document.getElementById("option_4").addEventListener('click', villiageSquareOpt4);
    document.getElementById("option_5").addEventListener('click', villiageSquareOpt5);
}



function villageOutskirtsOpt1(){
    window.location.href = "witch.html";
}

function villageOutskirtsOpt2(){
    window.location.href = "village_square.html";
}

function villageOutskirtsOpt3(){
    /**This will only be visable if the user has already talked to a certian NPC, will be quiried from the Database */
    console.log("Go To The Map");
}

function loadVillageOutskirts(){
    document.getElementById("option_1").addEventListener('click', villageOutskirtsOpt1);
    document.getElementById("option_2").addEventListener('click', villageOutskirtsOpt2);
    document.getElementById("option_3").addEventListener('click', villageOutskirtsOpt3);
}



async function armouryOpt1(){
    const armourerData = await makeNpcQuery(2);
    updateDialogueBox(armourerData, "dialogue", "../../../", () => {window.location.href = "village.html";});
    document.getElementById("details").style.display = "none";
    document.getElementById("input-box-container").style.display = "none";
    document.getElementById("dialogue").style.display = "flex";
}

function loadArmoury(){
    document.getElementById("option_1").addEventListener('click', armouryOpt1);
}



async function libraryOpt1(){
    const paigeReedData = await makeNpcQuery(7);
    updateDialogueBox(paigeReedData, "dialogue", "../../../", () => {window.location.href = "village_square.html";});
    document.getElementById("details").style.display = "none";
    document.getElementById("input-box-container").style.display = "none";
    document.getElementById("dialogue").style.display = "flex";
}

function loadLibrary(){
    document.getElementById("option_1").addEventListener('click', libraryOpt1);
}



async function tavernOpt1(){
    const barkeeperData = await makeNpcQuery(3);
    updateDialogueBox(barkeeperData, "dialogue", "../../../", () => {window.location.href = "village_square.html";});
    document.getElementById("details").style.display = "none";
    document.getElementById("input-box-container").style.display = "none";
    document.getElementById("dialogue").style.display = "flex";
}

function loadTavern(){
    document.getElementById("option_1").addEventListener('click', tavernOpt1);
}


async function townHallOpt1(){
    const andrewData = await makeNpcQuery(5);
    updateDialogueBox(andrewData, "dialogue", "../../../", () => {window.location.href = "town_hall_second_room.html";});
    document.getElementById("details").style.display = "none";
    document.getElementById("input-box-container").style.display = "none";
    document.getElementById("dialogue").style.display = "flex";
}

function loadTownHall(){
    document.getElementById("option_1").addEventListener('click', townHallOpt1);
}



async function townHallSecondRoomOpt1(){
    const beeYenData = await makeNpcQuery(6);
    updateDialogueBox(beeYenData, "dialogue", "../../../", () => {window.location.href = "village_square.html";});
    document.getElementById("details").style.display = "none";
    document.getElementById("input-box-container").style.display = "none";
    document.getElementById("dialogue").style.display = "flex";
}

function loadTownSecondRoomHall(){
    document.getElementById("option_1").addEventListener('click', townHallSecondRoomOpt1);
}



async function witchOpt1(){
    const witchData = await makeNpcQuery(4);
    updateDialogueBox(witchData, "dialogue", "../../../", () => {window.location.href = "village_outskirts.html";});
    document.getElementById("details").style.display = "none";
    document.getElementById("input-box-container").style.display = "none";
    document.getElementById("dialogue").style.display = "flex";
}

function loadWitch(){
    document.getElementById("option_1").addEventListener('click', witchOpt1);
}


window.addEventListener('load', () => {
    const currentPage = window.location.href.split('/').pop().split('.').shift();
    if (currentPage == "village") {
        loadVillage();
    } else if (currentPage == "village_square") {
        loadVillageSquare();
    } else if (currentPage == "village_outskirts") {
        loadVillageOutskirts();
    } else if (currentPage == "armoury") {
        loadArmoury();
    } else if (currentPage == "library") {
        loadLibrary();
    } else if (currentPage == "tavern") {
        loadTavern();
    } else if (currentPage == "town_hall") {
        loadTownHall();
    } else if (currentPage == "town_hall_second_room") {
        loadTownSecondRoomHall();
    } else if (currentPage == "witch") {
        loadWitch();
    }
});



