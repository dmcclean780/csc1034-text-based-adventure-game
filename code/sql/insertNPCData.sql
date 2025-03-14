

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
    "Safe Travels, friend and remember, if you need anything, you know where to find me."]',
    '(() => { loadNextDecision(1, 1); })'),

  ('Barkeep',
    'images/npc/barkeep.png',
    '["Hmph. New face, eh? Don&#39;t get many strangers &#39;round here. Least not ones who ain&#39;t trouble.", 
    "You here for a drink, or just looking? &#39;Cause I don&#39;t serve folks who ask too many questions. And I sure as hell don&#39;t serve fools who bring trouble to my doorstep.", 
    "&#39;Specially folks who come here armed and look like death warmed over.", 
    "If I were you I&#39;d move along now and outta Eldermere."]',
    '(() => { loadNextDecision(1, 3); })'),

  ('Witch',
    'images/npc/witch.png',
    '["PlayerNameHere", 
    "Total Decisions: NoFromDatabase" , 
    "Various Other Game Stats"]',
    '(() => { loadNextDecision(1, 8); })'),

  ('Andrew',
    'images/npc/andrew.png',
    '["Hark!", 
    "Brave Traveler, we have been awaiting your arrival.", 
    "I knew you were coming since I felt the presance of Death leave those woods.", 
    "Now tell me what is your name?", "Ah, PlayerNameHere!", 
    "We are facing a grave dilemma, the Wizard Pandora has been ammassing power.", 
    "He seeks to cntrol the 4 powers of our world: Wealth, Strength, Knowledge and Courage.", 
    "Should he succeed his dominion will be unquestionable.", 
    "You must stop him, I will let Bee-Yen explain to you the particulars.", 
    "Good Luck, PlayerNameHere."]',
     '(() => { loadNextDecision(1, 7); })'),

  ('Bee-Yen',
    'images/npc/beeyen.png',
    '["Greetings, PlayerNameHere.", 
    "I am Bee-Yen, the head of the Eldermere Wizards Guild.", 
    "We have been monitoring the movements of the Wizard Pandora for some time now.", 
    "We have deduced the locations of the four powers that he seeks to control. I will mark them on your map.", 
    "You must travel to each location and retrieve the power before Pandora can get his hands on it.", 
    "Once you have secured all 4 powers you can assault Pandora at his Colluseum.", 
    "Take your time in Eldermere before you set out, you will need all the strength you can muster.", 
    "Good Luck, PlayerNameHere."]',
     '(() => { loadNextDecision(1, 3); })'),

  ('Paige Reed',
    'images/npc/paige.png',
    '["Hello, PlayerNameHere."]',
     '(() => { loadNextDecision(1, 3); })'),
  
  ('Calligraphous',
    'images/library_dungeon/calligraphous.png',
    '["WHO DISTURBS MY READINGS?", 
            "Well, well, well, who might you be?", 
            "...not much talking? Well then... I see you have brought two books here for me", 
            "I should thank you for aiding the cause, give one here... NOW."]',
            '(() => { loadNextDecision(3, 23); })'),

  ('Calligraphous',
      'images/library_dungeon/calligraphous.png',
      '["So you wish to aid me then? Interesting...", "Here, give this a read, I cannot understand it"]',
              '(() => { loadNextDecision(3, 24); })'),

  ('Calligraphous',
      'images/library_dungeon/calligraphous.png',
      '["Very well then. Have it your way."]',
                '(() => { goToDeathScreen("Calligraphous killed you"); })'),
                
  ('Calligraphous',
      'images/library_dungeon/calligraphous.png',
      '["You fool! You thought I would help you? Ha!"]',
                '(() => { goToDeathScreen("Calligraphous killed you"); })'),
                
   ('Calligraphous',
      'images/library_dungeon/calligraphous.png',
      '["Please! I did not want to hurt you!", "Listen... I can teach you!", "It does not need to end like this!"]',
                '(() => { loadNextDecision(3, 27); })');

INSERT INTO NPCdialogue(npcID, dialogue, onDialogueEnd)
VALUES
	(2, '["Back are we?", "Well as you can see I still have nothing to offer you", "Safe Travels"]',  '(() => { loadNextDecision(1, 1); })');
    
	