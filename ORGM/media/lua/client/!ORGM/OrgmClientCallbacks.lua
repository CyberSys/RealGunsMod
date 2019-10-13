--[[- Callback Functions for various events.

All of these are triggered by various events, defined in `ORGMClientEvents.lua`

@module ORGM.Client.Callbacks
@author Fenris_Wolf
@release v3.10
@copyright 2018 **File:** server/1LoadOrder/ORGMClientCallbacks.lua

]]

local Config = require(ENV_RFF_PATH .. "config")
local Logger = require(ENV_RFF_PATH .. "interface/logger")
local Callbacks = {}

local getSpecificPlayer = getSpecificPlayer
local getCore = getCore


--[[- Triggered by the OnGameStart Event.
]]
Callbacks.onStart = function()
    Client.InspectionWindow = ISORGMFirearmWindow:new(35, 250, 375, 455)
    Client.InspectionWindow:addToUIManager()
    Client.InspectionWindow:setVisible(false)
    Client.InspectionWindow.pin = true
    Client.InspectionWindow.resizable = false
    --Client.InspectionWindow = ISORGMFirearmWindow

    local player = getSpecificPlayer(0)
    local item = player:getPrimaryHandItem() -- better we equip
    if not item or not Firearm.isFirearm(item) then return end
    Client.unequipItemNow(player, item)
    player:setPrimaryHandItem(item)
    if item:isRequiresEquippedBothHands() then
        player:setSecondaryHandItem(item)
    end
end

--[[- Triggered by the OnPlayerUpdate Event.

@tparam IsoPlayer player

]]
Callbacks.playerUpdate = function(player)
    if not player:isLocalPlayer() then return end
    local primary = player:getPrimaryHandItem()
    -- update the Inspection Window
    --if primary and Client.InspectionWindow:isVisible() then
    --    Client.InspectionWindow:setFirearm(primary)
    --end
end


--[[- Triggered by the OnKeyPress Event.

@tparam int key

]]
Callbacks.keyPress = function(key)
    --[[ TODO: this needs redoing...
    
    local player = getSpecificPlayer(0)
    if not player then return end
    local inventory = player:getInventory()
    if not inventory then return end
    if key == getCore():getKey("Reload Any Magazine") then
        local reloadItem = nil
        for name, data in pairs(ORGM.Magazine.getTable()) do
            local items = inventory:FindAll(data.moduleName .. '.' .. name)
            for i=0, items:size() -1 do
                local this = items:get(i)
                if ReloadUtil:isReloadable(this, player) then
                    reloadItem = this
                    break
                end
            end
            if reloadItem then break end
        end
        if reloadItem then
            ReloadManager[player:getPlayerNum()+1]:startReloadFromUi(reloadItem)
        end
    elseif key == getCore():getKey("Select Fire Toggle") then
        local item = player:getPrimaryHandItem()
        Firearm.toggleFireMode(item, Status.FULLAUTO, player)
    elseif key == getCore():getKey("Firearm Inspection Window") then
        Client.InspectionWindow:setVisible(not Client.InspectionWindow:isVisible())
    end
    ]]
end


--[[- Triggered by the OnMainMenuEnter Event.

This restores a clients original ORGM settings.

]]
Callbacks.restoreSettings = function()
    if Client.PreviousSettings then
        for key, value in pairs(Client.PreviousSettings) do ORGM.Settings[key] = value end
        Client.PreviousSettings = nil
    end

    -- remove ourself from the Event
    Events.OnMainMenuEnter.Remove(Callbacks.restoreSettings)
end

--[[- Triggered by the OnTick Event.

Requests the ORGM.Settings table from the server.

This is only triggered on the first tick, it seems sendClientCommand will not
properly trigger OnGameStart (GameClient.bIngame is false?).
Removes itself from the event queue after.

Credits to Dr_Cox1911 for the OnTick trick in his CoxisReloadSync mod.

]]
Callbacks.requestSettings = function(ticks)
    if ticks and ticks > 0 then return end
    if isClient() then
        Logger.info("Requesting Settings from server")
        sendClientCommand(getPlayer(), 'orgm', 'requestSettings', Config.getSettingsTable())
    end
    Events.OnTick.Remove(Callbacks.requestSettings)
end



--[[- Triggered by the OnFillInventoryObjectContextMenu Event.

@tparam int player
@tparam table context
@tparam ItemStack items

]]
Callbacks.inventoryMenu = function(player, context, items)
    --Client.Menu.inventory(player, context, items)
end


--Events.OnGameBoot.Add(Callbacks.onBoot)
Events.OnFillInventoryObjectContextMenu.Add(Callbacks.inventoryMenu)
Events.OnGameStart.Add(Callbacks.onStart)
Events.OnKeyPressed.Add(Callbacks.keyPress)
Events.OnPlayerUpdate.Add(Callbacks.playerUpdate)
--Events.OnServerCommand.Add(Callbacks.serverCommand)
Events.OnTick.Add(Callbacks.requestSettings)

return Callbacks
