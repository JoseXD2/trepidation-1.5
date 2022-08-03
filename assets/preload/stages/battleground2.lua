function onCreate()

	makeLuaSprite('gold2', 'titles/gold2', -400, 220);
	setScrollFactor('gold2', 0, 0);
	setObjectCamera('gold2','hud')
	scaleObject('gold2', 0.8, 0.8)
	addLuaSprite('gold2', true);

	makeLuaSprite('gold3', 'titles/gold3', -400, 220);
	setScrollFactor('gold3', 0, 0);
	setObjectCamera('gold3','hud')
	scaleObject('gold3', 0.8, 0.8)
	addLuaSprite('gold3', true);

	makeLuaSprite('redlol', 'titles/red', -400, 220);
	setScrollFactor('redlol', 0, 0);
	setObjectCamera('redlol','hud')
	scaleObject('redlol', 0.8, 0.8)
	addLuaSprite('redlol', true);

	makeLuaSprite('uibars', 'uibars', 56, -31.4);
	setScrollFactor('uibars', 0, 0);
	setObjectCamera('uibars','hud')
	scaleObject('uibars', 2, 2)
	addLuaSprite('uibars', true);

	makeLuaSprite('blurrybgred', 'blurrybgred', 0,-710);
	setScrollFactor('blurrybgred', 0.6, 0.6);
	scaleObject('blurrybgred', 4, 4)
	addLuaSprite('blurrybgred', false);

	makeLuaSprite('platforms', 'platforms', 170, 400);
	setScrollFactor('platforms', 1, 1);
	scaleObject('platforms', 2, 2)
	addLuaSprite('platforms', false);

	makeAnimatedLuaSprite('celebi', 'characters/pokemon', 1335, -26);
	addAnimationByPrefix('celebi', 'loop', 'celebi0', 24, false);
	addAnimationByPrefix('celebi', 'attack', 'celebi attack0', 24, false);
	setObjectCamera('celebi','game')
	addLuaSprite('celebi', false);
	objectPlayAnimation('celebi', 'loop');
	scaleObject('celebi', 0.8, 0.8)

	makeAnimatedLuaSprite('cyndaquil', 'characters/pokemon', 1295, 326);
	addAnimationByPrefix('cyndaquil', 'loop', 'cyndaquil0', 24, false);
	addAnimationByPrefix('cyndaquil', 'attack', 'cyndaquil attack0', 24, false);
	setObjectCamera('cyndaquil','game')
	addLuaSprite('cyndaquil', false);
	objectPlayAnimation('cyndaquil', 'loop');
	scaleObject('cyndaquil', 0.8, 0.8)
end
function onCreatePost()--this thing happens once the characters are spawned
setProperty("gf.visible", false);
setProperty("iconP2.visible", false);
setProperty("iconP1.visible", false);
setProperty("healthBar.y", 660)
setProperty("healthBar.x", 660)
setProperty("timeTxt.x", 970)
setProperty("timeTxt.y", 590)
setProperty("timeTxt.width", 0.8)
setProperty("timeBar.visible",false)
setProperty("timeBarBG.visible",false)
setProperty("h.visible",false)
setProperty("e.visible",false)
setProperty("l.visible",false)
setProperty("p.visible",false)
end
