local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
function onCreate()
    setProperty('defaultCamZoom',0.6)
	
    makeAnimatedLuaSprite('Bg', 'momogogo/BG', -520, 140);
    setLuaSpriteScrollFactor('Bg', 1, 1);		
	scaleObject('Bg',1.25, 1.25)
	addLuaSprite('Bg', false);
	addAnimationByPrefix('Bg','idle', 'BG',24,true);
    
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

    close(true);
end