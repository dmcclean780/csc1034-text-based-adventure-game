INSERT INTO areas
    (id, name, rowPosition, colPosition, ableToVisitCondition)
VALUES
    (3, 'Library', 5, 2, '(getState("libraryCompleted") == false)');

INSERT INTO decisions
    (id, areaID, details, prompt, backgroundFilePath, 
    hasTimer, hasPopupMenu, hasDialogue, 
    hasLibraryBook, hasDragDropGame, hasTextEntry, hasButtonOptions, hasSelectInventory)
VALUES
        -- library_outside_enterQuestion --
    (
        1,
        3,
        'As you approach the library, you see what Paige told you about, black sludge seeps out of the door. &#10;
                    The &#39;Ill Ink&#39;, she had called it. You can feel the dark energy emanating from the building.',
        'Enter the Library?',
        'images/backgrounds/library-outside.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
        -- library_outside_lookAround --
    (
        2,
        3,
        'Taking a moment to look around, you see the library is surrounded by a small garden. 
                    The plants are withered and dying, the grass is brown and brittle. &#10; &#10;
                    The air is thick with the smell of decay. This place meant a great deal to Paige.
                    Now, however, it is a place of darkness and despair. Covered in the &#39;Ill Ink&#39;, the library is a shadow of its former self.',
        'Enter the Library?',
        'images/backgrounds/library-outside.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
        -- library_r1_enter --
    (
        3,
        3,
        'Stepping inside, you see the library is in a state of disarray.
                    Shelves are overturned, books are scattered across the floor. &#10; &#10;
                    It&#39;s even worse than Paige described.
                    The &#39;Ill Ink &#39; is consuming this place. &#10; &#10;
                    The door further into the library is blocked by a bookcase covered in ink.
                    You see a small table with an Ink Pot on it.',
        'Enter the Library?',
        'images/backgrounds/library-r1.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
        -- library_r1_investigateBookcase --
    (
        4,
        3,
        'Stepping inside, you see the library is in a state of disarray.
                    Each book in the bookcase seems to be writhing with a life of its own. There seems to be no way past the bookcase as it is.&#10;&#10;
                    The ink pot on the table is glowing with a strange light.',
        'Enter the Library?',
        'images/backgrounds/library-r1.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
        -- library_r1_raiseTorchBookcase --
    (
        5,
        3,
        'As you bring the torch to the bookcase, the books seem to move and slide away from the torch. 
                    One of them slams at you in panic, knocking you to the ground &#10;&#10;
                    You are now in a room with a bookcase that is mostly empty. 
                    The ink pot and quill moves on it&#39;s own, scribbling onto the pages of a book.',
        'What do you do?',
        'images/backgrounds/library-r1.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
        -- library_r1_investigateInkPot --
    (
        6,
        3,
        'As you look at the Quill, you see it writing on its own.&#10;
        The information in the book seems to be changing as the Quill writes.&#10;&#10;
        It&#39;s as though the Quill is taking in the information from the book and rewriting it from memory.',
        'What do you do?',
        'images/backgrounds/library-r1.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
        -- library_r1_takeQuill --
    (
        7,
        3,
        'Grabbing the Quill, you feel a surge of energy flow through you.&#10;&#10;
        The Quill, attempting to continue it&#39;s goal, moves a book into your hands, flowing ink onto the page.&#10;&#10;
        You can take matters into your own hands, and attempt to write with the Quill, or you can let it continue to write on its own.',
        'What do you do?',
        'images/backgrounds/library-r1.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
        -- library_r1_bookReadPeace --
    (
        8,
        3,
        '',
        '',
        'images/backgrounds/library-r1.png',
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        FALSE
    ),
        -- library_r1_bookPeaceWin --
    (
        9,
        3,
        'Successfully removing the Ill Ink from the book, it falls to the floor in front of you.&#10;&#10;
                    It is a small green book with with the word &#39;Peace&#39; written on the cover in gold lettering.',
        'What do you do?',
        'images/backgrounds/library-r1.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
        -- library_r1_nextRoom --
    (
        10,
        3,
        'You pick the book up off the floor. &#10; &#10;  
        [ &#39;Book of Peace&#39; Get ] &#10; &#10;  
        You feel a sense of accomplishment, and a sense of dread. &#10;  
        The room around you seems to be cleansed of the Ill Ink, and the door to the next room is now open. &#10;  
        You can feel the presence of the Ill Ink in the next room, and you know that you must be careful.',
        'What do you do?',
        'images/backgrounds/library-r1.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
        -- library_r2_enter --
    (
        11,
        3,
        'Stepping into the next room, the door slams shut behind you as ink forces it closed. &#10; &#10;  
        You see a Book on a lectern in the centre of the room, all of the ink seems to be flowing in and out of this book, lighter strands of ink flow into the book &#10; &#10;  
        Two bookcases form a corridor to the middle of the room, they look unstable.',
        'What do you do?',
        'images/backgrounds/library-r2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    -- library_r2_stepForwardBookcaseFall --
    (
        12,
        3,
        'As you step forward, the ink convulses, pulling one of the bookcases down&#10;&#10;  
        You are only a fifth of the way along these bookcases&#10;&#10;  
        They will fall on you if you don&#39;t act fast!  ',
        'What do you do?',
        'images/backgrounds/library-r2.png',
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
     -- library_r2_diveBackwards --
    (
        13,
        3,
        'As you dive backwards, the bookcases collapse down into the centre of the room in a heap&#10;&#10;  
        They surely would have killed you if they fell on you.',
        'What do you do?',
        'images/backgrounds/library-r2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    -- library_r2_walkAroundBookcase --
    (
        14,
        3,
        'Stepping to the side of the bookcases, they collapse down into the centre of the room in a heap&#10;&#10;  
        They surely would have killed you if they fell on you.',
        'What do you do?',
        'images/backgrounds/library-r2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    -- library_r2_approachBook --
    (
        15,
        3,
        'Approaching the book, you see ink tendrils flowing in and out of it. Thinner, weaker ones flow into the book, while thicker, stronger ones flow out. As though empowered by the books information&#10;&#10;
        The book is closed, and the tendrils are preventing it from opening.&#10;&#10;',
        'What do you do?',
        'images/backgrounds/library-r2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    -- library_r2_sliceStronger --
    (
        16,
        3,
        'Digging your sword into the thicker tendrils surrounding the book, more ink takes it&#39;s place&#10;&#10;  
        These appendages are too strong to be beaten like this...',
        'What do you do?',
        'images/backgrounds/library-r2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    -- library_r2_sliceWeaker --
    (
        17,
        3,
        'Slicing the smaller, weaker tendrils, they cleanly fall to the ground, as more ink threatens to take it&#39;s place&#10;&#10;  
        The book is open now, you can almost read it&#39;s text... if it wasn&#39;t being overcome with ink like before...',
        'What do you do?',
        'images/backgrounds/library-r2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    -- library_r2_bookReadWar --
    (
        18,
        3,
        '',
        '',
        'images/backgrounds/library-r2.png',
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        FALSE
    ),
    -- library_r2_bookWarWin --
    (
        19,
        3,
        'Successfully removing the Ill Ink from the book, it falls to the floor in front of you.&#10;&#10;  
        It is a small red book with with the word &#39;War&#39; written on the cover in gold lettering.  ',
        'What do you do?',
        'images/backgrounds/library-r2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    -- library_r2_nextRoom --
    (
        20,
        3,
        'You pick the book up off the floor.&#10;&#10;  
        [ &#39;Book of War&#39; Get ]&#10;&#10;  
        You feel a sense of accomplishment, and a sense of dread.&#10;  
        The room around you seems to be cleansed of the Ill Ink, and the door to the next room is now open.&#10;  
        A locked glass case with a book inside',
        'What do you do?',
        'images/backgrounds/library-r2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
     -- library_r2_unlockGlassCage --
    (
        21,
        3,
        'You unlock the Book Case <br> <br>
        &#39;Paige&#39;s Book&#39; Get <br> <br>
        You feel a sense of accomplishment, and a sense of dread. <br>
        The library is definitely safer, but not all of this power has been cleansed yet. <br>',
        'What do you do?',
        'images/backgrounds/library-r2.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    -- library_r3_entrance --
    (
        22,
        3,
        'You stand in front of a large door into the final room of the library, the fluttering of hundreds of pages can be heard behind the door <br> <br>
        As you step forward... a floorboard creaks below you.',
        'What do you do?',
        'images/backgrounds/library-r3.png',
        FALSE,
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    -- library_r3_bookDecision--
    (
        23,
        3,
        'You look at the two books in your hands:&#10;  
        Peace...&#10;  
        or War...&#10;&#10;  
        Make this decision wisely... he is a powerful sorcerer, you would likely not be able to best him in combat... not in conventional ways, anyway.',
        'What do you do?',
        'images/backgrounds/library-r3.png',
        FALSE,
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    -- library_r3_finalBookInHand --
    (
        24,
        3,
        'You hold the book in your hand as it pulsates with power, Calligraphous has poured all his power into understanding this book to no avail...&#10;&#10;  
        All Ill Ink has flown through this book at one point...&#10;&#10;  
        If you severed the connection here, it would cause a chain reaction, curing the whole library.  ',
        'What do you do?',
        'images/backgrounds/library-r3.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    -- library_r3_bookReadFinal --
    (
        25,
        3,
        '',
        '',
        'images/backgrounds/library-r3.png',
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        FALSE
    ),
    -- library_r3_bookFinalWin --
    (
        26,
        3,
        'As you mark the last blotch of ink from the book, the ground begins to shake...&#10;  
        Every piece of ink from the walls to the floors shudders in pain, trying to escape.&#10;  
        Calligraphous falls to the floor in a panic, his powers failing him as you draw your sword to his neck.&#10;',
        'What do you do?',
        'images/backgrounds/library-r3.png',
        FALSE,
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    -- library_r3_calligraphousKillSpare --
    (
        27,
        3,
        'Calligraphous lies on the ground before you, his life at your mercy.',
        'What do you do?',
        'images/backgrounds/library-r3.png',
        FALSE,
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    -- library_r3_peaceChosen --
    (
        28,
        3,
        'Calligraphous snatches the book as you hand it to him.',
        'What do you do?',
        'images/backgrounds/library-r3.png',
        FALSE,
        FALSE,
        TRUE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    ),
    -- library_end_epilogue --
    (
        29,
        3,
        'You slice your sword across Calligraphous&#39; neck.&#10;  
        He dies instantly as blood floods onto the floor.&#10;  
        Looking around, you can see the library a bit clearer now, books are still thrown all over the floor, and bookcases are mostly empty, but the Ill Ink has been completely removed from this place.&#10;',
        'What do you do?',
        'images/backgrounds/library-r3.png',
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        FALSE,
        TRUE,
        FALSE
    );
        



