function onEvent(name, value1, value2)
	if name == 'BlackAndWhiteBackground' and value1 == 'true' then
		makeLuaSprite('whitebg', '', -500, -300)
		makeGraphic('whitebg', 5000, 5000, 'ffffff')
		addLuaSprite('whitebg', false)
	end

	if name == 'BlackAndWhiteBackground' and value1 == 'false' then
		removeLuaSprite('whitebg')
		setProperty('boyfriend.color', getColorFromHex('FFFFFF'))
		setProperty('dad.color', getColorFromHex('FFFFFF'))
		setProperty('gf.color', getColorFromHex('FFFFFF'))
	end

	if name == 'BlackAndWhiteBackground' and value2 == 'dad' then
		setProperty('boyfriend.color', '000000')
		setProperty('dad.color', '000000')
		setProperty('gf.color', '000000')

		setProperty('gf.visible', false)
		setProperty('boyfriend.visible', false)
		setProperty('dad.visible', true)
	end

	if name == 'BlackAndWhiteBackground' and value2 == 'gf' then
		setProperty('boyfriend.color', '000000')
		setProperty('dad.color', '000000')
		setProperty('gf.color', '000000')

		setProperty('gf.visible', true)
		setProperty('boyfriend.visible', false)
		setProperty('dad.visible', false)
	end

	if name == 'BlackAndWhiteBackground' and value2 == 'bf' then
		setProperty('boyfriend.color', '000000')
		setProperty('dad.color', '000000')
		setProperty('gf.color', '000000')

		setProperty('gf.visible', false)
		setProperty('boyfriend.visible', true)
		setProperty('dad.visible', false)
	end

		--characters (with combo)
		if name == 'BlackAndWhiteBackground' and value2 == 'dad and bf' then
			setProperty('boyfriend.color', '000000')
			setProperty('dad.color', '000000')
			setProperty('gf.color', '000000')

			setProperty('boyfriend.visible', true)
			setProperty('dad.visible', true)
			setProperty('gf.visible', false)
		end
		if name == 'BlackAndWhiteBackground' and value2 == 'dad and gf' then
			setProperty('boyfriend.color', '000000')
			setProperty('dad.color', '000000')
			setProperty('gf.color', '000000')

			setProperty('boyfriend.visible', false)
			setProperty('dad.visible', true)
			setProperty('gf.visible', true)
		end
		if name == 'BlackAndWhiteBackground' and value2 == 'bf and dad' then
			setProperty('boyfriend.color', '000000')
			setProperty('dad.color', '000000')
			setProperty('gf.color', '000000')

			setProperty('boyfriend.visible', true)
			setProperty('dad.visible', true)
			setProperty('gf.visible', false)
		end
		if name == 'BlackAndWhiteBackground' and value2 == 'bf and gf' then
			setProperty('boyfriend.color', '000000')
			setProperty('dad.color', '000000')
			setProperty('gf.color', '000000')

			setProperty('boyfriend.visible', true)
			setProperty('dad.visible', false)
			setProperty('gf.visible', true)
		end
		if name == 'BlackAndWhiteBackground' and value2 == 'gf and dad' then
			setProperty('boyfriend.color', '000000')
			setProperty('dad.color', '000000')
			setProperty('gf.color', '000000')

			setProperty('gf.visible', true)
			setProperty('boyfriend.visible', false)
			setProperty('dad.visible', true)
		end
		if name == 'BlackAndWhiteBackground' and value2 == 'gf and bf' then
			setProperty('boyfriend.color', '000000')
			setProperty('dad.color', '000000')
			setProperty('gf.color', '000000')

			setProperty('boyfriend.visible', true)
			setProperty('dad.visible', false)
			setProperty('gf.visible', true)
		end

	if name == 'BlackAndWhiteBackground' and value2 == 'everyone' then
		setProperty('boyfriend.color', '000000')
		setProperty('dad.color', '000000')
		setProperty('gf.color', '000000')

		setProperty('gf.visible', true)
		setProperty('boyfriend.visible', true)
		setProperty('dad.visible', true)
	end
end