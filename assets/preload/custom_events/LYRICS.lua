function onEvent(name, value1, value2)
   if name == 'LYRICS' then
    makeLuaText('text', value1, 1000, 0, 500) --coordenadas de posicion
    setTextSize('text', 50) --tienes 19 toma vega hija de puta
    setTextBorder('text', 5, '1D1626') --color del fondo del texto
    setTextColor('text', 'B79FD8') --color del texto
    setTextFont('text', 'Impact.ttf') --tipo de letra o eso creo
    setTextAlignment('text', 'center') --no se
    addLuaText('text') --crear texto
    setObjectCamera('text', 'other');
    runTimer('wait', value2);
    
    end
end 
    
    function onTimerCompleted(tag, loops, loopsleft)
    if tag == 'wait' then
	removeLuaText('text', true)
	setTextString('text', 'value2') --value2 = timepo de desaparicion (en segundos)
	addLuaText('text') --añadir texto
	textVisible = false --hacer invisible
    end
end