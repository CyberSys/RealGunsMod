--[[- Override for ISRemoveWeaponUpgrade.

    File: client/1LoadOrder/ISORGMRemoveWeaponUpgrade.lua
    @classmod ISRemoveWeaponUpgrade
    @author Fenris_Wolf
    @release 3.09

]]

--[[- Called when removing components.

]]
function ISRemoveWeaponUpgrade:perform()
    --ORGM.log(ORGM.DEBUG, "Removing "..self.part:getType())
    ORGM.log(ORGM.DEBUG, "Removing "..self.part:getType() .. ", weight="..tostring(self.part:getWeight())..'/'..tostring(self.part:getActualWeight())..'/'..tostring(self.part:getWeightModifier()))

    ORGM.log(ORGM.DEBUG, "Weapon weight before "..tostring(self.weapon:getWeight()) .."/" .. tostring(self.weapon:getActualWeight()))
    self.weapon:detachWeaponPart(self.part)
    ORGM.log(ORGM.DEBUG, "Weapon weight after "..tostring(self.weapon:getWeight()) .."/" .. tostring(self.weapon:getActualWeight()))

    -- delete the original part, give a fresh copy
    local new = ORGM.Component.copy(self.part)
    self.character:getInventory():AddItem(new)
    -- needed to remove from queue / start next.
    ISBaseTimedAction.perform(self)
end
