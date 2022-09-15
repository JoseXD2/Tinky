function onCreate()

    makeLuaSprite('Stage1', 'nightshift/table', 150, 80);
    setScrollFactor('Stage1', 1, 1)
    scaleObject('Stage1', 0.6, 0.6)
    addLuaSprite('Stage1', false); 

	close(true); --Esto es para que no se lagee todo xdxdxd
end