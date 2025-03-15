async function makeAreaQuery(areaID) {
    const query = `SELECT
    areas.id,
    areas.name,
    areas.rowPosition,
    areas.colPosition,
    areas.ableToVisitCondition
    FROM areas
    WHERE areas.id = COALESCE(${areaID}, areas.id);`;

    let  areaData = await makeDatabaseQuery(query);
    if(areaID == "NULL"){
        return areaData;
    }
    return areaData.pop();
}