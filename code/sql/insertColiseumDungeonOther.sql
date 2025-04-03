
INSERT INTO dialogues
    (id, areaID, npcID)
VALUES
    (
        7,
        7,
        8
    ),
    
    (
        61,
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
        65,
        7,
        16
    ),
    
    (
        66,
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
    "Why should frail flesh bow to decay,
When will and wit can find a way?
To rot is but a fool’s disease—
I cure with power, gods I appease.
Eternal night bends to my sway.",
    "Defying the Grave",
    10,
    3,
    '(()=> {loadNextDecision(7, 65)})'
),
(
    64,
    7,
    "Why should frail flesh bow to decay,
When will and wit can find a way?
To rot is but a fool’s disease—
I cure with power, gods I appease.
Eternal night bends to my sway.",
    "Defying the Grave",
    10,
    3,
    '(()=> {loadNextDecision(7, 66)})'
);

INSERT INTO timerBars(id, areaID, duration, onComplete)
VALUES
    (8, 7, 10, '(()=>{goToDeathScreen("Literally anything would’ve been a more effective defense than that.")})'),
    (29, 7, 10, '(()=>{goToDeathScreen("Literally anything would’ve been a more effective defense than that.")})');