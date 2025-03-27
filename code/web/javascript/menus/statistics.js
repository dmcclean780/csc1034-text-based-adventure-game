let totalUsers;

const stats = [
    {
        name: "Total Users",
        statFunction: async () => {
            const query = 'SELECT COUNT(*) FROM users';
            const result = await makeDatabaseQuery(query);
            totalUsers = result.pop()['COUNT(*)'];
            return totalUsers;
        }
    },
    {
        name: "Average Characters Per User",
        statFunction: async () => {
            const query = `SELECT AVG(character_count) AS avg_characters_per_user
                            FROM (
                                SELECT username, COUNT(characterID) AS character_count
                                FROM playerCharacter
                                GROUP BY username
                            ) subquery;`;
            const result = await makeDatabaseQuery(query);
            return Math.floor(parseFloat(result.pop()['avg_characters_per_user']));

        }
    },
    {
        name: "Completed Catacombs",
        statFunction: async () => {
            const query = `SELECT COUNT(DISTINCT username) AS users_with_completed_catacombs
                            FROM playerCharacter
                            WHERE catacombsCompleted = TRUE;`;
            const result = await makeDatabaseQuery(query);
            const finalCalc = Math.floor((parseInt(result[0]['users_with_completed_catacombs']) / totalUsers) * 100);
            return finalCalc + "% of Users";
        }
    },
    {
        name: "Visited The Town Hall",
        statFunction: async () => {
            const query = `SELECT COUNT(DISTINCT username) AS users_with_town_hall_visited
                            FROM playerCharacter
                            WHERE townHallVisited = TRUE;`;
            const result = await makeDatabaseQuery(query);
            const finalCalc = Math.floor((parseInt(result[0]['users_with_town_hall_visited']) / totalUsers) * 100);
            return finalCalc +  "% of Users";
        }
    },
    {
        name: "Completed The Library",
        statFunction: async () => {
            const query = `SELECT COUNT(DISTINCT username) AS users_with_library_completed
                            FROM playerCharacter
                            WHERE libraryCompleted = TRUE;`;
            const result = await makeDatabaseQuery(query);
            const finalCalc = Math.floor((parseInt(result[0]['users_with_library_completed']) / totalUsers) * 100);
            return finalCalc +  "% of Users";
        }
    },
    {
        name: "Completed The Palace",
        statFunction: async () => {
            const query = `SELECT COUNT(DISTINCT username) AS users_with_palace_completed
                            FROM playerCharacter
                            WHERE palaceCompleted = TRUE;`;
            const result = await makeDatabaseQuery(query);
            const finalCalc = Math.floor((parseInt(result[0]['users_with_palace_completed']) / totalUsers) * 100);
            return finalCalc +  "% of Users";
        }
    },
    {
        name: "Completed The Forbidden Forest",
        statFunction: () => { return 100 }
    },
    {
        name: "Completed The Worm Hill",
        statFunction: () => { return 100 }
    },
    {
        name: "Completed The Game",
        statFunction: () => { return 100 }
    },
    {
        name: "Acheived: Midas Reborn",
        statFunction: () => { return 100 }
    },
    {
        name: "Acheived: Black Hole",
        statFunction: () => { return 100 }
    },
    {
        name: "Acheived: A Hero's Death",
        statFunction: () => { return 100 }
    },
    {
        name: "Acheived: The True Ending",
        statFunction: () => { return 100 }
    },
    {
        name: "Acheived: Live By The Sword, Die By The Sword",
        statFunction: () => { return 100 }
    },
    {
        name: "Acheived: Buried Secrets",
        statFunction: () => { return 100 }
    },
    {
        name: "Acheived: Should've Died A Hero",
        statFunction: () => { return 100 }
    },
];

document.addEventListener("DOMContentLoaded", async () => {
    const statTable = document.getElementById("stat-table");

    // Fetch total users first
    totalUsers = await stats[0].statFunction(); // Ensures it's set before dependent calculations

    for (const stat of stats) {
        const statBox = document.createElement("div");
        statBox.classList.add("stat-box");
        statBox.innerHTML = `<span>${stat.name}</span><span>${await stat.statFunction()}</span>`;
        statTable.appendChild(statBox);
    }
});