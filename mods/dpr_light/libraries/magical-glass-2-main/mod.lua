function Mod:init()
    print("Loaded "..self.info.name.."!")
end

function Mod:load(data, is_new_file)
    if is_new_file then
        MagicalGlass:toggleDimensionalBoxA(true)
        MagicalGlass:toggleDimensionalBoxB(true)
    end
end