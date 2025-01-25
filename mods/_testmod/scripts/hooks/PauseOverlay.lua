local PauseOverlay, super = Class(PauseOverlay)

function PauseOverlay:init()
    super.init(self)
    self.text:setText("Press "..Input.getText("pause").." to resume.")
    self.rect = Rectangle(0,0,SCREEN_WIDTH,SCREEN_HEIGHT)
    self.rect:setColor(COLORS.black(0))
    self.rect:fadeTo(0.4,.3)
    self.rect:setLayer(-99999)
    self:addChild(self.rect)
    self.header = Text("PAUSE",0,0,nil,nil,{auto_size = true})
    self.header:setOrigin(.5,0)
    self.header:setScale(2)
    self.header:setPosition(310, 14)
    self:addChild(self.header)
    local cooladvice = Text(Utils.pick{
        "DID YOU KNOW?\nThis menu is part of the mod. It's normally just that part at the bottom. Not even the fadeout.",
    },314,149,SCREEN_WIDTH/2,nil)
    self:addChild(cooladvice)
end

return PauseOverlay