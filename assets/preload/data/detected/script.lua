--CREDIT TO 1F1D ON GAMEBANANA FOR MAKING THIS SCRIPT
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
    
    function onCreate()
    
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
    
    makeLuaSprite('TrickyStatic', 'tricky/TrickyStatic', -380, -90);
    scaleLuaSprite('TrickyStatic', 10, 10);
    addLuaSprite('TrickyStatic', true)
    setPropertyLuaSprite('TrickyStatic', 'alpha', 0)

    makeAnimatedLuaSprite('TrickyStrings', 'tricky/TrickyStrings', 160, 580);
    luaSpriteAddAnimationByIndices('TrickyStrings', 'Suffer', 'Strings', 0)
    luaSpriteAddAnimationByIndices('TrickyStrings', 'Incorrect', 'Strings', 1)
    luaSpriteAddAnimationByIndices('TrickyStrings', 'Incomplete', 'Strings', 2)
    luaSpriteAddAnimationByIndices('TrickyStrings', 'Insufficient', 'Strings', 3)
    luaSpriteAddAnimationByIndices('TrickyStrings', 'Invalid', 'Strings', 4)
    luaSpriteAddAnimationByIndices('TrickyStrings', 'Correction', 'Strings', 5)
    luaSpriteAddAnimationByIndices('TrickyStrings', 'Mistake', 'Strings', 6)
    luaSpriteAddAnimationByIndices('TrickyStrings', 'Reduce', 'Strings', 7)
    luaSpriteAddAnimationByIndices('TrickyStrings', 'Error', 'Strings', 8)
    luaSpriteAddAnimationByIndices('TrickyStrings', 'Adjusting', 'Strings', 9)
    luaSpriteAddAnimationByIndices('TrickyStrings', 'Improbable', 'Strings', 10)
    luaSpriteAddAnimationByIndices('TrickyStrings', 'Implausible', 'Strings', 11)
    luaSpriteAddAnimationByIndices('TrickyStrings', 'Misjudged', 'Strings', 12)
    scaleLuaSprite('TrickyStrings', 1.5, 1.5)
    addLuaSprite('TrickyStrings', true)
    setPropertyLuaSprite('TrickyStrings', 'alpha', 0)

    makeAnimatedLuaSprite('TrickyMissStrings', 'tricky/TrickyMissStrings', 160, 580);
    luaSpriteAddAnimationByIndices('TrickyMissStrings', 'Terrible', 'Strings', 0)
    luaSpriteAddAnimationByIndices('TrickyMissStrings', 'Waste', 'Strings', 1)
    luaSpriteAddAnimationByIndices('TrickyMissStrings', 'Miss Calculated', 'Strings', 2)
    luaSpriteAddAnimationByIndices('TrickyMissStrings', 'Predicted', 'Strings', 3)
    luaSpriteAddAnimationByIndices('TrickyMissStrings', 'Failure', 'Strings', 4)
    luaSpriteAddAnimationByIndices('TrickyMissStrings', 'Disgusting', 'Strings', 5)
    luaSpriteAddAnimationByIndices('TrickyMissStrings', 'Abhorrent', 'Strings', 6)
    luaSpriteAddAnimationByIndices('TrickyMissStrings', 'Foreseen', 'Strings', 7)
    luaSpriteAddAnimationByIndices('TrickyMissStrings', 'Contemptible', 'Strings', 8)
    luaSpriteAddAnimationByIndices('TrickyMissStrings', 'Prognosticate', 'Strings', 9)
    luaSpriteAddAnimationByIndices('TrickyMissStrings', 'Dispicable', 'Strings', 10)
    luaSpriteAddAnimationByIndices('TrickyMissStrings', 'Reprehensible', 'Strings', 11)
    luaSpriteAddAnimationByIndices('TrickyMissStrings', 'Unsurprising', 'Strings', 12)
    luaSpriteAddAnimationByIndices('TrickyMissStrings', 'Predetermined', 'Strings', 13)
    scaleLuaSprite('TrickyMissStrings', 2.3, 2.3)
    addLuaSprite('TrickyMissStrings', true)
    setPropertyLuaSprite('TrickyMissStrings', 'alpha', 0)
 
    setPropertyFromClass('GameOverSubstate', 'characterName', 'signDeath')
