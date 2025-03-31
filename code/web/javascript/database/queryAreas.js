async function makeAreaQuery(whereConditionAttribute, value) {
    const query = `SELECT
                        areas.id,
                        areas.name,
                        areas.rowPosition,
                        areas.colPosition,
                        areaConditions.conditionScript AS visitCondition
                    FROM areas
                    LEFT JOIN areaConditions ON areas.conditionID = areaConditions.id
                    WHERE areas.${whereConditionAttribute} = '${value}';`;
    try {
        let areaData = await makeDatabaseQuery(query);
        return areaData;
    } catch (error) {
        throw error;
    }
}