let gameState = {
    globalState: {

    },
    localState: {

    }
}

let inventory = {

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
                characters.forEach(character => {
                    const characterItem = document.createElement("button");
                    characterItem.classList.add("button-option");
                    characterItem.innerHTML = character.characterID + ". " + character.name;
                    if (character.alive == 1) {
                        characterItem.addEventListener("click", () => {
                            loadGameState(character);
                            loadInventory(character);
                            if (character.currentArea == '0') {
                                window.location.href = "../map.html";
                                return;
                            }
                            window.location.href = "../dungeons/dungeon.html";
                        });
                    } else {
                        characterItem.addEventListener("click", () => {
                            alert("This character is dead");
                        });
                        characterItem.style.backgroundColor = "red";
                    }
                    characterList.appendChild(characterItem);
                });
            } catch (error) {
                console.error("Error loading characters:", error);
                alert("An error occurred. Please try again later.");
            } ß
        } else {
            alert("Error - Server is Unreachable. Please try again later.");
        }
    }, 250);
});

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

function loadInventory(character) {
    const inventory = JSON.parse(character.inventory);
    sessionStorage.setItem("inventory", JSON.stringify(inventory));
    console.log("Inventory Loaded:", sessionStorage.getItem("inventory"));
}

