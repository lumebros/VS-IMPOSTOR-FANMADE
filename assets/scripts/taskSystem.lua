local ok = false
local E = false

function onCreate()
        makeLuaSprite('BG', '', 0, 0);
        makeGraphic('BG',1280,720,'000000')
        addLuaSprite('BG', true);
        setProperty('BG.alpha',0.45)
        setObjectCamera('BG', 'other');

       makeLuaText('songN', '', 0, 30, 100)
	       setTextAlignment('songN', 'left')
	       setObjectCamera('songN', 'other')
	       setTextSize('songN', 40)
        setTextFont('songN', 'ArialCE.ttf')
        addLuaText('songN', true)

	       makeLuaText('taskC', 'Task Complete!', 0, 30, 30)
	       setTextAlignment('taskC', 'left')
	       setObjectCamera('taskC', 'other')
	       setTextSize('taskC', 45)
        setTextFont('taskC', 'ArialCE.ttf')
        addLuaText('taskC', true)

	       makeLuaText('score', '', 0, 30, 200)
	       setTextAlignment('score', 'left')
	       setObjectCamera('score', 'other')
	       setTextSize('score', 40)
        setTextFont('score', 'ArialCE.ttf')
        addLuaText('score', true)

	       makeLuaText('misses', '', 0, 30, 250)
	       setTextAlignment('misses', 'left')
	       setObjectCamera('misses', 'other')
	       setTextSize('misses', 40)
        setTextFont('misses', 'ArialCE.ttf')
        addLuaText('misses', true)

	       makeLuaText('rating', '', 0, 30, 300)
	       setTextAlignment('rating', 'left')
	       setObjectCamera('rating', 'other')
	       setTextSize('rating', 40)
        setTextFont('rating', 'ArialCE.ttf')
        addLuaText('rating', true)

	       makeLuaText('Nhit', '', 0, 30, 400)
	       setTextAlignment('Nhit', 'left')
	       setObjectCamera('Nhit', 'other')
	       setTextSize('Nhit', 40)
        setTextFont('Nhit', 'ArialCE.ttf')
        addLuaText('Nhit', true)

	       makeLuaText('Suhit', '', 0, 30, 470)
	       setTextAlignment('Suhit', 'left')
	       setObjectCamera('Suhit', 'other')
	       setTextSize('Suhit', 40)
        setTextFont('Suhit', 'ArialCE.ttf')
        addLuaText('Suhit', true)

	       makeLuaText('Sushit', '', 0, 30, 520)
	       setTextAlignment('Sushit', 'left')
	       setObjectCamera('Sushit', 'other')
	       setTextSize('Sushit', 40)
        setTextFont('Sushit', 'ArialCE.ttf')
        addLuaText('Sushit', true)

	       makeLuaText('Badhit', '', 0, 30, 570)
	       setTextAlignment('Badhit', 'left')
	       setObjectCamera('Badhit', 'other')
	       setTextSize('Badhit', 40)
        setTextFont('Badhit', 'ArialCE.ttf')
        addLuaText('Badhit', true)

	       makeLuaText('Shhit', '', 0, 30, 620)
	       setTextAlignment('Shhit', 'left')
	       setObjectCamera('Shhit', 'other')
	       setTextSize('Shhit', 40)
        setTextFont('Shhit', 'ArialCE.ttf')
        addLuaText('Shhit', true)

	       makeLuaText('bot', 'BOTPLAY', 0, 1010, 530)
	       setTextAlignment('bot', 'left')
	       setObjectCamera('bot', 'other')
	       setTextSize('bot', 45)
        setTextFont('bot', 'ArialCE.ttf')
        addLuaText('bot', true)

	       makeLuaText('PlzE', 'Press key to exit', 0, 930, 620)
	       setTextAlignment('PlzE', 'left')
	       setObjectCamera('PlzE', 'other')
	       setTextSize('PlzE', 40)
        setTextFont('PlzE', 'ArialCE.ttf')
        addLuaText('PlzE', true)

setProperty('BG.alpha',0)
setProperty('songN.alpha',0)
setProperty('taskC.alpha',0)
setProperty('score.alpha',0)
setProperty('misses.alpha',0)
setProperty('rating.alpha',0)
setProperty('Nhit.alpha',0)
setProperty('Suhit.alpha',0)
setProperty('Sushit.alpha',0)
setProperty('Badhit.alpha',0)
setProperty('Shhit.alpha',0)
setProperty('PlzE.alpha',0)
setProperty('bot.alpha',0)

end

function onUpdate()
if ok == true and keyJustPressed('space') then
     E = true
   end
end

function onUpdatePost()
if E == true then
endSong()
end

setTextString('songN','Song Name : '..songName)
setTextString('score','Total Score : '..score)
setTextString('misses','Misses : '..misses)
setTextString('rating','Rating : '..ratingName)
setTextString('Nhit','Total Note Hits : '..hits)

setTextString('Suhit', 'Sussy!! Hits : ' .. getProperty('sicks'))
setTextString('Sushit', 'Sus! Hits : ' .. getProperty('goods'))
setTextString('Badhit', 'Bad Hits : ' .. getProperty('bads'))
setTextString('Shhit', 'Shit Hits : ' .. getProperty('shits'))

end

function onEndSong()
  if not botPlay then
     setProperty('bot.visible',false)
end
  if E == true then
     return Function_Continue;
end

doTweenAlpha('bgta','BG',0.4,0.25,'linear')
doTweenAlpha('tcta','taskC',1,0.25,'linear') doTweenAlpha('snta','songN',1,0.25,'linear')
doTweenAlpha('scta','score',1,0.25,'linear')
doTweenAlpha('mita','misses',1,0.25,'linear')
doTweenAlpha('rata','rating',1,0.25,'linear')
doTweenAlpha('nhta','Nhit',1,0.25,'linear')
doTweenAlpha('suta','Suhit',1,0.25,'linear')
doTweenAlpha('susta','Sushit',1,0.25,'linear')
doTweenAlpha('bata','Badhit',1,0.25,'linear')
doTweenAlpha('shta','Shhit',1,0.25,'linear')
doTweenAlpha('anyta','PlzE',1,0.25,'linear')
doTweenAlpha('bota','bot',1,0.25,'linear')
doTweenAlpha('huta','camHUD',0,0.25,'linear')

playSound('complete', 0.6)

ok = true

return Function_Stop;

end

function onPause()
   if ok == true then
     return Function_Stop;
  end
end
