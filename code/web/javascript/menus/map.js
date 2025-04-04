async function setUpMap() {
    setTimeout(async () => {
        if (serverReachable) {
            try {
                
                const mapData = await makeMapQuery("Potentia");

                const mapBox = document.getElementById("map-grid");
                mapBox.style.backgroundImage = `url(${pathToRoot}${mapData.mapImageFilePath})`;
                mapBox.style.gridTemplateColumns = "repeat(" + mapData.rowSize + ", 1fr)";
                mapBox.replaceChildren();
                for (let i = 0; i < parseInt(mapData.rowSize) * parseInt(mapData.colSize); i++) {
                    const mapTile = document.createElement("div");
                    mapTile.classList.add("map-tile");
                    mapTile.id = i + 1;
                    mapTile.style.border = "1px solid rgba(70, 70, 70, 0.5)";
                    mapBox.appendChild(mapTile);
                }


                const areaData = await makeAreaQuery("worldName", mapData.worldName);
                for (let i = 0; i < areaData.length; i++) {
                    if (areaData[i].id == '0') {
                        continue;
                    }
                    const area = areaData[i];
                    const mapTile = document.getElementById((area.rowPosition - 1) * (mapData.rowSize) + (area.colPosition - 1) + 1);
                    const areaTile = document.createElement("button");
                    areaTile.classList.add("map-button");
                    if (eval(area.visitCondition) == true) {
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
            } catch (error) {
                console.error("Error loading map:", error);
                alert("An error occurred. Please try again later.");
            }
        } else {
            alert("Error - Server is Unreachable. Please try again later.");
        }
    }, 500);
}


setUpMap();