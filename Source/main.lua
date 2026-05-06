import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/timer"

import "lib/utils"

local gfx = playdate.graphics

function playdate.update()
    gfx.clear()
    local x = Utils.clamp(500, 0, 400)
    gfx.drawText("clamp(500,0,400)=" .. x, 100, 110)
    playdate.timer.updateTimers()
end
