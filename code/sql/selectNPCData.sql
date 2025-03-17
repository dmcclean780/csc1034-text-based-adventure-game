USE csc1034_group54;

SELECT 
    npcs.name, 
    npcs.imageFilePath, 
    npcs.firstDialogue
FROM npcs
WHERE npcs.id = 2
GROUP BY npcs.id, npcs.name, npcs.imageFilePath, npcs.firstDialogue;