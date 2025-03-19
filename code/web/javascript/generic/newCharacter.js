
document.getElementById("new-character").addEventListener("click", async  (event) => {

    let user = sessionStorage.getItem("username");
    console.log(user);

    event.preventDefault();

    let characterName = document.getElementById("characterName").value;

    console.log(characterName);
    console.log(user);
    console.log("Username is:" + user);

    try {
        // Insert the new user into the database
        const insertQuery = `INSERT INTO characters (username, name, currentDecision, currentArea, alive, successful, endingAchieved, catacombsCompleted, townHallVisited, libraryCompleted, currentAreaState) VALUES ('${user}', '${characterName}', 1, 2, 1, 0, 0, 0, 0, 0, 'json')`;
        const insertResult = await makeDatabaseQuery(insertQuery);

        if (insertResult > 0) {
            sessionStorage.setItem("CharacterName", characterName);
            window.location.href = "../dungeons/dungeon.html";
        } else 
        {
            console.log("Error inserting character into database");
        }
    } 
    catch (error) {
        console.error("Error completing character creation:", error);
        console.log("An error occurred. Please try again.");
    }
});