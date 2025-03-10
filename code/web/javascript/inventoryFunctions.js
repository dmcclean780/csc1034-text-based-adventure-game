function addToInventory(item, quantity) {
    console.log("ADD ", item, " x", quantity, " to inventory");
    localStorage[item] = quantity;
    const itemQuantity = localStorage[item];
    console.log("Item Quantity: ", itemQuantity); //temporay for now until we have a proper inventory system
}

function removeFromInventory(item, quantity) {
    console.log("REMOVE ", item, " x", quantity, " from inventory");
    if(checkInventory(item, quantity)){
        let itemQuantity = localStorage[item];
        itemQuantity -= quantity;
        localStorage[item] = itemQuantity;
    }
}

function checkInventory(item, quantity) {
    console.log("Check if ", item, " x", quantity, " is in inventory");
    const itemQuantity = localStorage[item];
    console.log(parseInt(itemQuantity) >= quantity);
    if (itemQuantity == null) {
        return false;
    }
    return parseInt(itemQuantity) >= quantity;
}