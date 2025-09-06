local bit = {}

-- TODO: Implement more `bit` functions as Kristal needs them

--- A drop-in replacement to the actual bit.band
--- which doesn't break because apparently
--- you can't do this in Lua 5.1, the version
--- LOVE supports
---@param a integer
---@param b integer
---@return integer
function bit.band(a, b)
    local result = 0
    local bitval = 1
    for i = 0, 31 do
        local abit = a % 2
        local bbit = b % 2
        if abit == 1 and bbit == 1 then
            result = result + bitval
        end
        a = math.floor(a / 2)
        b = math.floor(b / 2)
        bitval = bitval * 2
    end
    return result
end

return bit
