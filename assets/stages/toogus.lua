function onCreate()
	-- background shit

	makeLuaSprite('mira', 'toogus/Mira', -600, -250);
	setScrollFactor('mira', 1, 1);
	scaleObject('mira', 1.8, 1.8);
	
	makeLuaSprite('table', 'toogus/table', -1700, 950);
	setScrollFactor('table', 1.1, 1.1);
	scaleObject('table', 2.5, 2.5);
	
	makeLuaSprite('machinething', 'toogus/vending_machine', 1100, 160);
	setScrollFactor('machinething', 1, 1);
	scaleObject('machinething', 1.1, 1.1);
	
	addLuaSprite('mira', false);
	addLuaSprite('table', true);
	addLuaSprite('machinething', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end