local Console, super = Class(Object)

function Console:init()
    super:init(self, 0, 0)
    self.layer = 10000000

    self.height = 12

    self.font_size = 16
    self.font_name = "console"

    self.font = Assets.getFont(self.font_name, self.font_size)

    self.history = {
        "Welcome to [color:cyan]KRISTAL[color:white]! This is the debug console.",
        "You can enter Lua here to be ran! Use clear() to clear the console.",
        "",
    }

    self.command_history = {}

    self.input = {""}

    self.is_open = false

    self.history_index = 0

    self.just_closed = false

    self:close()

    self.env = self:createEnv()
end

function Console:createEnv()
    local env = {}

    function env.print(str)
        if type(str) == "table" then
            if getmetatable(str) then
                self:warn("Cannot print metatable")
                return
            else
                str = Utils.dump(str)
            end
        end
        self:log(tostring(str))
    end

    function env.clear()
        self.history = {}
    end

    function env.giveItem(str)
        local success, result_text = Game.inventory:tryGiveItem(str)
        if success then
            self:log("Item has been added")
        else
            self:warn("Unable to add item (inventory full?)")
        end
    end

    setmetatable(env, {
        __index = function(t, k)
            return _G[k]
        end,
        __newindex = function(t, k, v)
            _G[k] = v
        end
    })

    return env
end

function Console:open()
    self.is_open = true
    self.history_index = #self.command_history + 1

    TextInput.attachInput(self.input, {
        multiline = true,
        enter_submits = true,
    })
    TextInput.submit_callback = function(...) self:onSubmit(...) end
    TextInput.up_limit_callback = function(...) self:onUpLimit(...) end
    TextInput.down_limit_callback = function(...) self:onDownLimit(...) end
    TextInput.pressed_callback = function(...) self:onConsoleKeyPressed(...) end
end

function Console:onUpLimit()
    if #self.command_history == 0 then return end
    if self.history_index > 1 then
        self.history_index = self.history_index - 1
        self.input = Utils.copy(self.command_history[self.history_index] or {""})
        TextInput.updateInput(self.input)
        TextInput.sendCursorToEnd()
    end
end

function Console:onDownLimit()
    if #self.command_history == 0 then return end
    if self.history_index == #self.command_history + 1 then
        -- Empty
    else
        self.history_index = self.history_index + 1
        self.input = Utils.copy(self.command_history[self.history_index] or {""})
        TextInput.updateInput(self.input)
        TextInput.sendCursorToEnd()
    end
    TextInput.sendCursorToEnd() -- TODO: sendCursorToEndOfLine() or smth
end

function Console:onSubmit()
    self:run(self.input)
end

function Console:close()
    self.is_open = false
    TextInput.endInput()
end

function Console:print(text, x, y, ignore_modifiers)
    -- loop through chars in text
    if y < 0 then return end

    local x_offset = 0

    local in_modifier = false
    local modifier_text = ""

    for char in text:gmatch(utf8.charpattern) do
        --local char = text:sub(utf8.offset(text,i), utf8.offset(text,i))
        if char == "[" and (not ignore_modifiers) then
            in_modifier = true
        elseif char == "]" and (not ignore_modifiers) then
            in_modifier = false
            local modifier = Utils.split(modifier_text, ":", false)
            if modifier[1] == "color" then
                local color = {1, 1, 1, 1}
                if modifier[2] then
                    if Utils.startsWith(modifier[2], "#") then
                        color = Utils.hexToRgb(modifier[2])
                    elseif modifier[2] == "cyan" then
                        color = {0.5, 1, 1, 1}
                    elseif modifier[2] == "white" then
                        color = {1, 1, 1, 1}
                    elseif modifier[2] == "yellow" then
                        color = {1, 1, 0.5, 1}
                    elseif modifier[2] == "red" then
                        color = {1, 0.5, 0.5, 1}
                    elseif modifier[2] == "gray" then
                        color = {0.8, 0.8, 0.8, 1}
                    end
                end
                love.graphics.setColor(color)
            else
                modifier_text = "[" .. modifier_text .. "]"
                for char2 in modifier_text:gmatch(utf8.charpattern) do
                    if char2 then
                        self:printChar(char2, x + x_offset, y)
                        x_offset = x_offset + self.font:getWidth(char2)
                    end
                end
            end
            modifier_text = ""
        elseif in_modifier and (not ignore_modifiers) then
            modifier_text = modifier_text .. char
        else
            if char then
                self:printChar(char, x + x_offset, y)
                x_offset = x_offset + self.font:getWidth(char)
            end
        end
    end
