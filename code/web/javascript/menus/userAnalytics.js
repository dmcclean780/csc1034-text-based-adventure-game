let totalCharacters

const stats = [
    {
        name: "Total Characters",
        statFunction: async () => {
            const query = `SELECT COUNT(*) 
                            FROM playerCharacter
                            WHERE username = '${sessionStorage.getItem("username")}';`;
            const result = await makeDatabaseQuery(query);
            return result.pop()['COUNT(*)'];
        }
    },
    {
        name: "Total Successful Characters",
        statFunction: async () => {
            const query = `SELECT COUNT(*) 
                            FROM playerCharacter
                            WHERE username = '${sessionStorage.getItem("username")}' AND successful = TRUE;`;
            const result = await makeDatabaseQuery(query);
            return result.pop()['COUNT(*)'];

        }
    },
    {
        name: "Total Dead Characters",
        statFunction: async () => {
            const query = `SELECT COUNT(*) 
                            FROM playerCharacter
                            WHERE username = '${sessionStorage.getItem("username")}' AND successful = FALSE AND alive = FALSE;`;
            const result = await makeDatabaseQuery(query);
            return result.pop()['COUNT(*)'];

        }
    },
    {
        name: "Total Characters In Progress",
        statFunction: async () => {
            const query = `SELECT COUNT(*) 
                            FROM playerCharacter
                            WHERE username = '${sessionStorage.getItem("username")}' AND alive = TRUE;`;
            const result = await makeDatabaseQuery(query);
            return result.pop()['COUNT(*)'];

        }
    },
    {
        name: "Total Play Time",
        statFunction: async () => {
            const query = `SELECT SUM(currentPlayTime) AS total_playtime
                            FROM playerCharacter
                            WHERE username = '${sessionStorage.getItem("username")}';`;
            const result = await makeDatabaseQuery(query);
            const rawTime = Math.floor(parseFloat(result.pop()['total_playtime']));
            return convertTimeToHumanReadable(rawTime);
        }
    },
    {
        name: "All Collected Items",
        statFunction: async () => {
            const query = `SELECT DISTINCT pil.itemName
                            FROM playerInventoryLog pil
                            JOIN playerCharacter pc ON pil.characterID = pc.characterID
                            WHERE pc.username = '${sessionStorage.getItem("username")}';`;
            const result = await makeDatabaseQuery(query);
            return result.map(item => item['itemName'].replace(/_/g, " ")).join(", ");
        }
    },
    {
        name: "All Used Items",
        statFunction: async () => {
            const query = `SELECT DISTINCT pil.itemName
                            FROM playerInventoryLog pil
                            JOIN playerCharacter pc ON pil.characterID = pc.characterID
                            WHERE pc.username = '${sessionStorage.getItem("username")}' AND pil.action = 'REMOVE';`;
            const result = await makeDatabaseQuery(query);
            return result.map(item => item['itemName'].replace(/_/g, " ")).join(", ");
        }
    },
    {
        name: "Fastest Completion Time",
        statFunction: async () => {
            const query = `SELECT MIN(currentPlayTime) AS min_play_time
                            FROM playerCharacter
                            WHERE username = '${sessionStorage.getItem("username")}' AND successful = TRUE;`;
            const result = await makeDatabaseQuery(query);
            const rawTime = Math.floor(parseFloat(result.pop()['min_play_time']));
            return convertTimeToHumanReadable(rawTime);
        }
    }

];

document.addEventListener("DOMContentLoaded", async () => {
    const statTable = document.getElementById("stat-table");

    // Fetch total users first
    totalCharacters = await stats[0].statFunction(); // Ensures it's set before dependent calculations

    for (const stat of stats) {
        const statBox = document.createElement("div");
        statBox.classList.add("stat-box");
        statBox.innerHTML = `<span>${stat.name}</span><span>${await stat.statFunction()}</span>`;
        statTable.appendChild(statBox);
    }
});