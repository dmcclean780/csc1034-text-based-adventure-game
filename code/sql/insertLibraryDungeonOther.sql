INSERT INTO libraryBooks(id, areaID, content, contentTitle, scoreNeeded, totalLives, bookFunction)
VALUES
(
    8,
    3,
    "Peace is quiet, soft, and bright|
        A gentle glow in darkest night.|
        No war, no hate, just calm and free,|
        A world of love for you and me.",
    "The Gift of Peace",
    10,
    3,
    '(()=> {loadNextDecision(3, 9)})'
),
(
    18,
    3,
    "War is fire, loud and cruel,|
        Turning hearts and hands to fuel.|
        No love, no peace, just endless cries,|
        A world of smoke beneath dark skies.|
        Fields once green now stained with red,|
        Echoed screams of those who bled.|
        Hope is lost in endless fight,|
        Shadows drown the fading light.",
    "The Curse of War",
    20,
    3,
    '(()=> {loadNextDecision(3, 19)})'
),
(
    25,
    3,
    "Dans l'arène, le sol est rouge de sang,|
        Les gladiateurs luttent, fiers et défiants,|
        Sous les yeux d'une foule assoiffée de douleur,|
        Leurs cris résonnent, emportés par la peur.|
        Les murs du colisée murmurent la guerre,|
        Où la vie et la mort dansent en enfer,|
        Le sable souillé par des combats sans fin,|
        Un lieu où l'honneur se mêle au destin.",
    "Le dernier bastion.",
    30,
    3,
    '(()=> {loadNextDecision(3, 26)})'
);

INSERT INTO dialogues
    (id, areaID, npcID)
VALUES
    (
        22,
        3,
        20
    ),
    (
        23,
        3,
        22
    ),
    (
        28,
        3,
        21
    ),
    (
        27,
        3,
        23
    ),
    (
        26,
        3,
        24
    );

 INSERT INTO timerBars(id, areaID, duration, onComplete)
VALUES
    (12, 3, 10, '(()=>{goToDeathScreen("In a panic, you do not move at all, both bookcases crash onto your body.")})');
    