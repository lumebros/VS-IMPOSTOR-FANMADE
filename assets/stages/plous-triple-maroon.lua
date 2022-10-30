function onCreate()	
makeLuaSprite('Field', 'polus-triple/polusField', 0, 0)
makeLuaSprite('Glass', 'polus-triple/polusGlass', 0, 0)
makeLuaSprite('House', 'polus-triple/polusHouselol', 0 ,0)
makeLuaSprite('Maguma', 'polus-triple/polusMaguma', 0, 0)
makeLuaSprite('Sky', 'polus-triple/polusSky', 0, 0)

addLuaSprite('Sky', false)
addLuaSprite('Maguma', false)
addLuaSprite('Field', false)
addLuaSprite('Glass', false)

--Animated
makeAnimatedLuaSprite('snow', 'polus-triple/snow', 250, 400)
addAnimationByPrefix('snow', 'snow', 'snow', 34, true)
makeAnimatedLuaSprite('snow-2', 'polus-triple/snow', -350, 400)
addAnimationByPrefix('snow-2', 'snow', 'snow', 34, true)
makeAnimatedLuaSprite('snow-3', 'polus-triple/snow', 1750, 400)
addAnimationByPrefix('snow-3', 'snow', 'snow', 34, true)
makeAnimatedLuaSprite('sus', 'polus-triple/sus', 750, 770)
addAnimationByPrefix('sus', 'sus', 'sus', 17, false)
makeAnimatedLuaSprite('maroon', 'characters/maroon', 150, 780)
addAnimationByPrefix('maroon', 'Idle', 'Idle', 24, false)
scaleObject('maroon', 0.9, 0.9)

addLuaSprite('sus', false)
addLuaSprite('snow-3', true)
addLuaSprite('snow-2', true)
addLuaSprite('snow', true)
addLuaSprite('House', false)
addLuaSprite('maroon', false)
end

function onBeatHit()
    if curBeat %1 == 0 then
    	objectPlayAnimation('sus', 'sus')
        objectPlayAnimation('maroon', 'Idle')
    end
end

local xx = 1100; -- Code to change the position of the camera to the left or right for your opponent, Less = Left (They can be negative numbers), More = Right
local yy = 1050; -- Code to change the position of the camera up or down for the enemy Less = Down (They can be negative numbers), More = Up
local xx2 = 1530; -- Same code as above, but for boyfriend left, right
local yy2 = 1050; -- Same code as above, but for boyfriend up, down
local xx3 = 520; -- Same code as above, but for girlfriend left, right
local yy3 = 450; -- Same code as above, but for girlfriend, up, down
local ofs = 15; -- Code to adjust the intensity with which the camera moves, the more numbers, the more intense, and the fewer numbers, less intense
local followchars = true; -- This code is necessary for the script to work, don't even think about deleting it!
local del = 0;
local del2 = 0;

function onUpdate() -- The Main Code
    if del > 0 then
        del = del - 1
    end
    if del2 > 0 then
        del2 = del2 - 1
    end
    if followchars == true then
        if mustHitSection == false then -- Code for the camera to follow the poses of your opponent
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
            if gfSection == true then -- The camera follows GF when she sings, only when the "GF Section" option in the chart editor is activated. 
                if getProperty('gf.animation.curAnim.name') == 'singLEFT' then -- Credits to Serebeat and company for their Slaybells mod,
                    triggerEvent('Camera Follow Pos',xx3-ofs,yy3)              -- That's where I got the gf code from.
                end
                if getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
                    triggerEvent('Camera Follow Pos',xx3+ofs,yy3)
                end
                if getProperty('gf.animation.curAnim.name') == 'singUP' then
                    triggerEvent('Camera Follow Pos',xx3,yy3-ofs)
                end
                if getProperty('gf.animation.curAnim.name') == 'singDOWN' then
                    triggerEvent('Camera Follow Pos',xx3,yy3+ofs)
                end
                if getProperty('gf.animation.curAnim.name') == 'idle-alt' then
                    triggerEvent('Camera Follow Pos',xx3,yy3)
                end
                if getProperty('gf.animation.curAnim.name') == 'singRIGHT-alt' then
                    triggerEvent('Camera Follow Pos',xx3+ofs,yy3)
                end
                if getProperty('gf.animation.curAnim.name') == 'singUP-alt' then
                    triggerEvent('Camera Follow Pos',xx3,yy3-ofs)
                end
                if getProperty('gf.animation.curAnim.name') == 'singDOWN-alt' then
                    triggerEvent('Camera Follow Pos',xx3,yy3+ofs)
                end
                if getProperty('gf.animation.curAnim.name') == 'idle-alt' then
                    triggerEvent('Camera Follow Pos',xx3,yy3)
                end
            end
        else
                 -- Code for the camera to follow the poses of boyfriend
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
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
        if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','') -- Self explanatory
    end
    
end
