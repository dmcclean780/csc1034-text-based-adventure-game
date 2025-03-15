async function makeDatabaseQuery(query) {
    let params = new URLSearchParams();
    params.append('hostname', authDetails.hostname);
    params.append('username', authDetails.username);
    params.append('password', authDetails.password);
    params.append('database', authDetails.database);
    params.append('query', query);

    return await executeDatabaseQuery(params);
}


async function executeDatabaseQuery(params) {
    let url = `	https://${authDetails.webhosting_url}/dbConnector.php`;
    try {
        let response = await fetch(url, {
            method: 'POST',
            body: params
        }); // Waits for a response from the fetch


        let result = await response.json(); // Waits for the JSON to be parsed

        // If an error has been returned, e.g. incorrect SQL syntax, display the error
        if (result.error) {
            console.log(result.error.toString());
        }
        // If a dataset has been returned, e.g. from a SELECT statement, do something.
        else if (result.data) {
            console.log(result.data);
            return result.data;
        }
        else {
            // For anything else, assume something like INSERT, DROP etc. corresponding message
           console.log("success: ", result.success)
            if (result.affected_rows !== undefined) {
                console.log(result.affected_rows);
            }
        }
        return null;
    } catch (error) {
        console.error('Error parsing JSON:', error);
        return null;
    }
}