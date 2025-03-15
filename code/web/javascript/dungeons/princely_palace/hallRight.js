function backward(){
    window.location.href = "hall.html";
}

function tryDoor(){
    let key = sessionStorage.getItem("key");
    if (key == "true"){
        window.location.href = "rightSideRoom.html";
    }
    else{
        window.location.href = "door2.html";
    }
}