---@class Actor.tutorialmaster.bepis : Actor
local actor, super = Class(Actor)

function actor:init()
    super.init(self)
    self.path = "npcs/tutorialmasters"
    -- self.hitbox = {0,0,40,40}
    self.width = 40
    self.height = 40
end

function actor:createSprite()
    return TutorialMasterSprite(self, "bepis")
end

return actor