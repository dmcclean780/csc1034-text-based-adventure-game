USE csc1034_group54;

SELECT 
    npcs.name, 
    npcs.imageFilePath, 
    npcs.firstDialogue, 
    GROUP_CONCAT(NPCdialogue.dialogue ORDER BY NPCdialogue.id SEPARATOR ', ') AS dialogues
FROM npcs
LEFT JOIN NPCdialogue ON npcs.id = NPCdialogue.npcID
WHERE npcs.id = 2
GROUP BY npcs.id, npcs.name, npcs.imageFilePath, npcs.firstDialogue;