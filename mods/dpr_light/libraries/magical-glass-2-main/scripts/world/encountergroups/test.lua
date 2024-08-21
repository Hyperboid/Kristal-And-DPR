local test, super = Class(EncounterGroup)

function test:init()
    super.init(self)

    self.encounters = {"test"}
end

return test