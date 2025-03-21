let gameState;

document.addEventListener("DOMContentLoaded", () => {
    if(sessionStorage.getItem("gameState")){
        gameState = JSON.parse(sessionStorage.getItem("gameState"));
    }
}
);

function changeState(property, state) {
    const globalStateVariables = Object.getOwnPropertyNames(gameState.globalState);
    const localStateVariables = Object.getOwnPropertyNames(gameState.localState);
    if(globalStateVariables.includes(property)){
        gameState.globalState[property] = state;
    } else if(localStateVariables.includes(property)){
        gameState.localState[property] = state;
    } else {
        Object.defineProperty(gameState.localState, property, {
            value: state,
            writable: true,
            enumerable: true
        });
    }
    sessionStorage.setItem("gameState", JSON.stringify(gameState));
}

function getState(property) {
    const globalStateVariables = Object.getOwnPropertyNames(gameState.globalState);
    const localStateVariables = Object.getOwnPropertyNames(gameState.localState);
    if(globalStateVariables.includes(property)){
        return gameState.globalState[property]
    } else if(localStateVariables.includes(property)){
        return gameState.localState[property]
    } else {
        return false;
    }
}

function decreaseStateVariable(property, value) {
    let propertyValue = getState(property);
    if (propertyValue == null) {
        changeState(property, 0);
    }
    propertyValue = parseInt(propertyValue);
    propertyValue-=value;
    changeState(property, propertyValue);
}

function checkState(property, checkValue, onCheckPassed, onCheckFailed) {
    const propertyValue = getState(property);
    if(propertyValue == checkValue){
        onCheckPassed();
    } else {
        onCheckFailed();
    }
}

function updateStateDatabase(gameState) {
    const attributeNames = Object.getOwnPropertyNames(gameState.globalState);
    attributeNames.pop();
    const query = `UPDATE playerCharacter 
    SET 
    ${attributeNames
      .map(attribute => {
        const value = gameState.globalState[attribute];
        // If value is null or undefined, set it to NULL in the query
        if (value === null || value === undefined) {
          return `${attribute} = NULL`;
        }
        return `${attribute} = '${value}'`;
      })
      .join(", ")}
    ,currentAreaState = '${JSON.stringify(gameState.localState)}'
    WHERE username = '${gameState.globalState.username}' AND characterID = '${gameState.globalState.characterID}';`;
    makeDatabaseQuery(query);
}

function clearLocalState() {
    gameState.localState = {};
    sessionStorage.setItem("gameState", JSON.stringify(gameState));
}

function getAllGlobalStateVariableNames() {
    return Object.getOwnPropertyNames(gameState.globalState);
}

function printState() {
    console.log(gameState);
}