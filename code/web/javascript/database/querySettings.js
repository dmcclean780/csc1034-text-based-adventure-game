async function querySettings() {
    const username = sessionStorage.getItem("username");
    const query = `SELECT * FROM settings WHERE username = '${username}'`;

    try{
        const result = await makeDatabaseQuery(query);
        if (result && result.length > 0) {

            return result[0];
        }
    } catch (error) {
       throw error;
    }
}