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
            return finalCalc + "% of Users";
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
            return finalCalc + "% of Users";
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
            return finalCalc + "% of Users";
        }
    },
    {
        name: "Completed The Forbidden Forest",
        statFunction: async () => {
            const query = `SELECT COUNT(DISTINCT username) AS users_with_forest_completed
                            FROM playerCharacter
                            WHERE forestCompleted = TRUE;`;
            const result = await makeDatabaseQuery(query);
            const finalCalc = Math.floor((parseInt(result[0]['users_with_forest_completed']) / totalUsers) * 100);
            return finalCalc + "% of Users";
        }
    },
    {
        name: "Completed The Worm Hill",
        statFunction: async () => {
            const query = `SELECT COUNT(DISTINCT username) AS users_with_worm_hill_completed
                            FROM playerCharacter
                            WHERE wormHillCompleted = TRUE;`;
            const result = await makeDatabaseQuery(query);
            const finalCalc = Math.floor((parseInt(result[0]['users_with_worm_hill_completed']) / totalUsers) * 100);
            return finalCalc + "% of Users";
        }
    },
    {
        name: "Completed The Game",
        statFunction: async () => {
            const query = `SELECT COUNT(DISTINCT username) AS users_with_game_completed
                            FROM playerCharacter
                            WHERE successful = TRUE;`;
            const result = await makeDatabaseQuery(query);
            const finalCalc = Math.floor((parseInt(result[0]['users_with_game_completed']) / totalUsers) * 100);
            return finalCalc + "% of Users";
        }
    },
    {
        name: "Achieved: Midas Reborn",
        statFunction: async () => {
            const query = `SELECT COUNT(DISTINCT username) AS users_with_midas_reborn
                            FROM playerCharacter
                            WHERE endingAchieved = 1;`;
            const result = await makeDatabaseQuery(query);
            const finalCalc = Math.floor((parseInt(result[0]['users_with_midas_reborn']) / totalUsers) * 100);
            return finalCalc + "% of Users";
        }
    },
    {
        name: "Achieved: Black Hole",
        statFunction: async () => {
            const query = `SELECT COUNT(DISTINCT username) AS users_with_black_hole
                            FROM playerCharacter
                            WHERE endingAchieved = 3;`;
            const result = await makeDatabaseQuery(query);
            const finalCalc = Math.floor((parseInt(result[0]['users_with_black_hole']) / totalUsers) * 100);
            return finalCalc + "% of Users";
        }
    },
    {
        name: "Achieved: A Hero's Death",
        statFunction: async () => {
            const query = `SELECT COUNT(DISTINCT username) AS users_with_hero_death
                            FROM playerCharacter
                            WHERE endingAchieved = 2;`;
            const result = await makeDatabaseQuery(query);
            const finalCalc = Math.floor((parseInt(result[0]['users_with_hero_death']) / totalUsers) * 100);
            return finalCalc + "% of Users";
        }
    },
    {
        name: "Achieved: The True Ending",
        statFunction: async () => {
            const query = `SELECT COUNT(DISTINCT username) AS users_with_true_ending
                            FROM playerCharacter
                            WHERE endingAchieved = 4;`;
            const result = await makeDatabaseQuery(query);
            const finalCalc = Math.floor((parseInt(result[0]['users_with_true_ending']) / totalUsers) * 100);
            return finalCalc + "% of Users";
        }
    },
    {
        name: "Achieved: Live By The Sword, Die By The Sword",
        statFunction: async () => {
            const query = `SELECT COUNT(DISTINCT username) AS users_with_die_by_sword
                            FROM playerCharacter
                            WHERE endingAchieved = 6;`;
            const result = await makeDatabaseQuery(query);
            const finalCalc = Math.floor((parseInt(result[0]['users_with_die_by_sword']) / totalUsers) * 100);
            return finalCalc + "% of Users";
        }
    },
    {
        name: "Achieved: Buried Secrets",
        statFunction: async () => {
            const query = `SELECT COUNT(DISTINCT username) AS users_with_buried_secrets
                            FROM playerCharacter
                            WHERE endingAchieved = 7;`;
            const result = await makeDatabaseQuery(query);
            const finalCalc = Math.floor((parseInt(result[0]['users_with_buried_secrets']) / totalUsers) * 100);
            return finalCalc + "% of Users";
        }
    },
    {
        name: "Acheived: Should've Died A Hero",
        statFunction: async () => {
            const query = `SELECT COUNT(DISTINCT username) AS users_with_died_hero
                            FROM playerCharacter
                            WHERE endingAchieved = 5;`;
            const result = await makeDatabaseQuery(query);
            const finalCalc = Math.floor((parseInt(result[0]['users_with_died_hero']) / totalUsers) * 100);
            return finalCalc + "% of Users";
        }
    },
    {
        name: "Achieved: All Endings",
        statFunction: async () => {
            const query = `SELECT COUNT(username) AS users_with_all_endings
                            FROM (
                                SELECT username
                                FROM playerCharacter
                                WHERE endingAchieved IN (1,2,3,4,5,6,7) -- Only consider valid endings
                                GROUP BY username
                                HAVING COUNT(DISTINCT endingAchieved) = 7 -- Ensure they have all 7 endings
                            ) AS subquery;`;
            const result = await makeDatabaseQuery(query);
            const finalCalc = Math.floor((parseInt(result[0]['users_with_all_endings']) / totalUsers) * 100);
            return finalCalc + "% of Users";
        }
    },
    {
        name: "Average Deaths Per User",
        statFunction: async () => {
            const query = `SELECT AVG(character_count) AS avg_characters_per_user
                            FROM (
                                SELECT username, COUNT(characterID) AS character_count
                                FROM playerCharacter
                                WHERE alive = FALSE
                                GROUP BY username
                            ) subquery;`;
            const result = await makeDatabaseQuery(query);
            return Math.floor(parseFloat(result.pop()['avg_characters_per_user']));

        }
    }
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