end


trickyStrings = {
    [0] = function()
        luaSpritePlayAnimation('TrickyStrings', 'Suffer')
        runTimer('stringAngles', 0.02, 90)
    end,

    [1] = function()
        luaSpritePlayAnimation('TrickyStrings', 'Incorrect')
        runTimer('stringAngles', 0.02, 90)
    end,

    [2] = function()
        luaSpritePlayAnimation('TrickyStrings', 'Incomplete')
        runTimer('stringAngles', 0.02, 90)
    end,

    [3] = function()
        luaSpritePlayAnimation('TrickyStrings', 'Insufficient')
        runTimer('stringAngles', 0.02, 90)
    end,

    [4] = function()
        luaSpritePlayAnimation('TrickyStrings', 'Invalid')
        runTimer('stringAngles', 0.02, 90)
    end,

    [5] = function()
        luaSpritePlayAnimation('TrickyStrings', 'Correction')
        runTimer('stringAngles', 0.02, 90)
    end,

    [6] = function()
        luaSpritePlayAnimation('TrickyStrings', 'Mistake')
        runTimer('stringAngles', 0.02, 90)
    end,

    [7] = function()
        luaSpritePlayAnimation('TrickyStrings', 'Reduce')
        runTimer('stringAngles', 0.02, 90)
    end,

    [8] = function()
        luaSpritePlayAnimation('TrickyStrings', 'Error')
        runTimer('stringAngles', 0.02, 90)
    end,

    [9] = function()
        luaSpritePlayAnimation('TrickyStrings', 'Adjusting!')
        runTimer('stringAngles', 0.02, 90)
    end,

    [10] = function()
        luaSpritePlayAnimation('TrickyStrings', 'Improbable')
        runTimer('stringAngles', 0.02, 90)
    end,

    [11] = function()
        luaSpritePlayAnimation('TrickyStrings', 'Implausible')
        runTimer('stringAngles', 0.02, 90)
    end,

    [12] = function()
        luaSpritePlayAnimation('TrickyStrings', 'Misjudged')
        runTimer('stringAngles', 0.02, 90)
    end,
}

trickyMissStrings = {
    [0] = function()
        luaSpritePlayAnimation('TrickyMissStrings', 'Terrible')
        runTimer('stringMissAngles', 0.02, 90)
    end,

    [1] = function()
        luaSpritePlayAnimation('TrickyMissStrings', 'Waste')
        runTimer('stringMissAngles', 0.02, 90)
    end,

    [2] = function()
        luaSpritePlayAnimation('TrickyMissStrings', 'Miss Calculated')
        runTimer('stringMissAngles', 0.02, 90)
    end,

    [3] = function()
        luaSpritePlayAnimation('TrickyMissStrings', 'Predicted')
        runTimer('stringMissAngles', 0.02, 90)
    end,

    [4] = function()
        luaSpritePlayAnimation('TrickyMissStrings', 'Failure')
        runTimer('stringMissAngles', 0.02, 90)
    end,

    [5] = function()
        luaSpritePlayAnimation('TrickyMissStrings', 'Disgusting')
        runTimer('stringMissAngles', 0.02, 90)
    end,

    [6] = function()
        luaSpritePlayAnimation('TrickyMissStrings', 'Abhorrent')
        runTimer('stringMissAngles', 0.02, 90)
    end,

    [7] = function()
        luaSpritePlayAnimation('TrickyMissStrings', 'Foreseen')
        runTimer('stringMissAngles', 0.02, 90)
    end,

    [8] = function()
        luaSpritePlayAnimation('TrickyMissStrings', 'Contemptible')
        runTimer('stringMissAngles', 0.02, 90)
    end,

    [9] = function()
        luaSpritePlayAnimation('TrickyMissStrings', 'Prognosticate')
        runTimer('stringMissAngles', 0.02, 90)
    end,

    [10] = function()
        luaSpritePlayAnimation('TrickyMissStrings', 'Dispicable')
        runTimer('stringMissAngles', 0.02, 90)
    end,

    [11] = function()
        luaSpritePlayAnimation('TrickyMissStrings', 'Reprehensible')
        runTimer('stringMissAngles', 0.02, 90)
    end,

    [12] = function()
        luaSpritePlayAnimation('TrickyMissStrings', 'Unsurprising')
        runTimer('stringMissAngles', 0.02, 90)
    end,

    [13] = function()
        luaSpritePlayAnimation('TrickyMissStrings', 'Predetermined')
        runTimer('stringMissAngles', 0.02, 90)
    end,
}

