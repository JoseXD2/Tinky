

function onCreate()
    if not isStoryMode then
    setProperty('skipCountdown', true)
    end

--luaDebugMode = true;

    makeLuaSprite('circle', songName, -400, 90);
    setObjectCamera('circle', 'Other');
    addLuaSprite('circle', true);
    scaleObject('circle', 0.45, 0.45)

    doTweenX('circletween', 'circle', -50, 1.3, 'backInOut');
    runTimer('circleTimer', 1.8)
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'circleTimer' then
        doTweenX('circledstween', 'circle', -600, 1, 'backInOut');
		doTweenAlpha('circlefade', 'circle', 0, 2, 'backInOut');
	end
end
