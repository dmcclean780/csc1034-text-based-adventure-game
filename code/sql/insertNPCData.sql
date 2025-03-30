

INSERT INTO npcs (name, imageFilePath, firstDialogue, onFirstDialogueEnd)
VALUES 
	('Ankou', 
    'images/npc/ankou.png', 
    '["Hrrrggghhh…", 
		"Death... Take... Thee... PlayerNameHere...", 
		"Ghhhuuuaaahh…"]',
    '(() => {changeState("ANKOU_HEALTH", 5);
          changeState("PARRY_AVAILABLE", 3);
             loadNextDecision(2, 28); })'),

  ('Armourer', 
    'images/npc/armourer.png', 
    '["Ah, a new face in Eldermere&#39;s Forge, eh?",  
		"Welcome, traveler! Name&#39;s Garrik Ironhand, finest smith in these parts—though, truth be told, I&#39;m the only one.", 
    "Unfortunatly we are overworked as is, so you will have to survive with your current armour", 
    "Though it looks like you already have a mighty fine set already", 
    "Safe Travels, friend, and remember: if you need anything, you know where to find me."]',
    '(() => { loadNextDecision(1, 1); })'),

  ('Barkeep',
    'images/npc/barkeep.png',
    '["Hmph. New face, eh? Don&#39;t get many strangers &#39;round here. Least not ones who ain&#39;t trouble.", 
    "You here for a drink, or just looking? &#39;Cause I don&#39;t serve folks who ask too many questions. And I sure as hell don&#39;t serve fools who bring trouble to my doorstep.", 
    "&#39;Specially folks who come here armed and look like death warmed over.", 
    "If I were you, I&#39;d move along now and outta Eldermere."]',
    '(() => { loadNextDecision(1, 3); })'),

  ('Witch',
    'images/npc/witch.png',
    '["PlayerNameHere", 
    "You have a long journey ahead of you" , 
    "I would recommend visitng the library before you set out"]',
    '(() => { loadNextDecision(1, 8); })'),

  ('Andrew',
    'images/npc/andrew.png',
    '["Hark!", 
    "Brave Traveler, we have been awaiting your arrival.", 
    "I knew you were coming since I felt the presence of Death leave those woods.", 
    "Now tell me, what is your name?", "Ah, PlayerNameHere!", 
    "We are facing a grave dilemma, the Wizard Pandoro has been amassing power.", 
    "He seeks to control the 4 powers of our world: Wealth, Strength, Knowledge and Courage.", 
    "Should he succeed, his dominion will be unquestionable.", 
    "You must stop him, I will let Bee-Yen explain to you the particulars.", 
    "Good Luck, PlayerNameHere."]',
     '(() => { loadNextDecision(1, 7); })'),

  ('Bee-Yen',
    'images/npc/beeyen.png',
    '["Greetings, PlayerNameHere.", 
    "I am Bee-Yen, the head of the Eldermere Wizards Guild.", 
    "We have been monitoring the movements of the Wizard Pandoro for some time now.", 
    "We have deduced the locations of the four powers that he seeks to control. I will mark them on your map.", 
    "You must travel to each location and retrieve the power before Pandoro can get his hands on it.", 
    "Once you have secured all 4 powers you can confront Pandoro at his Coliseum.", 
    "Take your time in Eldermere before you set out, you will need all the strength you can muster.", 
    "Good Luck, PlayerNameHere."]',
     '(() => { loadNextDecision(1, 3); })'),

  ('Paige Reed',
    'images/npc/paige.png',
    '["Hello, PlayerNameHere."]',
     '(() => { loadNextDecision(1, 3); })'),
     


  ('Pandoro', 
<<<<<<< HEAD
    'images/npc/pandoro.png', 
=======
    'images/npc/ankou.png', 
>>>>>>> main
    '[
    "I summoned them from the dead.",
    "They are mine to return there.", 
    "Who are YOU that you think you can undermine me?!"
  ]',
    '(() => {loadNextDecision(7, 10); })')
  ,
  
  ('Pandoro', 
<<<<<<< HEAD
    'images/npc/pandoro.png', 
=======
    'images/npc/ankou.png', 
>>>>>>> main
    '["You entered the arena, and now you wish to flee?", 
		"Fight, or your fate will be death!"]',
    '(() => {loadNextDecision(7, 8); })')
  ,

  ('Pandoro', 
<<<<<<< HEAD
    'images/npc/pandoro.png', 
=======
    'images/npc/ankou.png', 
>>>>>>> main
    '[
    "So, Midas is dead.",
    "It’s you who’s been wreaking havoc in my servant’s homes.", 
    "Let’s see how you deal with something you can’t turn to gold!"
  ]',  
  '(() => { loadNextDecision(7, 13); })')
  ,

  ('Pandoro', 
<<<<<<< HEAD
    'images/npc/pandoro.png', 
=======
    'images/npc/ankou.png', 
>>>>>>> main
    '[
    "You have a mastery over gold that even I cannot attain!",
    "How is this possible?", 
    "I must send you to your grave myself!"
  ]',  
  '(() => { loadNextDecision(7, 58); })')
  ,

  ('Pandoro', 
<<<<<<< HEAD
    'images/npc/pandoro.png', 
=======
    'images/npc/ankou.png', 
>>>>>>> main
    '[
    "WHAT HAVE YOU DONE!",
    "You fool!", 
    "You would turn the entire world to gold to defeat me?!"
  ]',  
  '(() => { loadNextDecision(7, 41); })')
  ,

  ('Pandoro', 
<<<<<<< HEAD
    'images/npc/pandoro.png', 
=======
    'images/npc/ankou.png', 
>>>>>>> main
    '[
    "Congrats, challenger.",
    "Who are you to enter my coliseum and win out against these fine warriors?", 
    "Perhaps we can find out…"
  ]',  
  '(() => { loadNextDecision(7, 10); })')
  ,

  ('Pandoro', 
<<<<<<< HEAD
    'images/npc/pandoro.png', 
=======
    'images/npc/ankou.png', 
>>>>>>> main
    '[
    "You entered the arena, and now you wish to flee?",
    "Fight, or your fate will be death!"
  ]',  
  '(() => { loadNextDecision(7, 29); })')
  ,

  ('Pandoro', 
<<<<<<< HEAD
    'images/npc/pandoro.png', 
=======
    'images/npc/ankou.png', 
>>>>>>> main
    '[
    "I summoned them from the dead.",
    "They are mine to return there.", 
    "Who are YOU that you think you can undermine me?!"
  ]',
    '(() => {loadNextDecision(7, 31); })')
  ,

  ('Pandoro', 
<<<<<<< HEAD
    'images/npc/pandoro.png', 
=======
    'images/npc/ankou.png', 
>>>>>>> main
    '[
    "So, it was you who defeated Calligraphus.",
    "I shall have justice for my servant.", 
    "A life for a life!"
  ]',  
  '(() => { loadNextDecision(7, 32); })')
  ,

  ('Pandoro', 
<<<<<<< HEAD
    'images/npc/pandoro.png', 
=======
    'images/npc/ankou.png', 
>>>>>>> main
    '[
    "You fought well.",
    "Better than I expected.", 
    "But tell me… do you even understand what I am?",
    "I am no mere sorcerer.",
    "I have defied death itself, rewritten fate with my own hands.",
    "My name is etched into the bones of this world, my soul beyond the grasp of time!"
  ]',  
  '(() => { loadNextDecision(7, 36); })')
  ,

  ('Pandoro', 
<<<<<<< HEAD
    'images/npc/pandoro.png', 
=======
    'images/npc/ankou.png', 
>>>>>>> main
    '[
    "Do you think this is justice?",
    "Do you believe you have saved the world?",
    "Ha. No… you are simply a fool playing hero, too blind to see the abyss you have opened.",
    "I was all that held true darkness at bay.",
    "Without me, what will you do when something far worse rises?",
    "Well? Get on with it.",
    "Deliver your so-called justice…"
  ]',  
  '(() => { loadNextDecision(7, 59); })')
  ,

  ('Pandoro', 
<<<<<<< HEAD
    'images/npc/pandoro.png', 
=======
    'images/npc/ankou.png', 
>>>>>>> main
    '[
    "You have lost, PlayerNameHere.",
    "My power was not solely dependent on that staff, it is anchored to my very soul!", 
    "I can feel the power gathering now, filling my being!"
  ]',  
  '(() => { loadNextDecision(7, 48); })'),
    


  ('Calligraphous',
    'images/npc/calligraphous.png',
    '["WHO DISTURBS MY READINGS?", 
            "Well, well, well, who might you be?", 
            "...not much talking? Well then... I see you have brought two books here for me", 
            "I should thank you for aiding the cause, give one here... NOW."]',
            '(() => { loadNextDecision(3, 23); })'),


  ('Calligraphous',
      'images/npc/calligraphous.png',
      '["So you wish to aid me then? Interesting...", "Here, give this a read, I cannot understand it"]',
              '(() => { loadNextDecision(3, 24); })'),

  -- Dialogue 10: 3-23
  ('Calligraphous',
      'images/npc/calligraphous.png',
      '["Very well then. Have it your way."]',
                '(() => { goToDeathScreen("Calligraphous killed you"); })'),

  
  ('Calligraphous',
      'images/npc/calligraphous.png',
      '["You fool! You thought I would help you? Ha!"]',
                '(() => { goToDeathScreen("Calligraphous killed you"); })'),

  
   ('Calligraphous',
      'images/npc/calligraphous.png',
      '["Please! I did not want to hurt you!", "Listen... I can teach you!", "It does not need to end like this!"]',
                '(() => { loadNextDecision(3, 27); })');

