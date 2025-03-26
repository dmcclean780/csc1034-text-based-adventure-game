async function setUpMap() {
    setTimeout(async () => {
        if (serverReachable) {
            const areaData = await makeAreaQuery("NULL");
            const mapData = await makeMapQuery("WORLD MAP");

            const mapBox = document.getElementById("map-grid");
            mapBox.style.gridTemplateColumns = "repeat(" + mapData.rowSize + ", 1fr)";
            mapBox.replaceChildren();
            for (let i = 0; i < parseInt(mapData.rowSize) * parseInt(mapData.colSize); i++) {
                const mapTile = document.createElement("div");
                mapTile.classList.add("map-tile");
                mapTile.id = i + 1;
                mapTile.style.border = "1px solid rgba(70, 70, 70, 0.5)";
                mapBox.appendChild(mapTile);
            }

            for (let i = 0; i < areaData.length; i++) {
                if (areaData[i].id == '0') {
                    continue;
                }
                const area = areaData[i];
                const mapTile = document.getElementById((area.rowPosition - 1) * (mapData.rowSize) + (area.colPosition - 1) + 1);
                const areaTile = document.createElement("button");
                areaTile.classList.add("map-button");
                if (eval(area.ableToVisitCondition) == true) {
                    areaTile.addEventListener("click", function () {
                        changeState("currentArea", area.id);
                        changeState("currentDecision", 1);
                        window.location.href = "../dungeons/dungeon.html";
                    });
                } else {
                    console.log("not able to visit", area.name);
                }
                mapTile.appendChild(areaTile);
            }
        } else {
            alert("Error - Server is Unreachable. Please try again later.");
        }
    }, 250);
}


setUpMap();