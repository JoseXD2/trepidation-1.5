function onCreate()

	makeLuaSprite('gold4', 'titles/gold4', -400, 220);
	setScrollFactor('gold4', 0, 0);
	setObjectCamera('gold4','hud')
	scaleObject('gold4', 0.8, 0.8)
	addLuaSprite('gold4', true);

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
end
