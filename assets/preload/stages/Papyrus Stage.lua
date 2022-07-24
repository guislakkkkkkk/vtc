function onCreate()
	makeLuaSprite('stageback', 'PapyrusBG', -500, -300);
	setScrollFactor('stageback', 0.9, 0.9);
	addLuaSprite('stageback', false);

	makeLuaSprite('bartop','',0,-30)
    makeGraphic('bartop',1381,100,'000000')
    addLuaSprite('bartop',true)
    setObjectCamera('bartop','hud')
    setScrollFactor('bartop',0,0)

    makeLuaSprite('barbot','',0,650)
    makeGraphic('barbot',1381,1000,'000000')
    addLuaSprite('barbot',false)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')

	close(true);

end
