local allowCountdown = false

function onStartCountdown()
	if not allowCountdown then
		runTimer('startText', 0.1);
		allowCountdown = true;
		startCountdown();
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startText' then
		makeLuaSprite('circle', 'sewer/introd', 0, 90);
		setObjectCamera('circle', 'hud');
		addLuaSprite('circle', true);
                scaleObject('circle', 0.45, 0.45)
	elseif tag == 'appear' then
		doTweenX('circletween', 'circle', 0, 0.5, 'linear');
	elseif tag == 'fadeout' then
		doTweenAlpha('circlefade', 'circle', 0, 1, 'linear');
	end
end

function onUpdate()
setTextString('botplayTxt', Cheater)
end