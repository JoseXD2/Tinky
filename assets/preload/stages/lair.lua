function onCreate()
	makeLuaSprite('bg', 'lair/bg', -160, 30);
    scaleObject('bg', 0.75, 0.75)
	addLuaSprite('bg', false);

	makeLuaSprite('bg2', 'lair/bg2', -160, 30);
    scaleObject('bg2', 0.75, 0.75)
	addLuaSprite('bg2', false);

	makeLuaSprite('front', 'lair/front', -160, 30);
    scaleObject('front', 0.75, 0.75)
	addLuaSprite('front', false);

	makeLuaSprite('tvoff', 'lair/tvsoff', -160, 30);
    scaleObject('tvoff', 0.75, 0.75)
	addLuaSprite('tvoff', false);

	makeLuaSprite('3', 'lair/screen3', -160, 30);
    scaleObject('3', 0.75, 0.75)
	addLuaSprite('3', false);

	makeLuaSprite('light', 'lair/lighting', -160, 30);
    scaleObject('light', 0.75, 0.75)
	addLuaSprite('light', false);

	makeLuaSprite('2', 'lair/screen2', -160, 30);
    scaleObject('2', 0.75, 0.75)
	addLuaSprite('2', false);

	makeLuaSprite('1', 'lair/screen1', -160, 30);
    scaleObject('1', 0.75, 0.75)
	addLuaSprite('1', false);

	makeLuaSprite('tvon', 'lair/tvson', -160, 30);
    scaleObject('tvon', 0.75, 0.75)
	addLuaSprite('tvon', false);
end

function onStepHit()

if getProperty('curStep') == 520 then
        setProperty('light.alpha', 0);
        setProperty('1.alpha', 0);
        setProperty('2.alpha', 0);
        setProperty('tvon.alpha', 0);
end

if getProperty('curStep') == 525 then
	setProperty('light.alpha', 100);
	setProperty('1.alpha', 0);
	setProperty('2.alpha', 100);
	setProperty('tvon.alpha', 100);
end

if getProperty('curStep') == 905 then
        setProperty('light.alpha', 0);
        setProperty('1.alpha', 0);
        setProperty('2.alpha', 0);
        setProperty('tvon.alpha', 0);
end
end 	