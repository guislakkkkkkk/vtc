function onCreate()

	makeLuaSprite('front', 'rayna/stage', -720, 300);
	makeAnimatedLuaSprite('bump', 'rayna/xky', 800, 1100);
	addAnimationByPrefix('bump', 'bounce','xky', 24, true);
    scaleObject('bump', 1.5, 1.5);
    
	addLuaSprite('front', false); 
	addLuaSprite('bump', false);

	makeLuaSprite('bartop','',0,-30)
    makeGraphic('bartop',1381,100,'000000')
    addLuaSprite('bartop',true)
    setObjectCamera('bartop','hud')
    setScrollFactor('bartop',0,0)

    makeLuaSprite('barbot','',0,650)
    makeGraphic('barbot',1381,100,'000000')
    addLuaSprite('barbot',false)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')

end

function onBeatHit()

    objectPlayAnimation('bump', 'bounce', true)
    
end    
