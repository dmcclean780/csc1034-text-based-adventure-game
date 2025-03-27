let inventory;

document.addEventListener("DOMContentLoaded", () => {
    if (sessionStorage.getItem("inventory")) {
        inventory = JSON.parse(sessionStorage.getItem("inventory"));
    }
}
);

function addToInventory(item, quantity) {
    if (inventory[item] == null) {
        Object.defineProperty(inventory, item, {
            value: quantity,
            writable: true,
            enumerable: true
        });
    } else {
        inventory[item] += quantity;
    }

    sessionStorage.setItem("inventory", JSON.stringify(inventory));
    updateInventoryComponent();
}

function removeFromInventory(item, quantity) {
    if (!inventory[item]) {
        return;
    }

    if (inventory[item] <= quantity) {
        inventory = Object.assign({}, inventory);
        delete inventory[item];
    } else {
        inventory[item] -= quantity;
    }

    sessionStorage.setItem("inventory", JSON.stringify(inventory));
    updateInventoryComponent();
}

function checkInventory(item, quantity) {
    if (inventory[item] >= quantity) {
        return true;
    }
    else {
        return false;
    }
}

function updateDatabaseInventory(inventory) {
    const items = Object.getOwnPropertyNames(inventory);
    const query = `UPDATE playerCharacter 
    SET inventory = '${JSON.stringify(inventory)}'
    WHERE username = '${gameState.globalState.username}' AND characterID = '${gameState.globalState.characterID}';`;

    try {
        makeDatabaseQuery(query);
    } catch (error) {
        throw error;
    }
}

function updateInventoryComponent() {
    const inventoryComponent = document.getElementById("inventory");
    inventoryComponent.loadInventory();
}

