--[[- Various Client Fuctions

    @module ORGM.Client
    @release v4.0-alpha
    @author Fenris_Wolf
    @copyright 2018

]]

local Client = { }
Client.ModelLoader = require("!ORGM/OrgmModelLoader")
Client.ToolTip = require("!ORGM/OrgmToolTip")
Client.Commands = require("!ORGM/OrgmClientCommands")
Client.Callbacks = require("!ORGM/OrgmClientCallbacks")
-- TODO: OrgmClientOptions

--[[-

Called from OnEquipPrimary and OnGameStart in `ORGMClientEvents.lua`

@tparam IsoPlayer player
@tparam HandWeapon item

]]
--[[

Client.getFirearmNeedsUpdate = function(player, item)
    if item == nil or player == nil then return end
    if not player:isLocalPlayer() then return end
    if not Firearm.isFirearm(item) then return end

    ORGM.log(ORGM.DEBUG, "Checking BUILD_ID for ".. item:getType())

    Firearm.Stats.set(item)
    if Firearm.needsUpdate(item) then
        player:Say("Resetting this weapon to defaults due to ORGM changes. Ammo returned to inventory.")
        Client.unequipItemNow(player, item)
        local newItem = Firearm.replace(item, player:getInventory())
        player:setPrimaryHandItem(newItem)
        if newItem:isRequiresEquippedBothHands() then
            player:setSecondaryHandItem(newItem)
        end
        ISInventoryPage.dirtyUI()
    end
end

]]

--[[- Instantly unequip the item if it's in the player's primary hand, skipping timed actions.

Used by Client.getFirearmNeedsUpdate() above when upgrading weapons to new ORGM versions.

@tparam IsoPlayer player
@tparam HandWeapon item

]]
--[[

Client.unequipItemNow = function(player, item)
    item:getContainer():setDrawDirty(true)
    local primary = player:getPrimaryHandItem()
    local secondary = player:getSecondaryHandItem()
    if item == primary then
        player:setPrimaryHandItem(nil)
    end
    if item == secondary then
        player:setSecondaryHandItem(nil)
    end
    getPlayerData(player:getPlayerNum()).playerInventory:refreshBackpacks()
end

]]

return Client
