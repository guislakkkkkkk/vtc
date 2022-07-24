local assets = {'table',  'citycolor', 'citybg', 'cityfarbg', 'wallbg', 'shade', 'light'}
local xpos = {610, 0, 0, 0 , 0, -300, 320}
local ypos = {585, 0, 100, 100, -700, -400, -200}
local cam = {}

function onCreate()
	for i = 1,7 do
		makeLuaSprite(assets[i], 'bg/'..assets[i], xpos[i]+50, ypos[i]+300)
		if i == 1 then
			addLuaSprite(assets[i], true)
		elseif i == 5 then
			for a = 1,9 do
				makeAnimatedLuaSprite('cameo'..a, 'bg/characters_walking2', -1200, 480)
				addAnimationByPrefix('cameo'..a, 'idle', 'cameo'..a, 24, true)
				addLuaSprite('cameo'..a)
				objectPlayAnimation('cameo'..a, 'idle')
			end
			addLuaSprite(assets[i])
		elseif i == 6 or i == 7 then
			addLuaSprite(assets[i], true)
		else
			addLuaSprite(assets[i])
		end
	end
	setProperty(assets[7]..'.alpha', 0.7)
	setProperty(assets[1]..'.alpha', 0)
end

function cameo(number, side)
	if side == 1 then
		setProperty('cameo'..number..'.x', -1200)
		doTweenX('cameo'..curStep, 'cameo'..number, 1800, getRandomInt(15,25), 'linear')
	else
		setProperty('cameo'..number..'.x', 1800)
		doTweenX('cameo'..curStep, 'cameo'..number, -1300, getRandomInt(15,25), 'linear')
	end
end

function onSongStart()
	for i = 2,9 do
		cam[i] = false
	end
end

function onBeatHit()
	if curBeat % 12 == 0 then
		local num = math.floor(getRandomInt(2,9))

		if cam[num] == true then
			local bruh = num
			num = math.floor(getRandomInt(2,9, bruh))
		end

		cameo(num, math.floor(getRandomInt(1,2)))

	end
end

function onStartCountdown()
	setProperty('gf.alpha',0)
	return Function_Continue
end