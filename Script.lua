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
		createTextfield("Your car broke down and you got offered a job to Be the security guard of a abondoned hospital.\nyou will get payed and your car will be repaired for free.\ndo you accept?")
		setBackground("suspiciousMan.jpg")
		createButton("startAdventure", "Yes I accept")
		createButton("leave","I have to pass on the offer")
	end

	if (aName == "startAdventure") then
		CLS()
		createButton("Hospital","Go in the hospital")
		createButton("LeaveHospital", "Run away")
		setBackground("Hospital.jpg")
	end

	--2 Je bent binnnen het ziekenhuis
	if(aName == "Hospital") then
		CLS()
		setBackground("AbandonedHospitalHallway.jpg")
		createButton("leftRoom", "Go to the room on the left")
		createButton("rightRoom", "Go to the room on the right")
		createButton("leave", "leave")
	end

	--3 Je bent slim en gaat weg
	if(aName == "LeaveHospital") then
		CLS(".jpg")
		createTextfield("LeaveHospital", "You chose the smartest option and survived\nYou might need a new set of tires\n(Ending) (2/4: Smart Ending)")
		setBackground("Ending4.jpg")
	end

	--4 Je verlaat het ziekenhuis Ending 1
	if (aName == "leave") then
		CLS()
		createTextfield("You chose the smartest option and survived\nYou might need a new set of tires\n(Ending) (2/4: Smart Ending)")
		setBackground("Ending4.jpg")
	end

	--5 Je gaat naar de kamer links
	if(aName == "leftRoom") then
		CLS()
		createButton("killWilly","Fight Willy Wenka")
		setBackground("firstMonster.jpg")
	end

	--6 Je gaat naar de kamer rechts
	if(aName == "rightRoom") then
		CLS()
		createButton("killMonkey","Fight Aman Pritipal")
		setBackground("secondMonster.jpg")
	end
	--Cool ending, your nicholas cage and killed them all
	if(aName == "coolEnding") then
		CLS()
		createTextfield("Your Nicholas Cage very cool very nice\nYour car is fixed now\n(Ending) (4/4: Cool Ending)")
		setBackground("coolEnding.jpg")
	end
end
