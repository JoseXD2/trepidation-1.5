local keepScroll = false
local allowCountdown = false
local waitThing = false
local confirmed = 0

function onCreate()
	setProperty('camHUD.alpha', 0);
	addCharacterToList('goldlaugh', 'dad')
	setPropertyFromClass('GameOverSubstate', 'characterName', 'golddeath');
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx');
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd');
	precacheImage("mods/images/explosion")
	precacheImage("explosion")
	precacheImage("warning")

	if isStoryMode and not seenCutscene then
		makeLuaSprite('warningimage', 'warningPages/gold', 0, 0)
		screenCenter('warningimage', 'xy')
		setObjectCamera('warningimage', 'other')
		
		addLuaSprite('warningimage', true)

		makeLuaText('continue', "Press SHIFT to Continue", 0.8, 10, 688)
		setObjectCamera('continue', 'other')
		addLuaText('continue', true)
	end
	if seenCutscene then
		allowCountdown = true
	elseif not seenCutscene then
		allowCountdown = false
	end
end
function onStartCountdown()
	if not waitThing and isStoryMode and not seenCutscene then --Block the first countdown
		waitThing = true
		return Function_Stop;
	end

	if isStoryMode and not seenCutscene and not allowCountdown then
		return Function_Stop
	end
	if isStoryMode and seenCutscene and allowCountdown then
		return Function_Continue
	end
	return Function_Continue;
end
function onUpdate()
	if 	isStoryMode and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SHIFT') and confirmed == 0 then
		allowCountdown = true
		startCountdown();
		doTweenAlpha('warningimage', 'warningimage', 0, 1, sineOut);
		doTweenAlpha('continue', 'continue', 0, 1, sineOut);
		playSound('confirmMenu');
		confirmed = 1
		seenCutscene = true
	end
    if curStep == 0 then
	doTweenAlpha('hud', 'camHUD', 1, 0.5, "quartInOut")
	end
end
function onStepHit()
	if curStep == 1 then
		setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0 - 700)
		setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1 - 700)
		setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2 - 700)
		setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3 - 700)
		setPropertyFromGroup('playerStrums', 0, 'x', defaultOpponentStrumX0)
		setPropertyFromGroup('playerStrums', 1, 'x', defaultOpponentStrumX1)
		setPropertyFromGroup('playerStrums', 2, 'x', defaultOpponentStrumX2)
		setPropertyFromGroup('playerStrums', 3, 'x', defaultOpponentStrumX3)
		doTweenX('gold3', 'gold3', 0, 0.5, "quartInOut")
	end
	if curStep == 18 then
		doTweenAlpha('gold3', 'gold3', 0, 1, "quartInOut")
    end
end
function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.4 then
        setProperty('health', health- 0.017);
    end
end
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Psychic Note' then
		objectPlayAnimation('celebi', 'attack', false)
		cameraFlash('hud', 0xFFFFFFFF, 5,false)
		playSound("confusion", 0.7)
	end
end
function onBeatHit()
	if curBeat % 2 == 0 then 
	   objectPlayAnimation('celebi', 'loop', true);
	end
	if curBeat % 2 == 0 then 
	   objectPlayAnimation('cyndaquil', 'loop', true);
	end
end



function onUpdatePost(elapsed)
	P1Mult = getProperty('healthBar.x') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * 0.01) + (150 * getProperty('iconP1.scale.x') - 150) / 2 - 26)
	P2Mult = getProperty('healthBar.x') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * 0.01) - (150 * getProperty('iconP2.scale.x')) / 2 - 26 * 2)
	setProperty('iconP1.x',P1Mult - 110)
	setProperty('iconP1.origin.x',240)
	setProperty('iconP1.flipX',true)
	setProperty('iconP2.x',P2Mult + 110)
	setProperty('iconP2.origin.x',-100)
	setProperty('iconP2.flipX',true)
	setProperty('healthBar.flipX',true)
end