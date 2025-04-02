let totalCharacters

const stats = [
    {
        name: "Character Name",
        statFunction: async () => {
            const query = `SELECT name 
                            FROM playerCharacter
                            WHERE characterID = ${sessionStorage.getItem('characterID')};`;
            const result = await makeDatabaseQuery(query);
            return result.pop()['name'];
        }
    },
    {
        name: "Play Time",
        statFunction: async () => {
            const query = `SELECT currentPlayTime 
                            FROM playerCharacter
                            WHERE characterID = ${sessionStorage.getItem('characterID')};`;
            const result = await makeDatabaseQuery(query);
            const rawTime = Math.floor(parseFloat(result.pop()['currentPlayTime']));
            return convertTimeToHumanReadable(rawTime);

        }
    },
    {
        name: "Current State",
        statFunction: async () => {
            const query = `SELECT alive, successful 
                            FROM playerCharacter
                            WHERE characterID = ${sessionStorage.getItem('characterID')};`;
            const result = await makeDatabaseQuery(query);
            const alive = result[0]['alive'];
            const successful = result[0]['successful'];
            if (alive == '1'){
                return "In Progress";
            } else if (successful == '1'){
                return "Victorious";
            } else {
                return "Dead";
            }

        }
    },
    {
       name: "Current Progess",
         statFunction: async () => {
                const query = `SELECT catacombsCompleted, townHallVisited, forestCompleted, libraryCompleted, palaceCompleted, wormHillCompleted, successful 
                                FROM playerCharacter
                                WHERE characterID = ${sessionStorage.getItem('characterID')};`;
                const result = await makeDatabaseQuery(query);
                const gameProgress = result[0];
                return calculateGamePercentage(gameProgress);
         }
    },
    {
        name: "Current Area",
        statFunction: async () => {
            const query = `SELECT areas.name, playerCharacter.successful
                            FROM playerCharacter 
                            JOIN areas ON playerCharacter.currentArea = areas.id 
                            WHERE playerCharacter.characterID = '${sessionStorage.getItem('characterID')}';`;
            const result = await makeDatabaseQuery(query);
            if(result[0]['successful'] == '1'){
                return "---";
            }
            return result.pop()['name'];

        }
    },
    {
        name: "Ending Achieved",
        statFunction: async () => {
            const query = `SELECT endingAchieved, successful, alive
                            FROM playerCharacter 
                            WHERE playerCharacter.characterID = '${sessionStorage.getItem('characterID')}';`;
            const result = await makeDatabaseQuery(query);
            if(result[0]['alive'] == '1'){
                return "---";
            } else if(result[0]['successful'] == '0'){
                return "Death & Defeat";
            } else if(result[0]['endingAchieved'] == '1'){
                return "Midas Reborn";
            } else if(result[0]['endingAchieved'] == '2'){
                return "A Hero's Death";
            } else if(result[0]['endingAchieved'] == '3'){
                return "Black Hole";
            } else if(result[0]['endingAchieved'] == '4'){
                return "True Ending";
            } else if(result[0]['endingAchieved'] == '5'){
                return "Should've Died A Hero";
            } else if(result[0]['endingAchieved'] == '6'){
                return "Live By The Sword, Die By The Sword";
            } else if(result[0]['endingAchieved'] == '7'){
                return "Buried Secrets";
            }

        }
    },
    {
        name: "Currently Held Items",
        statFunction: async () => {
            const query = `SELECT DISTINCT itemName
                            FROM playerInventory
                            WHERE characterID = ${sessionStorage.getItem('characterID')};`;    
            const result = await makeDatabaseQuery(query);
            return result.map(item => item['itemName'].replace(/_/g, " ")).join(", ");
        }
    },
    {
        name: "All Collected Items",
        statFunction: async () => {
            const query = `SELECT DISTINCT itemName
                            FROM playerInventoryLog
                            WHERE characterID = ${sessionStorage.getItem('characterID')} AND action='ADD';`;    
            const result = await makeDatabaseQuery(query);
            return result.map(item => item['itemName'].replace(/_/g, " ")).join(", ");
        }
    },
    {
        name: "All Used Items",
        statFunction: async () => {
            const query = `SELECT DISTINCT itemName
                            FROM playerInventoryLog
                           WHERE characterID = ${sessionStorage.getItem('characterID')} AND action = 'REMOVE';`;    
            const result = await makeDatabaseQuery(query);
            return result.map(item => item['itemName'].replace(/_/g, " ")).join(", ");
        }
    },
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