function opponentNoteHit(id, direction, noteType, isSustainNote)

        health = getProperty('health')
        if getProperty('health') > 0.1 then
            setProperty('health', health- 0.01);
        end

    local luckyRoll = math.random(1, 65)

    if (luckyRoll >= 60 and isSustainNote == false) then
        runTimer('TrickyStringTime', 0, 1)
        runTimer('TrickyAlpha', 0.3, 1)
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
    runTimer('TrickyAlpha2', 0.3, 1)
end

function noteMiss()
    runTimer('TrickyAlpha2', 0.3, 1)
    local unluckyRoll = math.random(1, 70)
    if unluckyRoll >= 65 then
        runTimer('TrickyMissString', 0, 1)
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
	
    if tag == 'TrickyStringTime' then
        playSound('staticSound')
        setPropertyLuaSprite('TrickyStatic', 'alpha', 0.2)
        setPropertyLuaSprite('TrickyStrings', 'alpha', 1)
        counter = math.random(0, 12)
        trickyStrings[counter]()
	end

    if tag == 'TrickyMissString' then
        playSound('staticSound')
        setPropertyLuaSprite('TrickyStatic', 'alpha', 0.2)
        setPropertyLuaSprite('TrickyMissStrings', 'alpha', 1)
        misscounter = math.random(0, 13)
        trickyMissStrings[misscounter]()
        runTimer('TrickyMissAlpha', 0.33, 1)
	end

    if tag == 'TrickyAlpha' then
        setPropertyLuaSprite('TrickyStatic', 'alpha', 0)
        setPropertyLuaSprite('TrickyStrings', 'alpha', 0)
    end
    
    if tag == 'TrickyAlpha2' then
        setPropertyLuaSprite('TrickyStatic', 'alpha', 0)
        setPropertyLuaSprite('TrickyStrings', 'alpha', 0)
    end
    
    if tag == 'staticAlpha' then
        setPropertyLuaSprite('TrickyStatic', 'alpha', 0)
    end

    if tag == 'staticAlphaOn' then
        playSound('staticSound')
        setPropertyLuaSprite('TrickyStatic', 'alpha', 0.2)
    end

    if tag == 'TrickyMissAlpha' then
        setPropertyLuaSprite('TrickyStatic', 'alpha', 0)
        setPropertyLuaSprite('TrickyMissStrings', 'alpha', 0)
    end

    if tag == 'stringAngles' then
        setStringAngle = math.random(-5,5)
        setProperty('TrickyStrings.angle', setStringAngle)
    end

    if tag == 'stringMissAngles' then
        setStringAngle = math.random(-5,5)
        setProperty('TrickyMissStrings.angle', setStringAngle)
    end
end
    
function onUpdate()
    scaleObject('green', 1.965 * getProperty("songPercent"), .035)
    setTextString("score", string.format('Score:%s', score))
end