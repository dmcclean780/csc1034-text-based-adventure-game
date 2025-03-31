async function makeMapQuery(mapID) {
    const query = `SELECT
    map.rowSize,
    map.colSize
    FROM map
    WHERE map.worldName = '${mapID}';`;

    console.log(query);

    let  mapData = await makeDatabaseQuery(query);
    return mapData.pop();
}