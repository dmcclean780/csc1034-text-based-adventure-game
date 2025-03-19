function changeState(property, state) {
    console.log("Change ", property, " to ", state);
    sessionStorage.setItem(property, state);
}

function getState(property) {
    const value = sessionStorage.getItem(property);
    if (value == null) {
        changeState(property, false);
    }
    return sessionStorage.getItem(property);
}

function decreaseStateVariable(property, value) {
    let propertyValue = sessionStorage.getItem(property);
    if (propertyValue == null) {
        changeState(property, 0);
    }
    propertyValue = parseInt(propertyValue);
    propertyValue-=value;
    changeState(property, propertyValue);
}

function checkState(property, checkValue, onCheckPassed, onCheckFailed) {
    if(parseInt(sessionStorage.getItem(property)) == checkValue){
        onCheckPassed();
    } else {
        onCheckFailed();
    }
}