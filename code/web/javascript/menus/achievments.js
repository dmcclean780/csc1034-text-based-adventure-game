let totalUsers;

const stats = [
    {
        name: "Completed Catacombs",
        statFunction: async () => {
            const query = `SELECT COUNT(DISTINCT username) AS users_with_completed_catacombs
                            FROM playerCharacter
                            WHERE catacombsCompleted = TRUE;`;
            const result = await makeDatabaseQuery(query);
            const finalCalc = Math.floor((parseInt(result[0]['users_with_completed_catacombs']) / totalUsers) * 100);
            return finalCalc + "% of Users";
        },
        currentUserCompleted: async () => {
            const query = `SELECT catacombsCompleted
                            FROM playerCharacter
                            WHERE username = '${sessionStorage.getItem("username")}'`;
            const result = await makeDatabaseQuery(query);
            for (const row of result) {
                if (row['catacombsCompleted'] = 1) {
                    return true;
                }
            }
            return false;
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
        },
        currentUserCompleted: async () => {
            const query = `SELECT townHallVisited
                            FROM playerCharacter
                            WHERE username = '${sessionStorage.getItem("username")}'`;
            const result = await makeDatabaseQuery(query);
            for (const row of result) {
                if (row['townHallVisited'] == 1) {
                    return true;
                }
            }
            return false;
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
        },
        currentUserCompleted: async () => {
            const query = `SELECT libraryCompleted
                            FROM playerCharacter
                            WHERE username = '${sessionStorage.getItem("username")}'`;
            const result = await makeDatabaseQuery(query);
            for (const row of result) {
                if (row['libraryCompleted'] == 1) {
                    return true;
                }
            }
            return false;
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
        },
        currentUserCompleted: async () => {
            const query = `SELECT palaceCompleted
                            FROM playerCharacter
                            WHERE username = '${sessionStorage.getItem("username")}'`;
            const result = await makeDatabaseQuery(query);
            for (const row of result) {
                if (row['palaceCompleted'] == 1) {
                    return true;
                }
            }
            return false;
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
        },
        currentUserCompleted: async () => {
            const query = `SELECT forestCompleted
                            FROM playerCharacter
                            WHERE username = '${sessionStorage.getItem("username")}'`;
            const result = await makeDatabaseQuery(query);
            for (const row of result) {
                if (row['forestCompleted'] == 1) {
                    return true;
                }
            }
            return false;
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
        },
        currentUserCompleted: async () => {
            const query = `SELECT wormHillCompleted
                            FROM playerCharacter
                            WHERE username = '${sessionStorage.getItem("username")}'`;
            const result = await makeDatabaseQuery(query);
            for (const row of result) {
                if (row['wormHillCompleted'] == 1) {
                    return true;
                }
            }
            return false;
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
        },
        currentUserCompleted: async () => {
            const query = `SELECT successful
                            FROM playerCharacter
                            WHERE username = '${sessionStorage.getItem("username")}'`;
            const result = await makeDatabaseQuery(query);
            for (const row of result) {
                if (row['successful'] == 1) {
                    return true;
                }
            }
            return false;
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
        },
        currentUserCompleted: async () => {
            const query = `SELECT endingAchieved
                            FROM playerCharacter
                            WHERE username = '${sessionStorage.getItem("username")}'`;
            const result = await makeDatabaseQuery(query);
            for (const row of result) {
                if (row['endingAchieved'] == 1) {
                    return true;
                }
            }
            return false;
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
        },
        currentUserCompleted: async () => {
            const query = `SELECT endingAchieved
                            FROM playerCharacter
                            WHERE username = '${sessionStorage.getItem("username")}'`;
            const result = await makeDatabaseQuery(query);
            for (const row of result) {
                if (row['endingAchieved'] == 3) {
                    return true;
                }
            }
            return false;
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
        },
        currentUserCompleted: async () => {
            const query = `SELECT endingAchieved
                            FROM playerCharacter
                            WHERE username = '${sessionStorage.getItem("username")}'`;
            const result = await makeDatabaseQuery(query);
            for (const row of result) {
                if (row['endingAchieved'] == 2) {
                    return true;
                }
            }
            return false;
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
        },
        currentUserCompleted: async () => {
            const query = `SELECT endingAchieved
                            FROM playerCharacter
                            WHERE username = '${sessionStorage.getItem("username")}'`;
            const result = await makeDatabaseQuery(query);
            for (const row of result) {
                if (row['endingAchieved'] == 4) {
                    return true;
                }
            }
            return false;
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
        },
        currentUserCompleted: async () => {
            const query = `SELECT endingAchieved
                            FROM playerCharacter
                            WHERE username = '${sessionStorage.getItem("username")}'`;
            const result = await makeDatabaseQuery(query);
            for (const row of result) {
                if (row['endingAchieved'] == 6) {
                    return true;
                }
            }
            return false;
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
        },
        currentUserCompleted: async () => {
            const query = `SELECT endingAchieved
                            FROM playerCharacter
                            WHERE username = '${sessionStorage.getItem("username")}'`;
            const result = await makeDatabaseQuery(query);
            for (const row of result) {
                if (row['endingAchieved'] == 7) {
                    return true;
                }
            }
            return false;
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
        },
        currentUserCompleted: async () => {
            const query = `SELECT endingAchieved
                            FROM playerCharacter
                            WHERE username = '${sessionStorage.getItem("username")}'`;
            const result = await makeDatabaseQuery(query);
            for (const row of result) {
                if (row['endingAchieved'] == 5) {
                    return true;
                }
            }
            return false;
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
        },
        currentUserCompleted: async () => {
            const query = `SELECT endingAchieved
                            FROM playerCharacter
                            WHERE username = '${sessionStorage.getItem("username")}'`;
            const result = await makeDatabaseQuery(query);

            const requiredNumbers = new Set(["1", "2", "3", "4", "5", "6", "7"]);
            const foundNumbers = new Set(result.map(row => row.endingAchieved));
            // Check if all required numbers exist in foundNumbers
            return [...requiredNumbers].every(num => foundNumbers.has(num));
        }
    }
];

async function getTotalUsers() {
    const query = 'SELECT COUNT(*) FROM users';
    const result = await makeDatabaseQuery(query);
    totalUsers = result.pop()['COUNT(*)'];
    return totalUsers;
}

document.addEventListener("DOMContentLoaded", async () => {
    const statTable = document.getElementById("stat-table");

    totalUsers = await getTotalUsers();

    for (const stat of stats) {
        const statBox = document.createElement("div");
        statBox.classList.add("stat-box");
        statBox.innerHTML = `<span>${stat.name}</span><span>${await stat.statFunction()}</span>`;
        statBox.style.backgroundColor = await stat.currentUserCompleted() ? "rgba(100, 50, 50, 0.75)" : "rgba(100, 50, 50, 0.25)";
        statTable.appendChild(statBox);
    }
});