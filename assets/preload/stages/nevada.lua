function onCreate()
	--Create Background sprites
	makeLuaSprite('tricky/hue', 'hue', -1200, -650);
	setLuaSpriteScrollFactor('hue', 0.9);
	
	makeLuaSprite('island', 'tricky/island', -1300, -400);
	addLuaSprite('island', false);
	addLuaSprite('hue', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end