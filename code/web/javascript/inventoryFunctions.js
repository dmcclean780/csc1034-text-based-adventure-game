let inventory;

document.addEventListener("DOMContentLoaded", () => 
    {
        if(sessionStorage.getItem("inventory")){
            inventory = JSON.parse(sessionStorage.getItem("inventory"));
        }
    }
);

function addToInventory(item, quantity) {
    if(inventory[item] == null){
        Object.defineProperty(inventory, item, {
            value: quantity,
            writable: true,
            enumerable: true
        });
    } else {
        inventory[item] += quantity;
    }

    sessionStorage.setItem("inventory", JSON.stringify(inventory));
}

function removeFromInventory(item, quantity) {
    if (!inventory[item]) {
        return;
    }

    if (inventory[item] <= quantity) {
        inventory = Object.assign({}, inventory);  // Create a shallow copy of the object
        delete inventory[item]; // Remove item from the new object
    } else {
        inventory[item] -= quantity;
    }

    sessionStorage.setItem("inventory", JSON.stringify(inventory));
}

function checkInventory(item, quantity) {
    if(inventory[item] >= quantity)
    {
        return true;
    } 
    else 
    {
        return false;
    }
}

function updateDatabaseInventory(inventory) {
    const items = Object.getOwnPropertyNames(inventory);
    const query = `UPDATE playerCharacter 
    SET inventory = '${JSON.stringify(inventory)}'
    WHERE username = '${gameState.globalState.username}' AND characterID = '${gameState.globalState.characterID}';`;
    makeDatabaseQuery(query);
}

