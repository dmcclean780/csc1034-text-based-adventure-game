async function makeAreaQuery(whereConditionAttribute, value) {
    const query = `SELECT
                        areas.id,
                        areas.name,
                        areas.rowPosition,
                        areas.colPosition,
                        area_conditions.conditionScript AS visitCondition
                    FROM areas
                    LEFT JOIN area_conditions ON areas.conditionID = area_conditions.id
                    WHERE areas.${whereConditionAttribute} = COALESCE('${value}', areas.id);`;

    try {
        let areaData = await makeDatabaseQuery(query);
        return areaData;
    } catch (error) {
        throw error;
    }
}