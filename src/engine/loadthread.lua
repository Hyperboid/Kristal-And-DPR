---@diagnostic disable: lowercase-global
require("love.image")
require("love.sound")

json = require("src.lib.json")

verbose = false

kristal_config = {}

--[[if love.filesystem.getInfo("mods/example/_GENERATED_FROM_MOD_TEMPLATE") then
    love.filesystem.mount("mod_template/assets", "mods/example/assets")
    love.filesystem.mount("mod_template/scripts", "mods/example/scripts")
end]]

function string.split(str, sep, remove_empty)
    local t = {}
    local i = 1
    local s = ""
    while i <= #str do
        if str:sub(i, i + (#sep - 1)) == sep then
            if not remove_empty or s ~= "" then
                table.insert(t, s)
            end
            s = ""
            i = i + (#sep - 1)
        else
            s = s .. str:sub(i, i)
        end
        i = i + 1
    end
    if not remove_empty or s ~= "" then
        table.insert(t, s)
    end
    return t
end

function checkExtension(path, ...)
    for _, v in ipairs({ ... }) do
        if path:sub(- #v - 1):lower() == "." .. v then
            return path:sub(1, - #v - 2), v
        end
    end
end

function combinePath(baseDir, subDir, path)
    local s = subDir
    if baseDir ~= "" then
        s = baseDir .. "/" .. s
    end
    if path ~= "" then
        s = s .. "/" .. path
    end
    if s:sub(-1, -1) == "/" then
        s = s:sub(1, -2)
    end
    return s
end



---@module "src.engine.assets.loaders"
local loaders_module = require("src.engine.assets.loaders")
local loaders = loaders_module.loaders


function resetData()
    data = {
        mods = {},
        failed_mods = {},
        assets = {
            texture = {},
            texture_data = {},
            frame_ids = {},
            frames = {},
            fonts = {},
            font_data = {},
            font_bmfont_data = {},
            font_image_data = {},
            font_settings = {},
            sounds = {},
            sound_data = {},
            music = {},
            videos = {},
            shaders = {},
            shader_paths = {},
            bubble_settings = {},
        }
    }

    path_loaded = {
        ["mods"] = {},
        ["plugins"] = {},

        ["sprites"] = {},
        ["fonts"] = {},
        ["sounds"] = {},
        ["shaders"] = {},
        ["music"] = {},
        ["videos"] = {},
        ["bubbles"] = {},
    }

    tileset_image_data = {}
    loaders_module.data = data
end

function loadPath(baseDir, loader, path, pre)
    if path_loaded[loader][path] then return end
    if kristal_config["borders"] == "off" and loader == "sprites" and path:sub(1,#("borders")) == "borders" then end

    if verbose then
        out_channel:push({ status = "loading", loader = loader, path = path })
    end

    path_loaded[loader][path] = true

    if path:sub(-1, -1) == "*" then
        local dirs = path:split("/")
        local parent_path = ""
        for i = 1, #dirs - 1 do
            parent_path = parent_path .. (i > 1 and "/" or "") .. dirs[i]
        end
        loadPath(baseDir, loader, parent_path, dirs[#dirs]:sub(1, -2))
        return
    end

    local full_path = combinePath(baseDir, loaders[loader][1], path)
    local info = love.filesystem.getInfo(full_path)
    if info then
        if info.type == "directory" and ((loader ~= "mods" and loader ~= "plugins") or path == "") then
            local files = love.filesystem.getDirectoryItems(full_path)
            for _, file in ipairs(files) do
                if not pre or pre == "" or file:sub(1, #pre) == pre then
                    local new_path = (path == "" or path:sub(-1, -1) == "/") and (path .. file) or (path .. "/" .. file)
                    loadPath(baseDir, loader, new_path)
                end
            end
        else
            loaders[loader][2](baseDir, path, combinePath(baseDir, loaders[loader][1], path))
        end
    end
end

-- Channels for thread communications
in_channel = love.thread.getChannel("load_in")
out_channel = love.thread.getChannel("load_out")

-- Reset data once first
resetData()

-- Thread loop
while true do
    local msg = in_channel:demand()
    if msg == "verbose" then
        verbose = true
    elseif msg == "stop" then
        break
    elseif msg.config then
        kristal_config = msg.config
    else
        local key = msg.key or 0
        local baseDir = msg.dir or ""
        local loader = msg.loader
        local paths = msg.paths or { "" }
        if type(msg.paths) == "string" then
            paths = { msg.paths }
        end

        if loader == "all" then
            for k, _ in pairs(loaders) do
                -- dont load mods and plugins when we load with "all"
                if (k ~= "mods" and k ~= "plugins") then
                    if (k ~= "sprites" or not kristal_config.lazySprites ) then
                        for _, path in ipairs(paths) do
                            loadPath(baseDir, k, path)
                        end
                    end
                end
            end
        else
            for _, path in ipairs(paths) do
                loadPath(baseDir, loader, path)
            end
        end

        out_channel:push({ key = key, status = "finished", data = data })
        resetData()
    end
end
