INSERT INTO areaConditions(conditionName, conditionScript)
VALUES
    ('catacombs not complete', '(getState("catacombsCompleted") == false)'),
    ('forest not complete', '(getState("forestCompleted") == false)'),
    ('palace not complete', '(getState("palaceCompleted") == false)'),
    ('library not complete', '(getState("libraryCompleted") == false)'),
    ('worm hill not complete', '(getState("wormHillCompleted") == false)'),
    ('always', 'true'),
    ('all main dungeons complete', '(getState("catacombsCompleted") == true && getState("forestCompleted") == true && getState("palaceCompleted") == true && getState("libraryCompleted") == true && getState("wormHillCompleted") == true)');
