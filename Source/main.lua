import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/timer"

local gfx = playdate.graphics

function playdate.update()
    gfx.clear()
    gfx.drawText("Hello Playdate", 140, 110)
    playdate.timer.updateTimers()
end
