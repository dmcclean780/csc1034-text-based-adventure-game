const ending = sessionStorage.getItem("ending");
console.log(ending);

document.getElementById("return-btn").addEventListener("click", function() {
    window.location.href = "../../html/menus/startGame.html";
});

document.getElementById("stats-btn").addEventListener("click", function() {
    window.location.href = "../../html/menus/startGame.html";
});

window.onload = function () {
    //update header to show player name
    document.getElementById("playerNameHere").innerHTML = `Congratulations, ${getState("name")}`;

    //set ending message based on ending achieved
    let title = "";
    let message = "";
    switch(ending){
        case "1":
            title = `Midas Reborn`;
            message = 
            `You worked valiently to clear all of Pandoro's dungeons,
            only to become corrupted by that same sickness that
            overtook Midas. Technically, you still defeated Pandoro,
            but sometimes the treatment is worse than the sickness...`;
            break;
        
        case "2":
            title = `A Hero's Death`;
            message = 
            `After fighting tooth and nail to clear all of Pandoro's
            dungeons, you risked corruption to the same sickness that
            took Midas, but managed to avert it with the anti-glove.
            Your final battle was valiant, but even a righteous hero
            can fail sometimes...`;
            break;

        case "3":
            title = `Black Hole`;
            message = 
            `After surviving and defeating each of Pandoro's dungeons,
            you staved off corrpution from the glove of Midas with the
            glove's opposite. But it was your undoing; using two
            opposing forces created an impossible situation, tearing
            reality apart. You won, Pandoro is dead. The same could
            be said for you, though. Heroic, but certainly not ideal...`;
            break;

        case "4":
            title = `True Ending`;
            message = 
            `Mercy. A concept Pandoro had entirely forgotten. You cleared 
            all of his dungeons with as much violence as necessary, but
            when face to face with the villain you allowed him to finish 
            himself off, his own twisted actions leadig to his demise. 
            You won. And I mean really, truly won! 
            But have you found ALL the endings?`;
            break;

        case "5":
            title = `Should've Died a Hero`;
            message = 
            `After all the work behind clearning Pandoro's dungeons, you
            merely replaced him. Yes, he is defeated, but your goal was 
            to save the world, and in that you have utterly failed. The 
            staff's power corrupts. Next time, try not to become an evil 
            sorceror and save the world properly...`;
            break;

        case "6":
            title = `Live By The Sword...`;
            message = 
            `...die by the sword. You fought hard all through Pandoro's 
            dungeons, and you didn't let up at the end. But your 
            violence brought you too close to his level. Pandoro 
            survived; you lost. Such a failure is devastating, if only 
            you could retry...`;
            break;

        case "7":
            title = `Buried Secrets`;
            message = 
            `Each of the dungeons created by Pandoro have been cleared,
            but when it came to defeat him, the solution you chose was
            unconventional, to say the least. Being buried under the
            earth will keep the world safe from Pandoro for a while,
            but he will return, and you won't be here to stop him...`;
            break;
    }


    document.getElementById("end-title").innerHTML = title;
    document.getElementById("end-message").innerHTML = message;


    let username = sessionStorage.getItem("username");
    sessionStorage.clear();
    sessionStorage.setItem("username", username);
}