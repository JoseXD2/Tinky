function onEvent(name, value1, value2)
	if name == 'Black screen' then
       if value1 == "on" then
        makeLuaSprite("black", "", 0, 0)
        makeGraphic("black", 1280, 720,'000000')
        setScrollFactor("black", 0, 0)
        setObjectCamera("black", "hud")
        addLuaSprite("black", false)
        runTimer('wait', value2)
       end
        function onTimerCompleted(tag, loops, loopsleft)
            if tag == 'wait' then
               doTweenAlpha('black','black', 0, 0.2, 'linear')
            end
        end
    end
end