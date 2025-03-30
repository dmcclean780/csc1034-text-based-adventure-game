let inventory = {};
let inventoryLog = [];

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
    inventoryLog.push({ "characterID":gameState.globalState.characterID, "timestamp": Math.floor(Date.now() / 1000), "item":item, "quantity":quantity, "action":"ADD" });

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
    inventoryLog.push({ "characterID":gameState.globalState.characterID, "timestamp": Math.floor(Date.now() / 1000), "item":item, "quantity":quantity, "action":"REMOVE" });
    console.log(inventoryLog);

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

async function updateDatabaseInventory(inventory) {
    const characterID = gameState.globalState.characterID;
    let queries = [];

    for (const [itemName, quantity] of Object.entries(inventory)) {
        const query = `
            INSERT INTO playerInventory (characterID, itemName, quantity)
            VALUES (${characterID}, '${itemName}', ${quantity})
            ON DUPLICATE KEY UPDATE quantity = ${quantity};
        `;
        queries.push(makeDatabaseQuery(query));
    }

    const deleteQuery = `
        DELETE FROM playerInventory
        WHERE characterID = ${characterID}
        AND itemName NOT IN (${Object.keys(inventory).map((item) => `'${item}'`).join(',')});
    `;

    if (Object.keys(inventory).length > 0) {
        queries.push(makeDatabaseQuery(deleteQuery));
    } else {
        const clearQuery = `DELETE FROM playerInventory WHERE characterID = ${characterID};`;
        queries.push(makeDatabaseQuery(clearQuery));
    }

    //console.log(inventoryLog.map((record) => {return `(${record.characterID}, FROM_UNIXTIME(${record.timestamp}), '${record.item}', ${record.quantity}, '${record.action}')`}).join(','))
    const updateInventoryLogQuery = `INSERT INTO playerInventoryLog (characterID, timestamp, itemName, quantity, action) 
                                        VALUES ${inventoryLog.map((record) => {return `(${record.characterID}, FROM_UNIXTIME(${record.timestamp}), '${record.item}', ${record.quantity}, '${record.action}')`}).join(',')};`;

    inventoryLog = [];
    queries.push(makeDatabaseQuery(updateInventoryLogQuery));
    // Execute all queries in parallel
    await Promise.all(queries);
}

function updateInventoryComponent() {
    const inventoryComponent = document.getElementById("inventory");
    inventoryComponent.loadInventory();
}

function updateInventoryComponent() {
    const inventoryComponent = document.getElementById("inventory");
    inventoryComponent.loadInventory();
}

function getAllInventoryItems(){
    const items = Object.getOwnPropertyNames(inventory);
    return items;
}

function printInventory() {
    console.log(inventory);
}

