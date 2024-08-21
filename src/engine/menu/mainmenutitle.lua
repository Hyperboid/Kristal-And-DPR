---@class MainMenuTitle : StateClass
---
---@field menu MainMenu
---
---@field logo love.Image
---@field has_target_saves boolean
---
---@field options table
---@field selected_option number
---
---@overload fun(menu:MainMenu) : MainMenuTitle
local MainMenuTitle, super = Class(StateClass)

function MainMenuTitle:init(menu)
    self.menu = menu

    self.logo = Assets.getTexture("kristal/title_logo_shadow")

    self.selected_option = 1

    self.splash_list = {
        "Also try Deltarune!",
        "Dess wuz here",
        "Also try Deoxynn!",
        "Also try Starrune!",
        "Now with 50% less\nRalsei!",
        "Now with extra\ndarkness!",
        "FUCK YOU, CYBER CITY!!",
        ":]",
        "Hey all! Scott here!",
        "Now with 50% more\nSpamton!",
        "May contain nuts!",
        "More than -1 sold!",
        "It's a game!",
        "Singleplayer!",
        "Keyboard\ncompatible!",
        "Open source!",
        "Not on Steam!",
        "Pixels!",
        "6% bug free!",
        "Absolutely memes!",
        "Indie!",
        "Now in 2D!",
        "[Guaranteed]!",
        "Random splash!",
        "Fear of Anxiety!",
        "SMW forever!",
        "Don't look directly\nat the bugs!",
        "Kinda like Pokemon!",
        "Has an ending\n...planned!",
        "Deja vu!",
        "Deja vu!",
        "Mmmph, mmph!",
        "I have a PR.",
        "Fixing Magical Glass!",
        "LOVE 10 + 1 = 11!",
        "Woah.",
        "Honey, I dug the beans!‌",
        "Home-made!",
        "There's <<a dog\non ,my\nkeyboard!~",
        "RIBBIT!",
        "Potassium",
        "Can You Really Call\nThis Splash Text? I\nDidn't Gain Something\nFrom Reading It\nOr Anything.",
        "Crazy?\nI was crazy once.",
        "All toasters toast\ntoast!",
        "Also try Ribbit!",
        "spring time\nback to school",
        "try to withstand\nthe sun's life-giving\nrays.",
        "sweep a leaf\nsweep away a troubles",
        "cold outside but stay\nwarm inside of you",
        "And in that light,\nI find deliverence",
        "The place that is\nbelieved to be dark",
        "Everything is going\nto be fine",
        "No one is around\nto help",
        "Beep Boop",
        "I've come to make\nan announcement!",
        "There is no crashes\nin Dark Place",
        "I had more splash\nideas but I forgot\nthem",
        "Smile",
        "Oh hi :D",
        "Man I love this clock",
        "Nice Strike!",
        "May include\nDeltarune content",
        "May include bones",
        "May include flesh",
        "Good times only",
        "I found a dog.",
        "I lost the dog.",
        "Why is there\n2 dogs??",
        "Dogs!!",
        "Gangnam Style",
        "Do not ask for advice",
        "Subscribe to\nBikini Spamton",
        "Welcome to the woods",
        "Run this on a\nWii you coward",
        "Right behind you.",
        "Have a break,\nhave a legally distinct\nGitGog",
        "FRIEND INSIDE ME",
        "VERY, VERY\nINTERESTING",
        "Smells like\nsplash text",
        "human... i remember\nyou're genocides...",
        "Help! They're forcing\nme to make\nsplash texts!",
        "Knockback Bros.\nbut like not\nadvanced",
    }
    self.splash = Utils.pick(self.splash_list)

    self.splash_timer = 0
end

function MainMenuTitle:update()
    super.update(self)

    self.splash_timer = self.splash_timer + DT
end

function MainMenuTitle:registerEvents()
    self:registerEvent("enter", self.onEnter)
    self:registerEvent("keypressed", self.onKeyPressed)
    self:registerEvent("update", self.update)
    self:registerEvent("draw", self.draw)
end

-------------------------------------------------------------------------------
-- Callbacks
-------------------------------------------------------------------------------

