async function makeNpcQuery(npcID) {
    const query = `SELECT 
    npcs.name, 
    npcs.imageFilePath, 
    npcs.firstDialogue,
    npcs.onFirstDialogueEnd, 
    JSON_ARRAYAGG(NPCdialogue.dialogue ORDER BY NPCdialogue.id) AS dialogues,
    JSON_ARRAYAGG(NPCdialogue.onDialogueEnd ORDER BY NPCdialogue.id) AS onEndFunctions
    FROM npcs
    LEFT JOIN NPCdialogue ON npcs.id = NPCdialogue.npcID
    WHERE npcs.id = ${npcID}
    GROUP BY npcs.id, npcs.name, npcs.imageFilePath, npcs.firstDialogue;`;

    let  npcData = await makeDatabaseQuery(query);
    return npcData.pop();
}