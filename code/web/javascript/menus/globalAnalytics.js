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
            const query = `SELECT AVG(COALESCE(character_count, 0)) AS avg_characters_per_user
                            FROM (
                                SELECT u.username, COUNT(pc.characterID) AS character_count
                                FROM users u
                                LEFT JOIN playerCharacter pc ON u.username = pc.username
                                GROUP BY u.username
                            ) subquery;`;
            const result = await makeDatabaseQuery(query);
            return Math.floor(parseFloat(result.pop()['avg_characters_per_user']));

        }
    },
    {
        name: "Average Deaths Per User",
        statFunction: async () => {
            const query = `SELECT AVG(COALESCE(character_count, 0)) AS avg_deaths_per_user
                            FROM (
                                SELECT u.username, COUNT(pc.characterID) AS character_count
                                FROM users u
                                LEFT JOIN playerCharacter pc ON u.username = pc.username AND pc.alive = FALSE AND pc.successful = FALSE
                                GROUP BY u.username
                            ) subquery;`;
            const result = await makeDatabaseQuery(query);
            return Math.floor(parseFloat(result.pop()['avg_deaths_per_user']));

        }
    },
    {
        name: "Average Completions Per User",
        statFunction: async () => {
            const query = `SELECT AVG(COALESCE(character_count, 0)) AS avg_completions_per_user
                            FROM (
                                SELECT u.username, COUNT(pc.characterID) AS character_count
                                FROM users u
                                LEFT JOIN playerCharacter pc ON u.username = pc.username AND pc.successful = TRUE
                                GROUP BY u.username
                            ) subquery;`;
            const result = await makeDatabaseQuery(query);
            return Math.floor(parseFloat(result.pop()['avg_completions_per_user']));

        }
    },
    {
        name: "Average Total Play Time",
        statFunction: async () => {
            const query = `SELECT AVG(COALESCE(user_total_playtime, 0)) AS avg_playtime_per_user
                            FROM (
                                SELECT users.username, SUM(playerCharacter.currentPlayTime) AS user_total_playtime
                                FROM users
                                LEFT JOIN playerCharacter ON users.username = playerCharacter.username
                                GROUP BY users.username
                            ) AS user_playtimes;`;
            const result = await makeDatabaseQuery(query);
            const rawTime = Math.floor(parseFloat(result.pop()['avg_playtime_per_user']));
            return convertTimeToHumanReadable(rawTime);
        }
    },
    {
        name: "Average Play Time For Successful Characaters",
        statFunction: async () => {
            const query = `SELECT AVG(COALESCE(success_total_playtime, 0)) AS avg_playtime_per_success
                            FROM (
                                SELECT SUM(currentPlayTime) AS success_total_playtime
                                FROM playerCharacter
                                WHERE successful = TRUE
                                GROUP BY characterID
                            ) AS successful_playtimes;`;
            const result = await makeDatabaseQuery(query);
            const rawTime = Math.floor(parseFloat(result.pop()['avg_playtime_per_success']));
            return convertTimeToHumanReadable(rawTime);
        }
    },
    {
        name: "Average Play Time For Death",
        statFunction: async () => {
            const query = `SELECT AVG(COALESCE(death_total_playtime, 0)) AS avg_playtime_per_death
                            FROM (
                                SELECT SUM(currentPlayTime) AS death_total_playtime
                                FROM playerCharacter
                                WHERE successful = FALSE AND alive = FALSE                         
                                GROUP BY characterID
                            ) AS death_playtimes;`;
            const result = await makeDatabaseQuery(query);
            const rawTime = Math.floor(parseFloat(result.pop()['avg_playtime_per_death']));
            return convertTimeToHumanReadable(rawTime);
        }
    },
    {
        name: "Most Collected Item",
        statFunction: async () => {
            const query = `SELECT itemName, COUNT(*) AS occurrences
                            FROM playerInventoryLog
                            WHERE action = 'ADD'
                            GROUP BY itemName
                            ORDER BY occurrences DESC
                            LIMIT 1;`;
            const result = await makeDatabaseQuery(query);
            return result.pop().itemName.replace(/_/g, " ");
        }
    },
    {
        name: "Most Used Item",
        statFunction: async () => {
            const query = `SELECT itemName, COUNT(*) AS occurrences
                            FROM playerInventoryLog
                            WHERE action = 'REMOVE'
                            GROUP BY itemName
                            ORDER BY occurrences DESC
                            LIMIT 1;`;
            const result = await makeDatabaseQuery(query);
            if(result.length === 0){
                return "No items used";
            }
            return result.pop().itemName.replace(/_/g, " ");
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