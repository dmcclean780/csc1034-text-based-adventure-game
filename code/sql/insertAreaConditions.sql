INSERT INTO areaConditions(conditionName, conditionScript)
VALUES
    ('catacombs not complete', '(getState("catacombsCompleted") == false)'),
    ('forest not complete', '(getState("forestCompleted") == false)'),
    ('palace not complete', '(getState("palaceCompleted") == false)'),
    ('library not complete', '(getState("libraryCompleted") == false)'),
    ('always', 'true');