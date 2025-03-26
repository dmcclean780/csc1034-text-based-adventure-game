
document.getElementById("new-character").addEventListener("click", async (event) => {

    let user = sessionStorage.getItem("username");
    event.preventDefault();
    let characterName = document.getElementById("characterName").value;
    setTimeout(async () => {
        if (serverReachable) {
            try {
                // Insert the new user into the database
                const insertQuery = `INSERT INTO playerCharacter (username, name, currentDecision, currentArea, alive, successful, endingAchieved, catacombsCompleted, townHallVisited, libraryCompleted, palaceCompleted, currentAreaState, inventory) VALUES ('${user}', '${characterName}', 1, 2, 1, 0, 0, 0, 0, 0, 0, '{}', '{}')`;
                const insertResult = await makeDatabaseQuery(insertQuery);

                if (insertResult > 0) {
                    sessionStorage.setItem("CharacterName", characterName);
                    window.location.href = "loadGame.html";
                } else {
                    console.log("Error inserting character into database");
                }
            }
            catch (error) {
                console.error("Error completing character creation:", error);
                console.log("An error occurred. Please try again.");
            }
        } else {
            alert("Error - Server is Unreachable. Please try again later.");
        }
    }, 250);
});