function onEvent(name, value1, value2)
	if name == 'BlackBGwithVisibleCharacters' and value1 == 'true' then
		makeLuaSprite('blackbg', '', -500, -300)
		makeGraphic('blackbg', 5000, 5000, '000000')
		addLuaSprite('blackbg', false)
	end

	--characters (without combo)
	if name == 'BlackBGwithVisibleCharacters' and value2 == 'bf' then
		setProperty('dad.visible', false)
		setProperty('gf.visible', false)
		setProperty('boyfriend.visible', true)
	end
	if name == 'BlackBGwithVisibleCharacters' and value2 == 'gf' then
		setProperty('boyfriend.visible', false)
		setProperty('dad.visible', false)
		setProperty('gf.visible', true)
	end
	if name == 'BlackBGwithVisibleCharacters' and value2 == 'dad' then
		setProperty('boyfriend.visible', false)
		setProperty('dad.visible', true)
		setProperty('gf.visible', false)
	end

	--characters (with combo)
	if name == 'BlackBGwithVisibleCharacters' and value2 == 'dad and bf' then
		setProperty('boyfriend.visible', true)
		setProperty('dad.visible', true)
		setProperty('gf.visible', false)
	end
	if name == 'BlackBGwithVisibleCharacters' and value2 == 'dad and gf' then
		setProperty('boyfriend.visible', false)
		setProperty('dad.visible', true)
		setProperty('gf.visible', true)
	end
	if name == 'BlackBGwithVisibleCharacters' and value2 == 'bf and dad' then
		setProperty('boyfriend.visible', true)
		setProperty('dad.visible', true)
		setProperty('gf.visible', false)
	end
	if name == 'BlackBGwithVisibleCharacters' and value2 == 'bf and gf' then
		setProperty('boyfriend.visible', true)
		setProperty('dad.visible', false)
		setProperty('gf.visible', true)
	end
	if name == 'BlackBGwithVisibleCharacters' and value2 == 'gf and dad' then
		setProperty('boyfriend.visible', false)
		setProperty('dad.visible', true)
		setProperty('gf.visible', true)
	end
	if name == 'BlackBGwithVisibleCharacters' and value2 == 'gf and bf' then
		setProperty('boyfriend.visible', true)
		setProperty('dad.visible', false)
		setProperty('gf.visible', true)
	end

	--characters (everyone visible)
	if name == 'BlackBGwithVisibleCharacters' and value2 == 'everyone' then
		setProperty('boyfriend.visible', true)
		setProperty('dad.visible', true)
		setProperty('gf.visible', true)
	end

	--background remove + characters visible
	if name == 'BlackBGwithVisibleCharacters' and value1 == 'false' then
		removeLuaSprite('blackbg')
		setProperty('boyfriend.visible', true)
		setProperty('dad.visible', true)
		setProperty('gf.visible', true)
	end
end