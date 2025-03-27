async function makeMapQuery(mapID) {
    const query = `SELECT
    map.rowSize,
    map.colSize
    FROM map
    WHERE map.worldName = '${mapID}';`;
    try {
        let mapData = await makeDatabaseQuery(query);
        return mapData.pop();
    } catch (error) {
        throw error;
    }
}