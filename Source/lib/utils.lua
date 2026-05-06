Utils = {}

function Utils.clamp(val, min, max)
    if val < min then return min end
    if val > max then return max end
    return val
end

function Utils.lerp(a, b, t)
    return a + (b - a) * t
end

-- Returns unit vector from angle in degrees (0=right, 90=down, 180=left, 270=up)
function Utils.angleToVec(degrees)
    local rad = math.rad(degrees)
    return math.cos(rad), math.sin(rad)
end
