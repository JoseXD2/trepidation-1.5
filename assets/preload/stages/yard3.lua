function onCreate()

	makeLuaSprite('smiley', 'titles/trespasser', 0, 0);
	setScrollFactor('smiley', 0, 0);
	setObjectCamera('smiley','other')
	scaleObject('smiley', 2, 2)
	addLuaSprite('smiley', true);

	makeLuaSprite('masky', 'titles/smiley', -400, 220);
	setScrollFactor('masky', 0, 0);
	setObjectCamera('masky','other')
	scaleObject('masky', 0.8, 0.8)	addLuaSprite('masky', true);

	makeLuaSprite('jumpscareslender', 'jumpscareslender', 0, 0);
	setObjectCamera('jumpscareslender','other')
	addLuaSprite('jumpscareslender', true);

	makeAnimatedLuaSprite('static', "thestatic", 0, 0);
	addAnimationByPrefix('static', 'loop', 'slendermanstatic', 24, true);
	setObjectCamera('static','other')
	addLuaSprite('static', true);
	objectPlayAnimation('static', 'loop');

	makeAnimatedLuaSprite('jumpywumpy', "sketchystaticman", 0, 0);
	addAnimationByPrefix('jumpywumpy', 'loop', 'jumpstatic', 24, true);
	setObjectCamera('jumpywumpy','other')
	addLuaSprite('jumpywumpy', true);
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

	makeLuaSprite('bartop','',0,0)
	makeGraphic('bartop',1280,77,'000000')
	addLuaSprite('bartop',true)

	makeLuaSprite('barbot','',0,644)
	makeGraphic('barbot',1280,77,'000000')
	addLuaSprite('barbot',true)
	setScrollFactor('bartop',0,0)
	setScrollFactor('barbot',0,0)
	setObjectCamera('bartop','hud')
	setObjectCamera('barbot','hud')



	setProperty("lefttree.flipX", true)
	setProperty("righttree.flipX", true)
end

function onCreatePost()--this thing happens once the characters are spawned
	setProperty("jumpscareslender.visible", false);
	setProperty("healthBar.visible", false);
	setProperty("healthBarBG.visible", false);
	setProperty("scoreTxt.visible", false);
end