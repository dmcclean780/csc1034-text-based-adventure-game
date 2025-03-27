async function ping() {
    let url = `https://${authDetails.webhosting_url}/dbConnector.php`;
    try {
        let response = await fetch(url, { method: 'HEAD' }); // 'HEAD' request checks if the server responds
        if (response.ok) {
            return true;
        } else {
            return false;
        }
    } catch (error) {
        return false;
    }
}
