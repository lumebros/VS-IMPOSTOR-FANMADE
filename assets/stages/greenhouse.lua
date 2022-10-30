
local yy = 500;
local xx = 550;
local yy2 = 500;
local xx2 = 1000;
local ofs = 25;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()
	-- background shit
	makeLuaSprite('sky', 'greenhouse/sky', -1200, -300);
	scaleObject('sky', 2, 1);

    makeLuaSprite('Clouds', 'greenhouse/Clouds', -600, -300);
	setScrollFactor('Clouds', 0.9, 0.9);
      
    makeLuaSprite('cloudsHQ', 'greenhouse/cloudsHQ', -800, -120);
	setScrollFactor('cloudsHQ', 0.9, 0.9);

    makeLuaSprite('Glass2', 'greenhouse/Glass2', -108, -200);
	setScrollFactor('Glass2', 0.9, 0.9);
    scaleObject('Glass2', 1.2, 1.2);

    makeAnimatedLuaSprite('grayyy', 'greenhouse/grayyy', 570, 240)
    luaSpriteAddAnimationByPrefix('grayyy', 'grayyy', 'grayyy', 24, false)
	setScrollFactor('grayyy', 0.9, 0.9);
	scaleObject('grayyy', 1, 1);

    makeLuaSprite('Oxygen', 'greenhouse/Oxygen', 490, -300);
    setScrollFactor('Oxygen', 0.9, 0.9);

    makeLuaSprite('Glass1', 'greenhouse/Glass1', -1490, 600);
    scaleObject('Glass1', 2, 2);

    makeLuaSprite('FlowerPot1Bg', 'greenhouse/FlowerPot1Bg', -280, 340);
    setScrollFactor('FlowerPot1Bg', 0.9, 0.9);

    makeAnimatedLuaSprite('blue', 'greenhouse/blue', -1060, 0)
	luaSpriteAddAnimationByPrefix('blue', 'blue', 'blue', 22, false)
	setScrollFactor('blue', 0.9, 0.9);
	scaleObject('blue', 2, 2);

    makeLuaSprite('leafroof', 'greenhouse/leafroof', -500, -280);
    setScrollFactor('leafroof', 0.9, 0.9);

    makeLuaSprite('Leafs1', 'greenhouse/Leafs1', -1470, 820);
    setScrollFactor('Leafs1', 0.9, 0.9);
    scaleObject('Leafs1', 3, 3);

    makeLuaSprite('FlowerPot2Bg', 'greenhouse/FlowerPot2Bg', 1470, 408);
    setScrollFactor('FlowerPot2Bg', 0.9, 0.9);
    scaleObject('FlowerPot2Bg', 1.3, 1.3);

    makeLuaSprite('Flow', 'greenhouse/Flow', 1660, 650);
    setScrollFactor('Flow', 0.9, 0.9);
    scaleObject('Flow', 2.5, 2.9);

    doTweenZoom('camz','camGame',tonumber(0.7),tonumber(0.1),'sineInOut')
	doTweenX('MoveInOne','Glass1', -800, 15.0,'CircInOut')

    addLuaSprite('sky', false);
    addLuaSprite('Clouds', false);
    addLuaSprite('cloudsHQ', false);
    addLuaSprite('Glass2', false);
    addLuaSprite('grayyy', false);
    addLuaSprite('Glass1', false);
    addLuaSprite('Oxygen', false);
    addLuaSprite('FlowerPot1Bg', false);
    addLuaSprite('blue', true);
    addLuaSprite('leafroof', true);
    addLuaSprite('Leafs1', true);
    addLuaSprite('FlowerPot2Bg', false);
    addLuaSprite('Flow', true); 

      function onBeatHit()
	if curBeat % 2 == 0 then
		objectPlayAnimation('blue', 'blue');
		objectPlayAnimation('grayyy', 'grayyy');
	end
      end
      
      function onUpdate()
		if del > 0 then
			del = del - 1
		end
		if del2 > 0 then
			del2 = del2 - 1
		end
		if followchars == true then
			if mustHitSection == false then
				if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
					triggerEvent('Camera Follow Pos',xx-ofs,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
					triggerEvent('Camera Follow Pos',xx+ofs,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'singUP' then
					triggerEvent('Camera Follow Pos',xx,yy-ofs)
				end
				if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
					triggerEvent('Camera Follow Pos',xx,yy+ofs)
				end
				if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
					triggerEvent('Camera Follow Pos',xx-ofs,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
					triggerEvent('Camera Follow Pos',xx+ofs,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
					triggerEvent('Camera Follow Pos',xx,yy-ofs)
				end
				if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
					triggerEvent('Camera Follow Pos',xx,yy+ofs)
				end
				if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
					triggerEvent('Camera Follow Pos',xx,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'idle' then
					triggerEvent('Camera Follow Pos',xx,yy)
				end
			else
	
				if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
					triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
					triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
					triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
					triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
				end
			if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
					triggerEvent('Camera Follow Pos',xx2,yy2)
				end
			end
		else
			triggerEvent('Camera Follow Pos','','')
		end
		
	end
end