function convertTimeToHumanReadable(time) {
    time = Math.floor(time/1000);
    const hours = Math.floor(time / 3600);
    const minutes = Math.floor((time % 3600) / 60);
    const seconds = time % 60;
    return `${hours}h ${minutes}m`;
}

function calculateGamePercentage(gameProgress){
    let progress = 25;
    if(gameProgress['successful'] == '1'){
        return "100%";
    } else if(gameProgress['catacombsCompleted'] == '0'){
        return "0%";
    } else if(gameProgress['townHallVisited'] == '0'){
        return "15%";
    } else if(gameProgress['forestCompleted'] == '0' && gameProgress['wormHillCompleted'] == '0' && gameProgress['palaceCompleted'] == '0' && gameProgress['libraryCompleted'] == '0'){
        return "25%";
    } else {
        if(gameProgress['forestCompleted'] == '1'){
            progress += 15;
        }
        if(gameProgress['wormHillCompleted'] == '1'){
            progress += 15;
        }
        if(gameProgress['palaceCompleted'] == '1'){
            progress += 15;
        }
        if(gameProgress['libraryCompleted'] == '1'){
            progress += 15;
        }
        return progress + "%";
    }
}