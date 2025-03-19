async function setUpMap(){
    const areaData = await makeAreaQuery("NULL");
    const mapData = await makeMapQuery("WORLD MAP");
    
    const mapBox = document.getElementById("map-grid");
    mapBox.replaceChildren();
    for(let i=0; i<parseInt(mapData.rowSize) * parseInt(mapData.colSize); i++){
        const mapTile = document.createElement("div");
        mapTile.classList.add("map-tile");
        mapTile.id = i+1;
        mapTile.style.border = "1px solid rgba(70, 70, 70, 0.5)";
        mapBox.appendChild(mapTile);
    }

    for(let i=0; i<areaData.length; i++){
        if(areaData[i].id == '0'){
            continue;
        }
        const area = areaData[i];
        const mapTile = document.getElementById((parseInt(area.rowPosition)-1) * (parseInt(mapData.colSize)) + parseInt(area.colPosition));
        const areaTile = document.createElement("button");
        areaTile.classList.add("map-button");
        if(eval(area.ableToVisitCondition) == true){
            areaTile.addEventListener("click", function(){
                sessionStorage.setItem("areaID", area.id);
                window.location.href = "dungeons/dungeon.html";
            });
        } else {
            console.log("not able to visit", area.name);
        }
        mapTile.appendChild(areaTile);
    }
}

setUpMap();