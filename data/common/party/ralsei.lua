local character, super = Class(PartyMember, "ralsei")

function character:init()
    super:init(self)

    -- Party member ID (optional, defaults to path)
    self.id = "ralsei"
    -- Display name
    self.name = "Ralsei"

    -- Actor ID (handles sprites)
    self.actor = "ralsei"
    -- Light World Actor ID (handles overworld/battle sprites in light world maps) (optional)
    self.lw_actor = nil

    -- Display level (saved to the save file)
    self.level = Game.chapter
    -- Default title / class (saved to the save file)
    if Game.chapter == 1 then
        self.title = "Lonely Prince\nDark-World being.\nHas no subjects."
    else
        self.title = "Dark Prince\nDark-World being.\nHas friends now."
    end

    -- Determines which character the soul comes from (higher number = higher priority)
    self.soul_priority = -1

    -- Whether the party member can act / use spells
    self.has_act = false
    self.has_spells = true

    -- X-Action name (displayed in this character's spell menu)
    self.xact_name = "R-Action"

    -- Spells by id
    self.spells = {"pacify", "heal_prayer"}

    -- Current health (saved to the save file)
    if Game.chapter == 1 then
        self.health = 70
    else
        self.health = 100
    end

    -- Base stats (saved to the save file)
    if Game.chapter == 1 then
        self.stats = {
            health = 70,
            attack = 8,
            defense = 2,
            magic = 7
        }
    else
        self.stats = {
            health = 100,
            attack = 10,
            defense = 2,
            magic = 9,
        }
    end

    -- Weapon icon in equip menu
    self.weapon_icon = "ui/menu/equip/scarf"

    -- Equipment (saved to the save file)
    self:setWeapon("red_scarf")
    if Game.chapter >= 2 then
        self:setArmor(1, "amber_card")
        self:setArmor(2, "white_ribbon")
    end

    -- Character color (for action box outline and hp bar)
    self.color = {0, 1, 0}
    -- Damage color (for the number when attacking enemies) (defaults to the main color)
    self.dmg_color = {0.5, 1, 0.5}
    -- Attack bar color (for the target bar used in attack mode) (defaults to the main color)
    self.attack_bar_color = {181/255, 230/255, 29/255}
    -- Attack box color (for the attack area in attack mode) (defaults to darkened main color)
    self.attack_box_color = {0, 0.5, 0}
    -- X-Action color (for the color of X-Action menu items) (defaults to the main color)
    self.xact_color = {0.5, 1, 0.5}

    -- Head icon in the equip / power menu
    if Game.chapter == 1 then
        self.menu_icon = "party/ralsei/head_ch1"
    else
        self.menu_icon = "party/ralsei/head"
    end
    -- Path to head icons used in battle
    self.head_icons = "party/ralsei/icon"
    -- Name sprite (TODO: optional)
    self.name_sprite = "party/ralsei/name"

    -- Effect shown above enemy after attacking it
    self.attack_sprite = "effects/attack/slap_r"
    -- Sound played when this character attacks
    self.attack_sound = "snd_laz_c"
    -- Pitch of the attack sound
    self.attack_pitch = 1.15

    -- Battle position offset (optional)
    self.battle_offset = {2, 6}
    -- Head icon position offset (optional)
    self.head_icon_offset = nil
    -- Menu icon position offset (optional)
    self.menu_icon_offset = nil

    -- Message shown on gameover (optional)
    self.gameover_message = {
        "This is not\nyour fate...!",
        "Please,[wait:5]\ndon't give up!"
    }
end

function character:onLevelUp(level)
    -- TODO: Maybe allow chapter 1 levelups?
    if Game.chapter == 1 then return end

    self:increaseStat("health", 2, 140)
    if level % 10 == 0 then
        self:increaseStat("attack", 1)
        self:increaseStat("magic", 1)
    end
end

function character:onPowerSelect(menu)
    if Utils.random() <= 0.03 then
        menu.ralsei_dog = true
    else
        menu.ralsei_dog = false
    end
end

function character:drawPowerStat(index, x, y, menu)
    if index == 1 then
        if Game.chapter == 1 then
            -- Chapter 1 Ralsei "Kindness" stat (doggable)
            if not menu.ralsei_dog then
                local icon = Assets.getTexture("ui/menu/icon/smile")
                love.graphics.draw(icon, x-26, y+6, 0, 2, 2)
                love.graphics.print("Kindness", x, y)
                love.graphics.print("100", x+130, y)
            else
                local icon = Assets.getTexture("ui/menu/icon/smile_dog")
                love.graphics.draw(icon, x-26, y+6, 0, 2, 2)
                love.graphics.print("Dogness", x, y)
                love.graphics.print("1", x+130, y)
            end
        else
            -- Chapter 2 Ralsei "Sweetness" stat (non-doggable)
            local icon = Assets.getTexture("ui/menu/icon/lollipop")
            love.graphics.draw(icon, x-26, y+6, 0, 2, 2)
            love.graphics.print("Sweetness", x, y)
            love.graphics.print("97", x+130, y)
        end
        return true
    elseif index == 2 then
        local icon = Assets.getTexture("ui/menu/icon/fluff")
        love.graphics.draw(icon, x-26, y+6, 0, 2, 2)
        love.graphics.print("Fluffiness", x, y, 0, 0.8, 1)

        love.graphics.draw(icon, x+130, y+6, 0, 2, 2)
        if Game.chapter >= 2 then
            love.graphics.draw(icon, x+150, y+6, 0, 2, 2)
        end
        return true
    elseif index == 3 then
        local icon = Assets.getTexture("ui/menu/icon/fire")
        love.graphics.draw(icon, x-26, y+6, 0, 2, 2)
        love.graphics.print("Guts:", x, y)
        return true
    end
end

return character