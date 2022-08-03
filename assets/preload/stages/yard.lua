function onCreate()

	makeLuaSprite('slender1', 'titles/slender1', -400, 220);
	setScrollFactor('slender1', 0, 0);
	setObjectCamera('slender1','hud')
	scaleObject('slender1', 0.8, 0.8)
	addLuaSprite('slender1', true);

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

function onCreatePost()--this thing happens once the characters are spawned
	setProperty("jumpscareslender.visible", false);
end