function MainMenuTitle:onEnter(old_state)
    self.has_target_saves = TARGET_MOD and Kristal.hasAnySaves(TARGET_MOD) or false

    if TARGET_MOD then
        self.options = {
            {"play",    self.has_target_saves and "Load game" or "Start game"},
            {"options", "Options"},
            {"credits", "Credits"},
            {"quit",    "Quit"},
        }
    else
        self.options = {
            {"play",      "Play a mod"},
            {"modfolder", "Open mods folder"},
            {"options",   "Options"},
            {"credits",   "Credits"},
            {"wiki",      "Open wiki"},
            {"quit",      "Quit"},
        }
    end

    if not TARGET_MOD then
        self.menu.selected_mod = nil
        self.menu.selected_mod_button = nil
    end

    self.menu.heart_target_x = 196
    self.menu.heart_target_y = 238 + 32 * (self.selected_option - 1)
end

function MainMenuTitle:onKeyPressed(key, is_repeat)
    if Input.isConfirm(key) then
        Assets.stopAndPlaySound("ui_select")

        local option = self.options[self.selected_option][1]

        if option == "play" then
            if not TARGET_MOD then
                self.menu:setState("MODSELECT")
				if MainMenu.mod_list:getSelectedMod() and MainMenu.mod_list:getSelectedMod().soulColor then
					MainMenu.heart.color = MainMenu.mod_list:getSelectedMod().soulColor
				end
            elseif self.has_target_saves then
                self.menu:setState("FILESELECT")
            else
                Kristal.loadMod(TARGET_MOD, 1)
            end

        elseif option == "modfolder" then
            -- FIXME: the game might freeze when using love.system.openURL to open a file directory
            if (love.system.getOS() == "Windows") then
                os.execute('start /B \"\" \"'..love.filesystem.getSaveDirectory()..'/mods\"')
            else
                love.system.openURL("file://"..love.filesystem.getSaveDirectory().."/mods")
            end

        elseif option == "options" then
            self.menu:setState("OPTIONS")

        elseif option == "credits" then
            self.menu:setState("CREDITS")

        elseif option == "wiki" then
            love.system.openURL("https://kristal.cc/wiki")

        elseif option == "quit" then
            love.event.quit()
        end

        return true
    end

    local old = self.selected_option
    if Input.is("up"   , key)                              then self.selected_option = self.selected_option - 1 end
    if Input.is("down" , key)                              then self.selected_option = self.selected_option + 1 end
    if Input.is("left" , key) and not Input.usingGamepad() then self.selected_option = self.selected_option - 1 end
    if Input.is("right", key) and not Input.usingGamepad() then self.selected_option = self.selected_option + 1 end
    if self.selected_option > #self.options then self.selected_option = is_repeat and #self.options or 1 end
    if self.selected_option < 1             then self.selected_option = is_repeat and 1 or #self.options end

    if old ~= self.selected_option then
        Assets.stopAndPlaySound("ui_move")
    end

    self.menu.heart_target_x = 196
    self.menu.heart_target_y = 238 + (self.selected_option - 1) * 32
end

function MainMenuTitle:update()
    self.splash_timer = self.splash_timer + DT
end

function MainMenuTitle:draw()
    local logo_img = self.menu.selected_mod and self.menu.selected_mod.logo or self.logo

    Draw.draw(logo_img, SCREEN_WIDTH/2 - logo_img:getWidth()/2, 105 - logo_img:getHeight()/2)
    --Draw.draw(self.selected_mod and self.selected_mod.logo or self.logo, 160, 70)

    for i, option in ipairs(self.options) do
        Draw.printShadow(option[2], 215, 219 + 32 * (i - 1))
    end
end

-------------------------------------------------------------------------------
-- Class Methods
-------------------------------------------------------------------------------

function MainMenuTitle:selectOption(id)
    for i, options in ipairs(self.options) do
        if options[1] == id then
            self.selected_option = i

            self.menu.heart_target_x = 196
            self.menu.heart_target_y = 238 + (self.selected_option - 1) * 32

            return true
        end
    end

    return false
end

return MainMenuTitle
