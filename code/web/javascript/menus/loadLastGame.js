let gameState = {
    globalState: {

    },
    localState: {

    }
}

async function getAllCharacters() {
    try {
        const characters = await makeDatabaseQuery(`SELECT * FROM playerCharacter WHERE username = '${sessionStorage.getItem("username")}'`);
        return characters;
    } catch (error) {
        throw error;
    }
}

document.addEventListener("DOMContentLoaded", () => {
    setTimeout(async () => {
        if (serverReachable) {
            try {
                const characters = await getAllCharacters();
                const characterList = document.getElementById("character-list");
                for(let i=0; i<characters.length; i++) {
                    const character = characters[i];
                    const characterItem = createCharacterSelector(character, i);
                    characterList.appendChild(characterItem);
                }
            } catch (error) {
                console.error("Error loading characters:", error);
                alert("An error occurred. Please try again later.");
            }
        } else {
            alert("Error - Server is Unreachable. Please try again later.");
        }
    }, 250);
});

function createCharacterSelector(character, i) {
    const characterItem = document.createElement("button");
    characterItem.classList.add("character-option");

    const characterName = document.createElement("p");
    characterName.innerHTML = (i+1)+"."+character.name;
    characterName.classList.add("character-name-box");
    characterItem.appendChild(characterName);

    const otherInfo = document.createElement("span");
    otherInfo.classList.add("game-summary-box");
    const completionPercentage = document.createElement("p");
    completionPercentage.innerHTML = calculateGamePercentage(character);
    completionPercentage.classList.add("percentage-box");
    otherInfo.appendChild(completionPercentage);
    const characterGameSummary = addGameSummaryButton(character);
    otherInfo.appendChild(characterGameSummary);
    characterItem.appendChild(otherInfo);

    if (character.alive == 1) {
        characterItem.addEventListener("click", () => {
            characterOnClickFunction(character);
        });
    } else {
        characterItem.addEventListener("click", () => {
            alert("This character is dead");
        });
        characterItem.style.backgroundColor = "red";
    }
    return characterItem;
}

function addGameSummaryButton(character) {
    const characterGameSummary = document.createElement("button");
    characterGameSummary.classList.add("summary-button");
    characterGameSummary.innerHTML = "...";
    characterGameSummary.addEventListener("click", () => {
        goToGameSummary(character.characterID);
    });
    return characterGameSummary;
}

async function characterOnClickFunction(character) {
    loadGameState(character);
    await loadInventory(character);
    sessionStorage.setItem("startTimestamp", Date.now());
    if (character.currentArea == '0') {
        window.location.href = "../map.html";
        return;
    }
    window.location.href = "../dungeons/dungeon.html";
}


function loadGameState(character) {
    const globalStateVariables = Object.getOwnPropertyNames(character);
    globalStateVariables.forEach(variable => {
        Object.defineProperty(gameState.globalState, variable, {
            value: character[variable],
            writable: true,
            enumerable: true
        });
    });
    const localState = JSON.parse(character.currentAreaState);
    const localStateVariables = Object.getOwnPropertyNames(localState);
    localStateVariables.forEach(variable => {
        Object.defineProperty(gameState.localState, variable, {
            value: localState[variable],
            writable: true,
            enumerable: true
        });
    });
    sessionStorage.setItem("gameState", JSON.stringify(gameState));
}

async function loadInventory(character) {
    const query = `SELECT * FROM playerInventory WHERE characterID = '${character.characterID}'`;
    const inventoryItems = await makeDatabaseQuery(query);
    let inventory = {};
    inventoryItems.forEach(item => {
        inventory[item.itemName] = item.quantity;
    });
    sessionStorage.setItem("inventory", JSON.stringify(inventory));

}

