function onCreate()
	-- background shit

	makeLuaSprite('fondo', 'homr/fondo', 100, 60);
	makeAnimatedLuaSprite('gang', 'homr/bubikoi', 360, 800);
	addAnimationByPrefix('gang', 'bounce','kite y blu bumpin', 24, true);
	scaleObject('fondo', 1.1, 1.3);

	addLuaSprite('fondo', false);
	addLuaSprite('gang', true);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end