---@class AssetBucket : Class
---@field data AssetBucket.data
---@field paths string[]
---@overload fun(name, paths): AssetBucket
local AssetBucket, super = Class()
---@class AssetBucket.data
---@field texture table<string, love.Image>
---@field texture_data table<string, love.ImageData>
---@field frames table<string, love.Image[]>
---@field frame_ids table<string, string[]>
---@field fonts table<string, love.Font|{default: number, [number]: love.Font}>
---@field font_data table<string, love.Data>
---@field font_bmfont_data table<string, string>
---@field font_image_data table<string, love.ImageData>
---@field font_settings table<string, table>
---@field sound_data table<string, love.SoundData>
---@field music table<string, string>
---@field shaders table<string, love.Shader>
---@field shader_paths table<string, string>
---@field videos table<string, string>
---@field bubble_settings table<string, table>

function AssetBucket:init(name, paths)
    self.name = name
    self.paths = paths or {""}
    self:clear()
end

function AssetBucket:clear()
    self.loaded = false
    self.data = {
        texture = {},
        texture_data = {},
        frames = {},
        frame_ids = {},
        fonts = {},
        font_data = {},
        font_bmfont_data = {},
        font_image_data = {},
        font_settings = {},
        sound_data = {},
        music = {},
        shaders = {},
        shader_paths = {},
        videos = {},
        bubble_settings = {},
    }
    self.frames_for = {}
    self.texture_ids = {}
    self.sounds = {}
    self.sound_instances = {}
    self.quads = {}
end

---@param data Assets.data
function AssetBucket:loadData(data)
    Utils.merge(self.data, data, true)
    self:parseData(data)
    self.loaded = true
end

---@param data Assets.data
function AssetBucket:parseData(data)
    -- thread can't create images, we do it here
    for key,image_data in pairs(data.texture_data) do
        self.data.texture[key] = love.graphics.newImage(image_data)
        self.texture_ids[self.data.texture[key]] = key
    end

    -- create frame tables with images
    for key,ids in pairs(data.frame_ids) do
        self.data.frames[key] = {}
        for i,id in pairs(ids) do
            self.data.frames[key][i] = self.data.texture[id]
            self.frames_for[id] = {key, i}
        end
    end

    -- create TTF fonts
    for key,file_data in pairs(data.font_data) do
        local default = data.font_settings[key] and data.font_settings[key]["defaultSize"] or 12
        self.data.fonts[key] = {default = default}
    end
    -- create bmfont fonts
    for key,file_path in pairs(data.font_bmfont_data) do
        data.font_settings[key] = data.font_settings[key] or {}
        if data.font_settings[key]["autoScale"] == nil then
            data.font_settings[key]["autoScale"] = true
        end
        self.data.fonts[key] = love.graphics.newFont(file_path)
    end
    -- set up bmfont font fallbacks
    for key,_ in pairs(data.font_bmfont_data) do
        if data.font_settings[key]["fallbacks"] then
            local fallbacks = {}
            for _,fallback in ipairs(data.font_settings[key]["fallbacks"]) do
                local font = self.data.fonts[fallback["font"]]
                if type(font) == "table" or (self.data.font_settings[fallback["font"]] and self.data.font_settings[fallback["font"]]["glyphs"]) then
                    error("Attempt to use TTF or image fallback on BMFont font: " .. key)
                else
                    table.insert(fallbacks, font)
                end
            end
            self.data.fonts[key]:setFallbacks(unpack(fallbacks))
        end
    end
    -- create image fonts
    for key,image_data in pairs(data.font_image_data) do
        local glyphs = data.font_settings[key] and data.font_settings[key]["glyphs"] or ""
        data.font_settings[key] = data.font_settings[key] or {}
        if data.font_settings[key]["autoScale"] == nil then
            data.font_settings[key]["autoScale"] = true
        end
        self.data.fonts[key] = love.graphics.newImageFont(image_data, glyphs)
    end
    -- set up image font fallbacks
    for key,_ in pairs(data.font_image_data) do
        if data.font_settings[key]["fallbacks"] then
            local fallbacks = {}
            for _,fallback in ipairs(data.font_settings[key]["fallbacks"]) do
                local font = self.data.fonts[fallback["font"]]
                if type(font) == "table" or not (self.data.font_settings[fallback["font"]] and self.data.font_settings[fallback["font"]]["glyphs"]) then
                    error("Attempt to use TTF or BMFont fallback on image font: " .. key)
                else
                    table.insert(fallbacks, font)
                end
            end
            self.data.fonts[key]:setFallbacks(unpack(fallbacks))
        end
    end

    -- create single-instance audio sources
    for key,sound_data in pairs(data.sound_data) do
        local src = love.audio.newSource(sound_data)
        self.sounds[key] = src
    end

    -- create single-instance shaders
    for key,shader_path in pairs(data.shader_paths) do
        self.data.shaders[key] = love.graphics.newShader(shader_path)
    end
    -- may be a memory hog, we clone the existing source so we dont need the sound data anymore
    --self.data.sound_data = {}
end


function AssetBucket:startLoading(after)
    self.loaded = false
    local load_count = #self.paths

    -- BUG: This never executes for the project bucket? For some reason?
    local function finishLoadStep()
        -- Finish one load process
        load_count = load_count - 1
        -- Check if all load processes are done (mod and libraries)
        if load_count == 0 then
            MOD_LOADING = false
            self.loaded = true

            -- Call the after function
            if after then after() end
        end
    end
    for i = 1, #self.paths do
        Kristal.loadAssets(self.paths[i], "all", "", finishLoadStep, self.name)
    end
end

function AssetBucket:getAssetData(assettype, id)
    assert(self.data[assettype], "Unknown asset type "..assettype)
    if self.data[assettype][id] or self.loaded then
        return self.data[assettype][id]
    end
    self:loadAsset(assettype, id)
    return self.data[assettype][id]
end

function AssetBucket:getAsset(assettype, id)
    assert(self[assettype], "Unknown asset type "..assettype)
    if self[assettype][id] or self.loaded then
        return self[assettype][id]
    end
    self:loadAsset(assettype, id)
    return self[assettype][id]
end

local LOADERS_BY_ASSET_TYPE = {
    texture = "sprites",
    font_settings = "fonts",
    font_data = "fonts",
    bubble_settings = "bubbles",
}

function AssetBucket:loadAsset(assettype, id)
    local loader = LOADERS_BY_ASSET_TYPE[assettype] or (assettype)
    Kristal.Loader.in_channel:push({
        type = "singleasset",
        loader = loader,
        id = id,
        paths = self.paths
    })
    local data = Kristal.demandAssets()
    Utils.merge(self.data, data.data.assets, true)
    self:parseData(data.data.assets)
end

function AssetBucket:getFrames(id)
    if self.data.frames[id] then
        return self.data.frames[id]
    end
    if not self.data.frame_ids[id] then
        if self.loaded then
            return
        end
        -- Temp while I figure out how this works
        local data = Kristal.demandAssets(0.1)
        if data then
            self:loadData(data.data.assets)
        end
        ::wearesoback::
        if not self.data.frame_ids[id] then return end
    end
    self.data.frames[id] = {}
    for i = 1, #self.data.frame_ids[id] do
        self.data.frames[id][i] = self.data.texture[self.data.frame_ids[id][i]]
    end
    return self.data.frames[id]
end

return AssetBucket
