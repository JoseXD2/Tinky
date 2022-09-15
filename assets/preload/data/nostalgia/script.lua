function onCreate()
end

stepHitFuncs = { --a bunch of timed events, timed to steps
	[93] = function()
        doTweenZoom('ChichaZoom', 'camGame', 1.1, 3, 'quadInOut');
	end,
    [576] = function()
        benitoDeath()
	end,
}

function onStepHit()
    if stepHitFuncs[curStep] then 
        stepHitFuncs[curStep]() -- ejecuta los cursteps.
    end
end

function benitoDeath()
    doTweenX('BenitoDies', 'Benito', -1213, 0.2, 'quadInOut')
    doTweenAngle('BenitoDies2', 'Benito', 20, 0.2, 'quadInOut')
    doTweenY('BenitoDies3', 'Benito', -300, 0.2, 'quadInOut')
    runTimer('noooo', 3)
end

function onTimerCompleted(d)
    if d == 'noooo' then
        removeLuaSprite('Benito')
        makeAnimatedLuaSprite('Benito', 'empanadas/Benito', -213, 70);
        addAnimationByPrefix("Benito", "Idle", "Benito_Idle", 24, true)
        addAnimationByPrefix('Benito','Dodge','Benito_Dodge',24,false)
        addLuaSprite("Benito", false)
        scaleObject('Benito', 0.4, 0.4)
        objectPlayAnimation("Benito", "Benito_Idle", true)
    end
end
