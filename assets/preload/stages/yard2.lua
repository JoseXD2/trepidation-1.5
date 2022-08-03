function onCreate()

makeLuaSprite('slender1', 'titles/slender1', -400, 220);
	setScrollFactor('slender1', 0, 0);
	setObjectCamera('slender1','hud')
	scaleObject('slender1', 0.8, 0.8)
	addLuaSprite('slender1', true);

	makeLuaSprite('slender2', 'titles/slender2', -400, 220);
	setScrollFactor('slender2', 0, 0);
	setObjectCamera('slender2','hud')
	scaleObject('slender2', 0.8, 0.8)
	addLuaSprite('slender2', true);

	makeLuaSprite('slender3', 'titles/slender3', -400, 220);
	setScrollFactor('slender3', 0, 0);
	setObjectCamera('slender3','hud')
	scaleObject('slender3', 0.8, 0.8)
	addLuaSprite('slender3', true);

	makeLuaSprite('smiley', 'titles/smiley', -400, 220);
	setScrollFactor('smiley', 0, 0);
	setObjectCamera('smiley','hud')
	scaleObject('smiley', 0.4, 0.4)
	addLuaSprite('smiley', true);

	makeLuaSprite('jumpscareslender', 'jumpscareslender', 0, 0);
	setObjectCamera('jumpscareslender','other')
	scaleObject('jumpscareslender', 2, 2)
	addLuaSprite('jumpscareslender', true);

	makeAnimatedLuaSprite('static', "thestatic", 0, 0);
	addAnimationByPrefix('static', 'loop', 'slendermanstatic', 24, true);
	setObjectCamera('static','other')
	scaleObject('static', 4, 4)
	addLuaSprite('static', true);
	objectPlayAnimation('static', 'loop');

	makeAnimatedLuaSprite('rain', "rain", 0, 0);
	addAnimationByPrefix('rain', 'pour', 'rain', 24, true);
	setScrollFactor('rain', 0.4, 0.4);
	scaleObject('rain', 2, 2)
	setObjectCamera('rain','hud')
	addLuaSprite('rain', false);
	objectPlayAnimation('rain', 'pour');

	makeAnimatedLuaSprite('jumpywumpy', "sketchystaticman", 0, 0);
	addAnimationByPrefix('jumpywumpy', 'loop', 'jumpstatic', 24, true);
	setObjectCamera('jumpywumpy','other')
	addLuaSprite('jumpywumpy', true);
	scaleObject('jumpywumpy', 4, 4)
	objectPlayAnimation('jumpywumpy', 'loop');

	makeLuaSprite('sky', 'slenderbg/sky', -895.6, -1401.1);
	setScrollFactor('sky', 0.7, 0.7);
	scaleObject('sky', 4, 4)
	addLuaSprite('sky', false);

	makeLuaSprite('forest', 'slenderbg/forest', -895.6, -1401.1);
	setScrollFactor('forest', 1, 1);
	scaleObject('forest', 4, 4)
	addLuaSprite('forest', false);

	makeLuaSprite('stage', 'slenderbg/stage', -895.6, -1401.1);
	setScrollFactor('stage', 0.9, 0.9);
	scaleObject('stage', 4, 4)
	addLuaSprite('stage', false);

	makeLuaSprite('lefttree', 'slenderbg/lefttree', -805.6, -1401.1);
	setScrollFactor('lefttree', 0.8, 0.8);
	scaleObject('lefttree', 4, 4)
	addLuaSprite('lefttree',  true);

	makeLuaSprite('righttree', 'slenderbg/righttree', -895.6, -1401.1);
	setScrollFactor('righttree', 0.8, 0.8);
	scaleObject('righttree', 4, 4)
	addLuaSprite('righttree', true);

	setProperty("lefttree.flipX", true)
	setProperty("righttree.flipX", true)
end

function onCountdownStarted()
if not isStoryMode then 
setProperty("static.alpha", 0);
setProperty("rain.alpha", 0);
setProperty("jumpscareslender.alpha", 0);
end
end