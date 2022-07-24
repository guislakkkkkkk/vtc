function onCreate()

	makeAnimatedLuaSprite('bg', 'kite/fondokite', -1200, -430);
	addAnimationByPrefix('bg', 'bounce','halloweem bg', 24, true);
	addLuaSprite('bg', false);

	makeAnimatedLuaSprite('lights', 'kite/luces', -820, -30);
	addAnimationByPrefix('lights', 'bounce', 'halloweem bg', 24, true);
	addLuaSprite('lights', false);

	makeAnimatedLuaSprite('floor','kite/piso', -1260, 680);
	addAnimationByPrefix('floor', 0.3, 0.3);
	addLuaSprite('floor', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage

end