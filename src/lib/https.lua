local ffi = require "ffi"

local name = "https.so"
if ffi.os == "Windows" then
    name = "https-" .. ffi.arch .. ".dll"
elseif ffi.os == "OSX" then
    name = "https-mac.so"
end

local ok, module = pcall(package.loadlib, name, "luaopen_https")

if not module then
    ok, module = pcall(package.loadlib, "lib/"..name, "luaopen_https")
end

if not module then
    ok, module = pcall(package.loadlib, love.filesystem.getSource().."/lib/"..name, "luaopen_https")
end

if not module then
    ok = false
end

HTTPS_AVAILABLE = ok

if not ok then
    print("The HTTPS library has failed to load.")
    return
end

return module()