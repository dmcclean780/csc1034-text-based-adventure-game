
INSERT INTO dialogues
    (id, areaID, npcID)
VALUES
    (
        7,
        7,
        8
    ),
    
    (
        64,
        7,
        9
    ),
    
    (
        12,
        7,
        10
    ),
    
    (
        14,
        7,
        11
    ),
    
    (
        16,
        7,
        12
    ),
    
    (
        23,
        7,
        13
    ),
    
    (
        60,
        7,
        14
    ),
    
    (
        28,
        7,
        15
    ),
    
    (
        62,
        7,
        16
    ),
    
    (
        34,
        7,
        17
    ),
    
    (
        35,
        7,
        17
    ),
    
    (
        37,
        7,
        18
    ),
    
    (
        47,
        7,
        19
    )
    ;

INSERT INTO libraryBooks(id, areaID, content, contentTitle, scoreNeeded, totalLives, bookFunction)
VALUES
(
    63,
    7,
    "Peace is quiet, soft, and bright|
        A gentle glow in darkest night.|
        No war, no hate, just calm and free,|
        A world of love for you and me.",
    "The Gift of Peace",
    30,
    3,
    '(()=> {showDialogue()})'
),
(
    64,
    7,
    "Peace is quiet, soft, and bright|
        A gentle glow in darkest night.|
        No war, no hate, just calm and free,|
        A world of love for you and me.",
    "The Gift of Peace",
    30,
    3,
    '(()=> {showDialogue()})'
);