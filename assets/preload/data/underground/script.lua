--easy script configs
IntroTextSize = 25	--Size of the text for the Now Playing thing.
IntroSubTextSize = 30 --size of the text for the Song Name.
IntroTagColor = '8300c3'	--Color of the tag at the end of the box.
IntroTagWidth = 15	--Width of the box's tag thingy.
--easy script configs

--actual script
endstops = 0

function onCreate() --CREDIT TO 1F1D ON GAMEBANANA FOR MAKING THIS SCRIPT (The Kade Engine HUD LKASJDKLAS)

    makeLuaSprite('black', 'black', 297.5, 20)
    makeLuaSprite('gray', 'gray', 304, 24.25)
    makeLuaSprite('green', 'green', 304, 24.25)
    
    addLuaSprite('black', true)
    addLuaSprite('gray', true)
    addLuaSprite('green', true)
    
    setObjectCamera('black', 'hud')
    setObjectCamera('gray', 'hud')
    setObjectCamera('green', 'hud')
    
    scaleObject('black', 2, .065)
    scaleObject('gray', 1.965, .035)
    scaleObject('green', 1.965, .035)    

	--the tag at the end of the box
	makeLuaSprite('JukeBoxTag', 'empty', -305-IntroTagWidth, 15)
	makeGraphic('JukeBoxTag', 300+IntroTagWidth, 100, IntroTagColor)
	setObjectCamera('JukeBoxTag', 'other')
	addLuaSprite('JukeBoxTag', true)

	--the box
	makeLuaSprite('JukeBox', 'empty', -305-IntroTagWidth, 15)
	makeGraphic('JukeBox', 300, 100, '000000')
	setObjectCamera('JukeBox', 'other')
	addLuaSprite('JukeBox', true)
	
	--the text for the "Now Playing" bit
	makeLuaText('JukeBoxText', 'Original by Sock.clip', 300, -305-IntroTagWidth, 30)
	setTextAlignment('JukeBoxText', 'left')
	setObjectCamera('JukeBoxText', 'other')
	setTextSize('JukeBoxText', IntroTextSize)
	addLuaText('JukeBoxText')
	
	--text for the song name
	makeLuaText('JukeBoxSubText', songName, 300, -305-IntroTagWidth, 60)
	setTextAlignment('JukeBoxSubText', 'left')
	setObjectCamera('JukeBoxSubText', 'other')
	setTextSize('JukeBoxSubText', IntroSubTextSize)
	addLuaText('JukeBoxSubText')


end

function onCreatePost()

    makeLuaText("nametext", songName, 0, 600, 17.5)
    setTextSize('nametext', 20)
    addLuaText("nametext")
    setTextAlignment('nametext', 'left')
    
    setProperty('timeBarBG.visible', false)
    setProperty('timeBar.visible', false)
    setProperty('timeTxt.visible', false)
    setProperty('scoreTxt.visible', false)
    
    makeLuaText("score", "Score:", 0, 700, 675)
    setTextSize('score', 20);
    addLuaText("score");
    setTextAlignment('score', 'left')
    setTextBorder("score", 0)

end
    
--motion functions
function onSongStart()
	-- Inst and Vocals start playing, songPosition = 0
	doTweenX('MoveInOne', 'JukeBoxTag', 0, 1, 'CircInOut')
	doTweenX('MoveInTwo', 'JukeBox', 0, 1, 'CircInOut')
	doTweenX('MoveInThree', 'JukeBoxText', 0, 1, 'CircInOut')
	doTweenX('MoveInFour', 'JukeBoxSubText', 0, 1, 'CircInOut')
	
	runTimer('JukeBoxWait', 3, 1)
end

function onTimerCompleted(tag, loops, loopsLeft)
	-- A loop from a timer you called has been completed, value "tag" is it's tag
	-- loops = how many loops it will have done when it ends completely
	-- loopsLeft = how many are remaining
	if tag == 'JukeBoxWait' then
		doTweenX('MoveOutOne', 'JukeBoxTag', -450, 1.5, 'CircInOut')
		doTweenX('MoveOutTwo', 'JukeBox', -450, 1.5, 'CircInOut')
		doTweenX('MoveOutThree', 'JukeBoxText', -450, 1.5, 'CircInOut')
		doTweenX('MoveOutFour', 'JukeBoxSubText', -450, 1.5, 'CircInOut')
	end
end

if tag == 'endshit' then
    setProperty('camHUD._fxFadeAlpha', 0);
    cameraFlash('hud','000000',1)
    makeLuaSprite('endcock','gallery/the')
    addLuaSprite('endcock',true)
    setObjectCamera('endcock','camHUD')
end

function onEvent(n,v1,v2)
if n == 'Change Character' and v2 == 'rayna_player_under' then

	setProperty('stagefront.visible',false)
	setProperty('stageback.visible',false)
	removeLuaScript('stages/better')

end

if n == 'Change Character' and v2 == 'rayna_player'then

	setProperty('stagefront.visible',true)
	setProperty('stageback.visible',true)

end

function onEndSong()

        endstops = endstops + 1
        if isStoryMode then
            if endstops == 1 then
                
                
			     runTimer('endshit',1)
			    cameraFade('hud','000000',1)
                
                return Function_Stop;
                
            end
        end
        return Function_Continue;
    end

end

function onUpdate()
    scaleObject('green', 1.965 * getProperty("songPercent"), .035)
    setTextString("score", string.format('Score:%s', score))
end