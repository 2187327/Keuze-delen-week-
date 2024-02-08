--[[
The following functions have been exposed to lua:
setBackground(string aPath) sets the background to the texture in the folder textures.
createButton(string area name which the player enters, string context); adds a button to the current screen
createTextfield(string context); adds a textfield to the top of the screen.
CLS(); clears the screen.
exitGame(); exits the game.
playSound(string path to sound)
]]--

--[[Moet voldoen aan
Een verhaal
Geluid en muziek

]]


function story(aName)
    --1 Het begin
	if (aName == "start") then
		CLS()
		createTextfield("Your car broke down and you got offered a job\nto Be the security guard of a abondoned hospital.\nyour car will be repaired for free. do you accept?")
		setBackground("suspiciousMan.jpg")
		createButton("startAdventure", "Yes I accept")
		createButton("firstLeave","I have to pass on the offer")
		playSound("")
	end
	
	--2 ending 1  
	if (aName == "firstLeave") then
		CLS() 
		createTextfield("You don't want to get yourself mixed in this BS\n So you call a real mechanic\n(Ending) (1/4: Im not getting involved)") 
		setBackground("NicolasCage.jpg") 
		createButton("start", "Restart") 
	end 
	 
	--3 
	if (aName == "startAdventure") then
		CLS()
		createButton("Hospital","Go in the hospital")
		createButton("LeaveHospital", "Run away")
		setBackground("Hospital.jpg")
	end

	--4 Je bent binnnen het ziekenhuis
	if(aName == "Hospital") then
		CLS()
		setBackground("AbandonedHospitalHallway.jpg")
		createButton("rightRoom", "Go to the room on the right")
		createButton("youWillDie", "Go to the room on the Left")
		createButton("leave", "leave")
	end

	--5 Je bent slim en gaat weg
	if(aName == "LeaveHospital") then
		CLS()
		createTextfield("LeaveHospital", "You chose the smartest option and survived\nYou might need a new set of tires\n(Ending) (2/4: Smart Ending)")
		setBackground("Ending4.jpg")
		createButton("start", "Restart")
	end

	--6 Je verlaat het ziekenhuis Ending 1
	if (aName == "leave") then
		CLS()
		createTextfield("You chose the smartest option and survived\nYou might need a new set of tires\n(Ending) (2/4: Smart Ending)")
		setBackground("Ending4.jpg")
		createButton("start", "Restart")
	end

	--7 Je gaat naar de kamer links
	if(aName == "leftRoom") then
		CLS()
		createButton("killWilly","Fight Willy Wenka")
		setBackground("firstMonster.jpg")
	end

	--8 Je gaat naar de kamer rechts
	if(aName == "rightRoom") then
		CLS()
		createButton("killMonkey","Fight Aman Pritipal")
		setBackground("secondMonster.jpg")
	end
	
	--9
	if(aName == "youWillDie") then
		CLS()
		setBackground("firstMonster.jpg")
		createButton("yourDead", "Fight back")
	end

	--10 Je gaat dood door Willy
	if(aName == "yourDead") then
		CLS()
		createButton("start", "Restart")
		setBackground("YouDied.jpg")
		createTextfield("You died\n(Ending) (3/4: Bad Ending)")
	end

	
	--11 you kill Monkey
	if (aName == "killMonkey") then
		CLS()	
		setBackground("KillMonkey.jpg")
		createButton("killedMonkey", "Go back to the hallway")
	end

	--12 You can fight Willy or kill yourself NOW!!!
	if (aName == "killedMonkey") then
		CLS()
		createButton("leave", "leave")
		createButton("leftRoom", "Go to the room on the left")
		setBackground("AbandonedHospitalHallway.jpg")
		createButton("endyourself","Kill yourself NOW!!! and give somebody else a piece of that oxygen")
	end

	--KYS
	if(aName == "endyourself") then
		CLS()
		setBackground("KYS.jpg")
		createButton("start", "Restart")
		createTextfield("Your life is nothing! You serve zero purpose! You should kill yourself now! And give somebody else a piece of that oxygen and ozone layer, that's covered up so we can breathe inside this blue trapped bubble.\nBecause what are you here for? Kill yourself.")
	end

	--13 you kill Willy
	if (aName == "killWilly") then
		CLS()
		setBackground("willyDead.png")
		createButton("goBackToHallway", "Go back to the hallway")
	end

	--14 You leave the building
	if (aName == "killWilly") then 
		CLS()
		createButton("coolEnding", "Leave the building")
	end
		
	--15 Cool ending, your nicholas cage and killed them all
	if(aName == "coolEnding") then
		CLS()
		createTextfield("Your Nicolas Cage, very cool very nice\nYour car is fixed now\n(Ending) (4/4: Cool Ending)")
		setBackground("coolEnding.jpg")
		createButton("start", "Restart")
	end
end
