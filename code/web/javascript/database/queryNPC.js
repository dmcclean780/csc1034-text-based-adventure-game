async function makeNpcQuery(npcID) {
    const query = `SELECT 
    npcs.name, 
    npcs.imageFilePath, 
    npcs.firstDialogue,
    npcs.onFirstDialogueEnd
    FROM npcs
    WHERE npcs.id = ${npcID}
    GROUP BY npcs.id, npcs.name, npcs.imageFilePath, npcs.firstDialogue;`;
    try {
        let npcData = await makeDatabaseQuery(query);
        return npcData.pop();
    } catch (error) {
        throw error;
    }
}