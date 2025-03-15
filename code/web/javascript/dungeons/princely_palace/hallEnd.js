function tryDoor(){
    let key = sessionStorage.getItem("key");
    if (key == "true"){
        console.log(sessionStorage.getItem("key"));
        window.location.href = "midas.html";
    }
    else{
        window.location.href = "door.html";
    }
}

function backward(){
    window.location.href = "hall.html";
}