end

function Console:printChar(char, x, y)
    local r, g, b, a = love.graphics.getColor()
    love.graphics.setColor(r / 2, g / 2, b / 2, a / 2)

    love.graphics.print(char, x + 1, y)
    love.graphics.print(char, x - 1, y)
    love.graphics.print(char, x, y + 1)
    love.graphics.print(char, x, y - 1)

    love.graphics.setColor(r, g, b, a)

    love.graphics.print(char, x, y)
end

function Console:draw()
    if not self.is_open then return end
    love.graphics.setFont(self.font)

    love.graphics.setColor(0, 0, 0, 0.4)
    love.graphics.rectangle("fill", 0, 0, 640, 480)

    local input_pos = (self.height + 1) * 16

    love.graphics.setColor(0, 0, 0, 0.6)
    love.graphics.rectangle("fill", 0, 0, 640, self.height * 16)

    love.graphics.setColor(1, 1, 1, 1)

    y_offset = 1
    for line = #self.history, math.max(1, #self.history - self.height), -1 do
        local text = self.history[line]
        local lines = Utils.split(text, "\n", false)
        for line2 = #lines, 1, -1 do
            local text2 = lines[line2]
            self:print(text2, 8, (self.height - y_offset) * 16)
            y_offset = y_offset + 1
        end
    end


    love.graphics.setColor(0, 0, 0, 0.6)
    love.graphics.rectangle("fill", 0, input_pos, 640, #self.input * 16)


    local base_off = self.font:getWidth("> ") + 8

    local cursor_pos_x = base_off
    if TextInput.cursor_x > 0 then
        cursor_pos_x = self.font:getWidth(string.sub(self.input[TextInput.cursor_y], 1, utf8.offset(self.input[TextInput.cursor_y], TextInput.cursor_x))) + cursor_pos_x
    end
    local cursor_pos_y = input_pos + ((TextInput.cursor_y - 1) * 16)

    if TextInput.selecting then
        love.graphics.setColor(0, 0.5, 0.5, 1)

        local cursor_sel_x = base_off
        if TextInput.cursor_select_x > 0 then
            cursor_sel_x = self.font:getWidth(string.sub(self.input[TextInput.cursor_select_y], 1, utf8.offset(self.input[TextInput.cursor_select_y], TextInput.cursor_select_x))) + cursor_sel_x
        end
        local cursor_sel_y = input_pos + ((TextInput.cursor_select_y - 1) * 16)


        if TextInput.cursor_select_y == TextInput.cursor_y then
            local x = cursor_sel_x
            local y = cursor_sel_y + 16
            local width = cursor_pos_x - x
            local height = cursor_pos_y + 16 - y - 16

            love.graphics.rectangle("fill", x, y, width, height)
        else
            local in_front = false
            if TextInput.cursor_y > TextInput.cursor_select_y then
                in_front = true
            end

            if in_front then
                love.graphics.rectangle("fill", cursor_sel_x, cursor_sel_y, math.max(self.font:getWidth(self.input[TextInput.cursor_select_y]) - cursor_sel_x + base_off, 1), 16)
                love.graphics.rectangle("fill", base_off, cursor_pos_y, cursor_pos_x - base_off, 16)

                for i = TextInput.cursor_select_y + 1, TextInput.cursor_y - 1 do
                    love.graphics.rectangle("fill", base_off, input_pos + (16 * (i - 1)), math.max(self.font:getWidth(self.input[i]), 1), 16)
                end
            else
                love.graphics.rectangle("fill", cursor_pos_x, cursor_pos_y, math.max(self.font:getWidth(self.input[TextInput.cursor_y]) - cursor_pos_x + base_off, 1), 16)
                love.graphics.rectangle("fill", base_off, cursor_sel_y, cursor_sel_x - base_off, 16)

                for i = TextInput.cursor_y + 1, TextInput.cursor_select_y - 1 do
                    love.graphics.rectangle("fill", base_off, input_pos + (16 * (i - 1)), math.max(self.font:getWidth(self.input[i]), 1), 16)
                end
            end
        end
    end

    love.graphics.setColor(1, 1, 1, 1)
    for i, text in ipairs(self.input) do
        if #self.input == 1 then
            self:print("> " .. text, 8, input_pos + (i - 1) * 16, true)
        else
            local prefix = ""
            if i == 1 then
                prefix = "┌ "
            elseif i == #self.input then
                prefix = "└ "
            else
                prefix = "│ "
            end
            self:print(prefix .. text, 8, input_pos + (i - 1) * 16, true)
        end
    end

    love.graphics.setColor(1, 0, 1, 1)
    if TextInput.flash_timer < 0.5 then
        if TextInput.cursor_x == utf8.len(self.input[TextInput.cursor_y]) then
            self:print("_", cursor_pos_x, cursor_pos_y, true)
        else
            self:print("|", cursor_pos_x, cursor_pos_y, true)
        end
    end

    love.graphics.setColor(1, 1, 1, 1)

    -- FOR DEBUGGING HISTORY:
    --[[offset = 0
    for i, v in ipairs(self.command_history) do
        if i == self.history_index then
            love.graphics.setColor(1, 0, 0, 1)
        else
            love.graphics.setColor(1, 1, 1, 1)
        end
        for j, text in ipairs(v) do
            offset = offset + 1
            self:print(text, 8, 200 + ((offset) * 16), true)
        end
    end]]

    super:draw(self)
end

function Console:push(str)
    table.insert(self.history, str)
end

function Console:log(str)
    print("[CONSOLE] " .. tostring(str))
    self:push(str)
end

function Console:warn(str)
    print("[WARNING] " .. tostring(str))
    self:push("[color:yellow][WARNING] " .. tostring(str))
end

function Console:error(str)
    print("[ERROR] " .. tostring(str))
    self:push("[color:red][ERROR] " .. tostring(str))
end

function Console:stripError(str)
    return string.match(str, '.+:%d+: (.+)')
end

function Console:run(str)
    if not Utils.equal(str, self.command_history[#self.command_history]) then
        table.insert(self.command_history, Utils.copy(str))
    end
    self.history_index = #self.command_history + 1
    local run_string = ""
    local history_string = "[color:gray]"
    for i, line in ipairs(str) do
        local prefix = "> "

        if #str > 1 then
            if i == 1 then
                prefix = "┌ "
            elseif i == #str then
                prefix = "└ "
            else
                prefix = "│ "
            end
        end

        if i == #str then
            history_string = history_string .. prefix .. line
            run_string     = run_string     ..           line
        else
            history_string = history_string .. prefix .. line .. "\n"
            run_string     = run_string     ..           line .. "\n"
        end
    end
    self:push(history_string)
    local status, error = pcall(function() self:unsafeRun(run_string) end)
    if not status then
        self:error(self:stripError(error))
    end
end

function Console:unsafeRun(str)
    local chunk, error = loadstring(str)
    if chunk then
        setfenv(chunk,self.env)
        self:push(chunk())
    else
        self:error(self:stripError(error))
    end
end

function Console:onConsoleKeyPressed(key)
    if (key == "`") then
        if self.is_open then
            self:close()
            self.just_closed = true
        else
            return true
        end
        return true
    end
end

function Console:keypressed(key)
    if self.just_closed then return end
    if key == "`" then
        if not self.is_open then
            self:open()
        end
    end
end

function Console:update()
    self.just_closed = false
end

return Console